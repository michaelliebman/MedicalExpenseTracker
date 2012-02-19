package com.github.msl521.met.domain;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.github.msl521.met.domain.Party;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity
public abstract class Organization extends Party {

    @NotNull
    @Size(min = 2)
    @Column(name = "organization_name", length = 255)
    private String name;
}
