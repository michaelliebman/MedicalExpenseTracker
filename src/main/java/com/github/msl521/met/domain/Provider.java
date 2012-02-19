package com.github.msl521.met.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import com.github.msl521.met.domain.ProviderType;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import java.util.Set;
import com.github.msl521.met.domain.OfficeVisit;
import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooEntity
public class Provider extends Organization {

    @NotNull
    @ManyToOne
    private ProviderType providerType;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "provider")
    private Set<OfficeVisit> officeVisits = new HashSet<OfficeVisit>();
}
