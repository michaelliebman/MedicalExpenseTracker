// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.github.msl521.met.domain;

import com.github.msl521.met.domain.Gender;
import java.lang.String;

privileged aspect Patient_Roo_JavaBean {
    
    public String Patient.getLastName() {
        return this.lastName;
    }
    
    public void Patient.setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String Patient.getFirstName() {
        return this.firstName;
    }
    
    public void Patient.setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String Patient.getMiddleName() {
        return this.middleName;
    }
    
    public void Patient.setMiddleName(String middleName) {
        this.middleName = middleName;
    }
    
    public String Patient.getPersonalTitle() {
        return this.personalTitle;
    }
    
    public void Patient.setPersonalTitle(String personalTitle) {
        this.personalTitle = personalTitle;
    }
    
    public String Patient.getSuffix() {
        return this.suffix;
    }
    
    public void Patient.setSuffix(String suffix) {
        this.suffix = suffix;
    }
    
    public String Patient.getNickname() {
        return this.nickname;
    }
    
    public void Patient.setNickname(String nickname) {
        this.nickname = nickname;
    }
    
    public Gender Patient.getGender() {
        return this.gender;
    }
    
    public void Patient.setGender(Gender gender) {
        this.gender = gender;
    }
    
    public String Patient.getComment() {
        return this.comment;
    }
    
    public void Patient.setComment(String comment) {
        this.comment = comment;
    }
    
}