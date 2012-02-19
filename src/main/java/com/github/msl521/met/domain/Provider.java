package com.github.msl521.met.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import com.github.msl521.met.domain.ProviderType;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooEntity
public class Provider extends Organization {

    @ManyToOne
    private ProviderType providerType;
}
