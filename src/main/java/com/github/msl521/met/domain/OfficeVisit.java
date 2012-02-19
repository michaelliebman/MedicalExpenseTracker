package com.github.msl521.met.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import com.github.msl521.met.domain.Patient;
import javax.persistence.ManyToOne;
import com.github.msl521.met.domain.Provider;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class OfficeVisit {

    @ManyToOne
    private Patient patient;

    @NotNull
    @ManyToOne
    private Provider provider;


}
