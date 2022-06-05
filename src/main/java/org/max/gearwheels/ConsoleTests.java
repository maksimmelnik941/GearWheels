package org.max.gearwheels;

import org.max.gearwheels.model.WheelsPair;
import org.max.gearwheels.service.WheelsPairCalculation;

public class ConsoleTests {
    public static void main(String[] args) {
        WheelsPair wheelsPair = new WheelsPair(1,2,3,4,5,6,7);
        WheelsPairCalculation wheelsPairCalculation = new WheelsPairCalculation();
        wheelsPairCalculation.calc1(wheelsPair);
    }
}
