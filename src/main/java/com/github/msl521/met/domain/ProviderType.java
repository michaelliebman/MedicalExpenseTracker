package com.github.msl521.met.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Set;
import com.github.msl521.met.domain.Provider;
import java.util.HashSet;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;

@RooJavaBean
@RooToString
@RooEntity
public class ProviderType {

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "providerType")
    private Set<Provider> providers = new HashSet<Provider>();
}
