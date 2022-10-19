# Counter_test

This version is used for simulation tests only, that is behavioral simulations. This design will not implement in a pragmatic manner because we did not use the clock divider. The clock divider will only introduced clock inconsistences during simulations, so it is not necessary to test the functionality of the design.

A clock divider was used in the original design to reduce the FPGA clock speed to a human-perceivable frequency, that way we can observe the LEDs blinking on the actual hardware board.
