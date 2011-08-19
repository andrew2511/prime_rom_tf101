.class public abstract Lgov/nist/javax/sip/header/AddressParametersHeader;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AddressParametersHeader.java"

# interfaces
.implements Ljavax/sip/header/Parameters;


# instance fields
.field protected address:Lgov/nist/javax/sip/address/AddressImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter "name"
    .parameter "sync"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AddressParametersHeader;

    .line 86
    .local v0, retval:Lgov/nist/javax/sip/header/AddressParametersHeader;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    if-eqz v1, :cond_14

    .line 87
    iget-object v1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object p0, v0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 88
    :cond_14
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 103
    :goto_5
    return v2

    .line 99
    :cond_6
    instance-of v2, p1, Ljavax/sip/header/HeaderAddress;

    if-eqz v2, :cond_2c

    instance-of v2, p1, Ljavax/sip/header/Parameters;

    if-eqz v2, :cond_2c

    .line 100
    move-object v0, p1

    check-cast v0, Ljavax/sip/header/HeaderAddress;

    move-object v1, v0

    .line 101
    .local v1, o:Ljavax/sip/header/HeaderAddress;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    invoke-interface {v1}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    check-cast v1, Ljavax/sip/header/Parameters;

    .end local v1           #o:Ljavax/sip/header/HeaderAddress;
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/header/AddressParametersHeader;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move v2, v5

    goto :goto_5

    :cond_2a
    move v2, v4

    goto :goto_5

    :cond_2c
    move v2, v4

    .line 103
    goto :goto_5
.end method

.method public getAddress()Ljavax/sip/address/Address;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    return-object v0
.end method

.method public setAddress(Ljavax/sip/address/Address;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 60
    check-cast p1, Lgov/nist/javax/sip/address/AddressImpl;

    .end local p1
    iput-object p1, p0, Lgov/nist/javax/sip/header/AddressParametersHeader;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 61
    return-void
.end method
