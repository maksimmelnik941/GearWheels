package org.max.gearwheels.model;

public class RecomenedModulAW {
    private double aw;
    private double modul;

    public RecomenedModulAW(double aw, double modul) {
        this.aw = aw;
        this.modul = modul;
    }

    public double getAw() {
        return aw;
    }

    public double getModul() {
        return modul;
    }

    @Override
    public String toString() {
        return "Recomened Modul = " + modul + " AW = " + aw;
    }
}
