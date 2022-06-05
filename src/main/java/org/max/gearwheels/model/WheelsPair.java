package org.max.gearwheels.model;

import org.max.gearwheels.exception.MaximumNumberExceeded;

public class WheelsPair {
    private int z1;
    private int z2;
    private int torque;
    private int toothAngele;
    private int gearRing;
    private int contactPressure;
    private int bendingStress;

    private static int MAX_TOOTH_NUMBER = 100;

    public WheelsPair(int z1, int z2, int torque, int toothAngele, int gearRing, int contactPressure, int bendingStress) {
        this.z1 = z1;
        this.z2 = z2;
        this.torque = torque;
        this.toothAngele = toothAngele;
        this.gearRing = gearRing;
        this.contactPressure = contactPressure;
        this.bendingStress = bendingStress;
    }

    public void verification() throws Exception {
        if (z1 > MAX_TOOTH_NUMBER) {
            throw new MaximumNumberExceeded("The maximum number of Z1 teeth " + MAX_TOOTH_NUMBER + " have been exceeded");
        }
    }

    public int getZ1() {
        return z1;
    }

    public void setZ1(int z1) {
        this.z1 = z1;
    }

    public int getZ2() {
        return z2;
    }

    public void setZ2(int z2) {
        this.z2 = z2;
    }

    public int getTorque() {
        return torque;
    }

    public void setTorque(int torque) {
        this.torque = torque;
    }

    public int getToothAngele() {
        return toothAngele;
    }

    public void setToothAngele(int toothAngele) {
        this.toothAngele = toothAngele;
    }

    public int getGearRing() {
        return gearRing;
    }

    public void setGearRing(int gearRing) {
        this.gearRing = gearRing;
    }

    public int getContactPressure() {
        return contactPressure;
    }

    public void setContactPressure(int contactPressure) {
        this.contactPressure = contactPressure;
    }

    public int getBendingStress() {
        return bendingStress;
    }

    public void setBendingStress(int bendingStress) {
        this.bendingStress = bendingStress;
    }
}


