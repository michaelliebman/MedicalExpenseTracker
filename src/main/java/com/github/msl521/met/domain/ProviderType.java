package com.github.msl521.met.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Set;
import com.github.msl521.met.domain.Provider;
import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class ProviderType {

    @NotNull
    @Size(min = 3)
    private String description;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "providerType")
    private Set<Provider> providers = new HashSet<Provider>();
}
