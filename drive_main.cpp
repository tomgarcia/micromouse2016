#include <cmath>
#include "mbed.h"
#include "motor.h"
#include "encoder.h"
#include "irsensor.h"

Serial serial(PA_9, PA_10);

Motor left_motor(PB_6, PA_7, 3);
Motor right_motor(PC_7, PB_10);

Encoder left_encoder(PA_1, PC_4, Encoder::X2, 1.72);
Encoder right_encoder(PA_15, PB_3, Encoder::X0);

Ticker interrupts;

IRSensor left_irsensor(PC_0, PB_7);
IRSensor front_left_irsensor(PC_1, PB_0);
IRSensor front_right_irsensor(PA_4, PC_11);
IRSensor right_irsensor(PA_0, PC_10);

// Length is along the starting direction.
const int MAZE_LENGTH = 6;
const int MAZE_WIDTH  = 5;

// North is forward from starting position.
struct cell {
	bool north;
	bool south;
	bool east;
	bool west;
};

// Directions map to NSEW.
enum Direction {
    LEFT,
    RIGHT,
	UP,
	DOWN
};

void forward();
void backward();
void turn(Direction);
void ir_update();

cell scan();

int main()
{
	cell map[MAZE_LENGTH][MAZE_WIDTH];

    const float IR_READ_DELAY = 0.1;
	interrupts.attach(&ir_update, IR_READ_DELAY);
    while(true) {
        forward();
        backward();
        if(left_irsensor.getValue() < right_irsensor.getValue()) {
            turn(LEFT);
        } else {
            turn(RIGHT);
        }
    }
}

inline bool is_wall()
{
    const int LEFT_STOP = 1050;
    const int RIGHT_STOP = 1250;
    return front_left_irsensor.getValue() >= LEFT_STOP || front_right_irsensor.getValue() >= RIGHT_STOP;
}

inline bool is_crashed()
{
    return front_left_irsensor.getValue() > 3800 || front_right_irsensor.getValue() > 3800;
}

void backward()
{
    const float BACKWARD_SPEED = 0.05;
    while(is_crashed()) {
        left_motor.set_speed(-1*BACKWARD_SPEED);
        right_motor.set_speed(-1*BACKWARD_SPEED);
    }
    left_motor.set_speed(0);
    right_motor.set_speed(0);
    wait(0.1);
}

void forward()
{
    const float P = 0.002;
    const float I = 0;
    const float D = 0;
    const float SPEED = 0.1;
    const int CELL_LENGTH = 500;
    const float DELAY = 0.005;
    const float IR_MULTIPLIER = 0.025;

    int prev_error = 0;
    int integral = 0;

    left_encoder.reset();
    right_encoder.reset();
    while(!is_wall()) {
        int error = left_encoder.count() - right_encoder.count();
        error += IR_MULTIPLIER * (right_irsensor.getValue() - left_irsensor.getValue());
        integral += error;
        float correction = P * error + I * integral + D * (error - prev_error);
        if(correction > SPEED) {
            correction = SPEED;
        } else if(correction < -1 * SPEED) {
            correction = -1 * SPEED;
        }
        prev_error = error;
        left_motor.set_speed(SPEED - correction);
        right_motor.set_speed(SPEED + correction);
        wait(DELAY);
    }
    left_motor.set_speed(0);
    right_motor.set_speed(0);
    wait(0.1);
}

void turn(Direction d)
{
    const float TURN_SPEED = 0.03;
    const float RIGHT_SPEED = 0.05;
    const int TURN_COUNT = 134;
    int dir = (d == RIGHT) ? 1 : -1;
    left_encoder.reset();
    right_encoder.reset();
    left_motor.set_speed(dir * TURN_SPEED);
    right_motor.set_speed(dir * -1*RIGHT_SPEED);
    while(is_wall()) {
        if(is_crashed()) {
            break;
        }
    }
    left_motor.set_speed(0);
    right_motor.set_speed(0);
    wait(0.1);
}

cell scan ()
{

}

void ir_update()
{
	left_irsensor.read();
	front_left_irsensor.read();
	front_right_irsensor.read();
	right_irsensor.read();
}