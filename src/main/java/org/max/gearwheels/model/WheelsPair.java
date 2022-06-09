package org.max.gearwheels.model;

import org.max.gearwheels.exception.MaximumNumberExceeded;

public class WheelsPair {
    //число зубьев шестерни (Z1)
    private int teethNumber1;
    private int teethNumber2;
    private double torque;
    private double toothAngele;
    private double gearRing;
    private double contactPressure;
    private double bendingStress;

    private static int MAX_TOOTH_NUMBER = 100;

    public WheelsPair(int z1, int z2, double torque, double toothAngele, double gearRing, double contactPressure, double bendingStress) {
        this.teethNumber1 = z1;
        this.teethNumber2 = z2;
        this.torque = torque;
        this.toothAngele = toothAngele;
        this.gearRing = gearRing;
        this.contactPressure = contactPressure;
        this.bendingStress = bendingStress;
    }

    public void verification() throws Exception {
        if (teethNumber1 > MAX_TOOTH_NUMBER) {
            throw new MaximumNumberExceeded("The maximum number of Z1 teeth " + MAX_TOOTH_NUMBER + " have been exceeded");
        }
    }

    public int getTeethNumber1() {
        return teethNumber1;
    }

    public void setTeethNumber1(int teethNumber1) {
        this.teethNumber1 = teethNumber1;
    }

    public int getTeethNumber2() {
        return teethNumber2;
    }

    public void setTeethNumber2(int teethNumber2) {
        this.teethNumber2 = teethNumber2;
    }

    public double getTorque() {
        return torque;
    }

    public void setTorque(double torque) {
        this.torque = torque;
    }

    public double getToothAngele() {
        return toothAngele;
    }

    public void setToothAngele(double toothAngele) {
        this.toothAngele = toothAngele;
    }

    public double getGearRing() {
        return gearRing;
    }

    public void setGearRing(double gearRing) {
        this.gearRing = gearRing;
    }

    public double getContactPressure() {
        return contactPressure;
    }

    public void setContactPressure(double contactPressure) {
        this.contactPressure = contactPressure;
    }

    public double getBendingStress() {
        return bendingStress;
    }

    public void setBendingStress(double bendingStress) {
        this.bendingStress = bendingStress;
    }
}


