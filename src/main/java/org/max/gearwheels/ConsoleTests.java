package org.max.gearwheels;

import org.max.gearwheels.model.WheelsPair;
import org.max.gearwheels.service.WheelsPairCalculation;

public class ConsoleTests {
    public static void main(String[] args) {
        WheelsPair wheelsPair = new WheelsPair(20,50,1000,0,0.2,350,120);
        WheelsPairCalculation wheelsPairCalculation = new WheelsPairCalculation();
        wheelsPairCalculation.calculationRecomenedModulAW(wheelsPair);
    }
}
