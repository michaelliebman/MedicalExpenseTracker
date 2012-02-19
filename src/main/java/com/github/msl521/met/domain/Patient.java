package com.github.msl521.met.domain;

import javax.persistence.Enumerated;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.github.msl521.met.domain.Gender;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Set;
import com.github.msl521.met.domain.OfficeVisit;
import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooEntity
public class Patient extends Party {

    @NotNull
    @Size(min = 2)
    private String lastName;

    @NotNull
    @Size(min = 2)
    private String firstName;

    private String middleName;

    private String personalTitle;

    private String suffix;

    private String nickname;

    @Enumerated
    private Gender gender;

    private String comment;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "patient")
    private Set<OfficeVisit> officeVisits = new HashSet<OfficeVisit>();
}
