.class public abstract Lgov/nist/javax/sip/header/ParametersHeader;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ParametersHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;
.implements Ljava/io/Serializable;


# instance fields
.field protected duplicates:Lgov/nist/core/DuplicateNameValueList;

.field protected parameters:Lgov/nist/core/NameValueList;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 59
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 60
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "hdrName"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 66
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "hdrName"
    .parameter "sync"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0, p2}, Lgov/nist/core/NameValueList;-><init>(Z)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 72
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 73
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 464
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ParametersHeader;

    .line 465
    .local v0, retval:Lgov/nist/javax/sip/header/ParametersHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_14

    .line 466
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/core/NameValueList;

    iput-object p0, v0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 467
    :cond_14
    return-object v0
.end method

.method protected abstract encodeBody()Ljava/lang/String;
.end method

.method protected final equalParameters(Ljavax/sip/header/Parameters;)Z
    .registers 10
    .parameter "other"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 577
    if-ne p0, p1, :cond_6

    move v4, v7

    .line 609
    :goto_5
    return v4

    .line 579
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 580
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 582
    .local v3, pname:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, p1:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, p2:Ljava/lang/String;
    if-nez v1, :cond_29

    move v4, v7

    :goto_21
    if-nez v2, :cond_2b

    move v5, v7

    :goto_24
    xor-int/2addr v4, v5

    if-eqz v4, :cond_2d

    move v4, v6

    goto :goto_5

    :cond_29
    move v4, v6

    goto :goto_21

    :cond_2b
    move v5, v6

    goto :goto_24

    .line 588
    :cond_2d
    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v6

    goto :goto_5

    .line 592
    .end local v1           #p1:Ljava/lang/String;
    .end local v2           #p2:Ljava/lang/String;
    .end local v3           #pname:Ljava/lang/String;
    :cond_37
    invoke-interface {p1}, Ljavax/sip/header/Parameters;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 595
    .restart local v3       #pname:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljavax/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .restart local v1       #p1:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2       #p2:Ljava/lang/String;
    if-nez v1, :cond_5a

    move v4, v7

    :goto_52
    if-nez v2, :cond_5c

    move v5, v7

    :goto_55
    xor-int/2addr v4, v5

    if-eqz v4, :cond_5e

    move v4, v6

    goto :goto_5

    :cond_5a
    move v4, v6

    goto :goto_52

    :cond_5c
    move v5, v6

    goto :goto_55

    .line 606
    :cond_5e
    if-eqz v1, :cond_3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    move v4, v6

    goto :goto_5

    .end local v1           #p1:Ljava/lang/String;
    .end local v2           #p2:Ljava/lang/String;
    .end local v3           #pname:Ljava/lang/String;
    :cond_68
    move v4, v7

    .line 609
    goto :goto_5
.end method

.method public getMultiParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 503
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiParameterNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0}, Lgov/nist/core/DuplicateNameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getMultiParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 520
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMultiParameters()Lgov/nist/core/DuplicateNameValueList;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    return-object v0
.end method

.method public getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .registers 3
    .parameter "parameterName"

    .prologue
    .line 459
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 84
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParameterAsBoolean(Ljava/lang/String;)Z
    .registers 5
    .parameter "parameterName"

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    .local v0, val:Ljava/lang/Object;
    if-nez v0, :cond_9

    move v1, v2

    .line 450
    .end local v0           #val:Ljava/lang/Object;
    :goto_8
    return v1

    .line 445
    .restart local v0       #val:Ljava/lang/Object;
    :cond_9
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    .line 446
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #val:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_8

    .line 447
    .restart local v0       #val:Ljava/lang/Object;
    :cond_14
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 448
    check-cast v0, Ljava/lang/String;

    .end local v0           #val:Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_8

    .restart local v0       #val:Ljava/lang/Object;
    :cond_23
    move v1, v2

    .line 450
    goto :goto_8
.end method

.method protected getParameterAsFloat(Ljava/lang/String;)F
    .registers 5
    .parameter "parameterName"

    .prologue
    const/high16 v2, -0x4080

    .line 375
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 377
    :try_start_8
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 378
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 387
    .end local p0
    :goto_18
    return v1

    .line 380
    .restart local p0
    :cond_19
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_22} :catch_24

    move-result v1

    goto :goto_18

    .line 383
    :catch_24
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v1, v2

    .line 384
    goto :goto_18

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local p0
    :cond_28
    move v1, v2

    .line 387
    goto :goto_18
.end method

.method protected getParameterAsHexInt(Ljava/lang/String;)I
    .registers 6
    .parameter "parameterName"

    .prologue
    const/4 v3, -0x1

    .line 350
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 352
    :try_start_7
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 353
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 364
    .end local p0
    :goto_19
    return v1

    .line 357
    .restart local p0
    :cond_1a
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_23} :catch_25

    move-result v1

    goto :goto_19

    .line 360
    :catch_25
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v1, v3

    .line 361
    goto :goto_19

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local p0
    :cond_29
    move v1, v3

    .line 364
    goto :goto_19
.end method

.method protected getParameterAsInt(Ljava/lang/String;)I
    .registers 5
    .parameter "parameterName"

    .prologue
    const/4 v2, -0x1

    .line 328
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 330
    :try_start_7
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 331
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 340
    .end local p0
    :goto_17
    return v1

    .line 333
    .restart local p0
    :cond_18
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_21} :catch_23

    move-result v1

    goto :goto_17

    .line 336
    :catch_23
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v1, v2

    .line 337
    goto :goto_17

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local p0
    :cond_27
    move v1, v2

    .line 340
    goto :goto_17
.end method

.method protected getParameterAsLong(Ljava/lang/String;)J
    .registers 6
    .parameter "parameterName"

    .prologue
    const-wide/16 v2, -0x1

    .line 398
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 400
    :try_start_8
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 401
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 410
    .end local p0
    :goto_18
    return-wide v1

    .line 403
    .restart local p0
    :cond_19
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_22} :catch_24

    move-result-wide v1

    goto :goto_18

    .line 406
    :catch_24
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NumberFormatException;
    move-wide v1, v2

    .line 407
    goto :goto_18

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local p0
    :cond_28
    move-wide v1, v2

    .line 410
    goto :goto_18
.end method

.method protected getParameterAsURI(Ljava/lang/String;)Lgov/nist/javax/sip/address/GenericURI;
    .registers 5
    .parameter "parameterName"

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 423
    .local v1, val:Ljava/lang/Object;
    instance-of v2, v1, Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v2, :cond_c

    .line 424
    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    .end local v1           #val:Ljava/lang/Object;
    move-object v2, v1

    .line 430
    :goto_b
    return-object v2

    .line 427
    .restart local v1       #val:Ljava/lang/Object;
    :cond_c
    :try_start_c
    new-instance v2, Lgov/nist/javax/sip/address/GenericURI;

    check-cast v1, Ljava/lang/String;

    .end local v1           #val:Ljava/lang/Object;
    invoke-direct {v2, v1}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_b

    .line 428
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 430
    .local v0, ex:Ljava/text/ParseException;
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public hasMultiParameter(Ljava/lang/String;)Z
    .registers 3
    .parameter "parameterName"

    .prologue
    .line 563
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMultiParameters()Z
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0}, Lgov/nist/core/DuplicateNameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .registers 3
    .parameter "parameterName"

    .prologue
    .line 285
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasParameters()Z
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeMultiParameter(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 552
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->delete(Ljava/lang/String;)Z

    .line 553
    return-void
.end method

.method public removeMultiParameters()V
    .registers 2

    .prologue
    .line 570
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    .line 571
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 128
    return-void
.end method

.method public removeParameters()V
    .registers 2

    .prologue
    .line 292
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 293
    return-void
.end method

.method public setMultiParameter(Lgov/nist/core/NameValue;)V
    .registers 3
    .parameter "nameValue"

    .prologue
    .line 494
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 495
    return-void
.end method

.method public setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 483
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0}, Lgov/nist/core/NameValue;-><init>()V

    .line 484
    .local v0, nv:Lgov/nist/core/NameValue;
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 487
    return-void
.end method

.method public setParameter(Lgov/nist/core/NameValue;)V
    .registers 3
    .parameter "nameValue"

    .prologue
    .line 308
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 309
    return-void
.end method

.method protected setParameter(Ljava/lang/String;F)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 245
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 246
    .local v1, val:Ljava/lang/Float;
    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 247
    .local v0, nv:Lgov/nist/core/NameValue;
    if-eqz v0, :cond_10

    .line 248
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 253
    :goto_f
    return-void

    .line 250
    :cond_10
    new-instance v0, Lgov/nist/core/NameValue;

    .end local v0           #nv:Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, v1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    .restart local v0       #nv:Lgov/nist/core/NameValue;
    iget-object v2, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_f
.end method

.method protected setParameter(Ljava/lang/String;I)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    .local v0, val:Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method protected setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 274
    iget-object v0, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 150
    .local v0, nv:Lgov/nist/core/NameValue;
    if-eqz v0, :cond_c

    .line 151
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 156
    :goto_b
    return-void

    .line 153
    :cond_c
    new-instance v0, Lgov/nist/core/NameValue;

    .end local v0           #nv:Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    .restart local v0       #nv:Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_b
.end method

.method protected setParameter(Ljava/lang/String;Z)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 226
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    .local v0, val:Ljava/lang/Boolean;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public setParameters(Lgov/nist/core/NameValueList;)V
    .registers 2
    .parameter "parameters"

    .prologue
    .line 317
    iput-object p1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    .line 318
    return-void
.end method

.method public setQuotedParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 179
    .local v0, nv:Lgov/nist/core/NameValue;
    if-eqz v0, :cond_f

    .line 180
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 187
    :goto_e
    return-void

    .line 183
    :cond_f
    new-instance v0, Lgov/nist/core/NameValue;

    .end local v0           #nv:Lgov/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    .restart local v0       #nv:Lgov/nist/core/NameValue;
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 185
    iget-object v1, p0, Lgov/nist/javax/sip/header/ParametersHeader;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_e
.end method
