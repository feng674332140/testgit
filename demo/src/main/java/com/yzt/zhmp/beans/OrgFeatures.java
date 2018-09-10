package com.yzt.zhmp.beans;

public class OrgFeatures {
    private String features;
    private String status;

    public OrgFeatures(){}
    public OrgFeatures(String features, String status) {
        this.features = features;
        this.status = status;
    }

    public String getFeatures() {
        return features;
    }

    public void setFeatures(String features) {
        this.features = features;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "OrgFeatures{" +
                "features='" + features + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
