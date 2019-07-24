package com.yangyao.backoffice.model;


import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;


public class Carparkdata {

    private String devid;
    private String devGroupId;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private java.sql.Timestamp recTime;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private java.sql.Timestamp ztChangeTime;
    private String carid;
    private long cwstatu;
    private long carparkId;
    private double c_X;
    private double c_Y;
    private String memo;


    public String getDevid() {
        return devid;
    }

    public void setDevid(String devid) {
        this.devid = devid;
    }


    public String getDevGroupId() {
        return devGroupId;
    }

    public void setDevGroupId(String devGroupId) {
        this.devGroupId = devGroupId;
    }


    public Timestamp getRecTime() {
        return recTime;
    }

    public void setRecTime(Timestamp recTime) {
        this.recTime = recTime;
    }

    public java.sql.Timestamp getZtChangeTime() {
        return ztChangeTime;
    }

    public void setZtChangeTime(java.sql.Timestamp ztChangeTime) {
        this.ztChangeTime = ztChangeTime;
    }


    public String getCarid() {
        return carid;
    }

    public void setCarid(String carid) {
        this.carid = carid;
    }


    public long getCwstatu() {
        return cwstatu;
    }

    public void setCwstatu(long cwstatu) {
        this.cwstatu = cwstatu;
    }


    public long getCarparkId() {
        return carparkId;
    }

    public void setCarparkId(long carparkId) {
        this.carparkId = carparkId;
    }


    public double getC_X() {
        return c_X;
    }

    public void setC_X(double c_X) {
        this.c_X = c_X;
    }


    public double getC_Y() {
        return c_Y;
    }

    public void setC_Y(double c_Y) {
        this.c_Y = c_Y;
    }


    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    @Override
    public String toString() {
        return "Carparkingdata{" +
                "devid='" + devid + '\'' +
                ", devGroupId='" + devGroupId + '\'' +
                ", recTime=" + recTime +
                ", ztChangeTime=" + ztChangeTime +
                ", carid='" + carid + '\'' +
                ", cwstatu=" + cwstatu +
                ", carparkId=" + carparkId +
                ", c_X=" + c_X +
                ", c_Y=" + c_Y +
                ", memo='" + memo + '\'' +
                '}';
    }
}
