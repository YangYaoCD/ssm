package com.yangyao.backoffice.model;


import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Parkinginfo {

    private long carparkId;
    private double p_X;
    private double p_Y;
    private long pwidth;
    private long pheight;
    private String memo;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private java.sql.Timestamp time;
    private String paddr;
    private String owner;


    public long getCarparkId() {
        return carparkId;
    }

    public void setCarparkId(long carparkId) {
        this.carparkId = carparkId;
    }


    public double getP_X() {
        return p_X;
    }

    public void setP_X(double p_X) {
        this.p_X = p_X;
    }


    public double getP_Y() {
        return p_Y;
    }

    public void setP_Y(double p_Y) {
        this.p_Y = p_Y;
    }


    public long getPwidth() {
        return pwidth;
    }

    public void setPwidth(long pwidth) {
        this.pwidth = pwidth;
    }


    public long getPheight() {
        return pheight;
    }

    public void setPheight(long pheight) {
        this.pheight = pheight;
    }


    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }


    public java.sql.Timestamp getTime() {
        return time;
    }

    public void setTime(String time) throws Exception {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date tm=  sdf.parse(time);
        java.sql.Timestamp dToTimestamp = new java.sql.Timestamp(tm.getTime());
        //java.sql.Timestamp
        this.time = dToTimestamp;
    }


    public String getPaddr() {
        return paddr;
    }

    public void setPaddr(String paddr) {
        this.paddr = paddr;
    }


    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    @Override
    public String toString() {
        return "Parkinginfo{" +
                "carparkId=" + carparkId +
                ", p_X=" + p_X +
                ", p_Y=" + p_Y +
                ", pwidth=" + pwidth +
                ", pheight=" + pheight +
                ", memo='" + memo + '\'' +
                ", time=" + time +
                ", paddr='" + paddr + '\'' +
                ", owner='" + owner + '\'' +
                '}';
    }
}
