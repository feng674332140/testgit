package com.yzt.zhmp.beans;

import java.io.Serializable;
import java.util.Date;

public class DeptUser implements Serializable {
    private Integer dptusrid;

    private Integer usrid;

    private Integer deptid;

    private Date priviligetime;

    private Integer priviusrid;

    private String ifvalid;

    private String memo;

    private static final long serialVersionUID = 1L;

    public Integer getDptusrid() {
        return dptusrid;
    }

    public void setDptusrid(Integer dptusrid) {
        this.dptusrid = dptusrid;
    }

    public Integer getUsrid() {
        return usrid;
    }

    public void setUsrid(Integer usrid) {
        this.usrid = usrid;
    }

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    public Date getPriviligetime() {
        return priviligetime;
    }

    public void setPriviligetime(Date priviligetime) {
        this.priviligetime = priviligetime;
    }

    public Integer getPriviusrid() {
        return priviusrid;
    }

    public void setPriviusrid(Integer priviusrid) {
        this.priviusrid = priviusrid;
    }

    public String getIfvalid() {
        return ifvalid;
    }

    public void setIfvalid(String ifvalid) {
        this.ifvalid = ifvalid == null ? null : ifvalid.trim();
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", dptusrid=").append(dptusrid);
        sb.append(", usrid=").append(usrid);
        sb.append(", deptid=").append(deptid);
        sb.append(", priviligetime=").append(priviligetime);
        sb.append(", priviusrid=").append(priviusrid);
        sb.append(", ifvalid=").append(ifvalid);
        sb.append(", memo=").append(memo);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}