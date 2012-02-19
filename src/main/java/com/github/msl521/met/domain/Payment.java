package com.github.msl521.met.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import com.github.msl521.met.domain.Party;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import java.util.Date;
import javax.validation.constraints.Past;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import com.github.msl521.met.domain.OfficeVisit;
import javax.validation.constraints.Min;
import javax.validation.constraints.Digits;

@RooJavaBean
@RooToString
@RooEntity
public class Payment {

    @NotNull
    @ManyToOne
    private Party payee;

    @NotNull
    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date paymentDate;

    @NotNull
    @ManyToOne
    private OfficeVisit officeVisit;

    @NotNull
    @Min(0L)
    @Digits(integer = 8, fraction = 2)
    private double amount;

    @Min(0L)
    private int checkNumber;
}
