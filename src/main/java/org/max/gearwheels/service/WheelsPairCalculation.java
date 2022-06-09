package org.max.gearwheels.service;

import org.max.gearwheels.model.RecomenedModulAW;
import org.max.gearwheels.model.WheelsPair;

public class WheelsPairCalculation {
    public WheelsPairCalculation() {
    }

    public RecomenedModulAW calculationRecomenedModulAW(WheelsPair wheelsPair) {
        double aw = 0;
        double u = 0;
        double ka = 43;
        double km = 5.8;
        double arg1;
        double modul;
        double d2;
        double b2;
        double psiba = 0.25;
        psiba = wheelsPair.getGearRing();

        u = wheelsPair.getTeethNumber2()/wheelsPair.getTeethNumber1();
        if (wheelsPair.getToothAngele() == 0) {ka = 49.5; km = 6.8;}
        arg1 = wheelsPair.getTorque() * 1000 / (psiba * u * u * wheelsPair.getContactPressure() * wheelsPair.getContactPressure());
        aw = ka*(u+1)*Math.exp(Math.log(arg1)/3);

        //System.out.println("aw =  " + aw + "mm");

        d2 = 2 * aw * u / (u + 1);
        b2 = psiba * aw;
        modul = 2 * km * wheelsPair.getTorque() * 1000 / (d2 * b2 * wheelsPair.getBendingStress());
        RecomenedModulAW recomenedModulAW = new RecomenedModulAW(aw, modul);
        //System.out.println("modul =  " + modul + "mm");
        System.out.println(recomenedModulAW);
        return recomenedModulAW;
    }
}
