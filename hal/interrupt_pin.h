#pragma once
#include "pin.h"
#include "digital_input.h"

class InterruptPin : public DigitalInput {
    public:
        enum Edge {RISING, FALLING, BOTH};
        InterruptPin(Pin pin);
        ~InterruptPin();
        void register_edge(Edge edge, void (*callback)());
        void register_edge(Edge edge, void (*callback)(void *), void *data);
        void unregister(Edge edge);
    private:
        void enable_exti(Edge edge);
};
