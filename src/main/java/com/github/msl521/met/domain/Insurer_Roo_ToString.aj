// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.github.msl521.met.domain;

import java.lang.String;

privileged aspect Insurer_Roo_ToString {
    
    public String Insurer.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Payments: ").append(getPayments() == null ? "null" : getPayments().size()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
