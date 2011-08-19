.class public final Lgov/nist/javax/sip/address/AddressImpl;
.super Lgov/nist/javax/sip/address/NetObject;
.source "AddressImpl.java"

# interfaces
.implements Ljavax/sip/address/Address;


# static fields
.field public static final ADDRESS_SPEC:I = 0x2

.field public static final NAME_ADDR:I = 0x1

.field public static final WILD_CARD:I = 0x3

.field private static final serialVersionUID:J = 0x5f6385b6042972bL


# instance fields
.field protected address:Lgov/nist/javax/sip/address/GenericURI;

.field protected addressType:I

.field protected displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 191
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 340
    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    .line 341
    .local v0, retval:Lgov/nist/javax/sip/address/AddressImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v1, :cond_14

    .line 342
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p0, v0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 343
    :cond_14
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "buffer"

    .prologue
    const/4 v2, 0x1

    .line 168
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 169
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    :cond_b
    :goto_b
    return-object p1

    .line 172
    :cond_c
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 173
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_27
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v0, :cond_b

    .line 179
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    if-eq v0, v2, :cond_33

    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 180
    :cond_33
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_38
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 182
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    if-eq v0, v2, :cond_45

    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 183
    :cond_45
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    .line 261
    if-ne p0, p1, :cond_4

    const/4 v2, 0x1

    .line 269
    :goto_3
    return v2

    .line 263
    :cond_4
    instance-of v2, p1, Ljavax/sip/address/Address;

    if-eqz v2, :cond_19

    .line 264
    move-object v0, p1

    check-cast v0, Ljavax/sip/address/Address;

    move-object v1, v0

    .line 267
    .local v1, o:Ljavax/sip/address/Address;
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/AddressImpl;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3

    .line 269
    .end local v1           #o:Ljavax/sip/address/Address;
    :cond_19
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public getAddressType()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 4

    .prologue
    .line 142
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    if-nez v1, :cond_e

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "address is not a SipUri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 145
    .local v0, uri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .registers 4

    .prologue
    .line 104
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    if-nez v1, :cond_e

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "address is not a SipUri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 107
    .local v0, uri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    return-object v1
.end method

.method public getPort()I
    .registers 4

    .prologue
    .line 117
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    if-nez v1, :cond_e

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "address is not a SipUri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 120
    .local v0, uri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    return v1
.end method

.method public getURI()Ljavax/sip/address/URI;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    return-object v0
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v1, :cond_f

    .line 131
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 132
    .local v0, uri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getUserAtHostPort()Ljava/lang/String;

    move-result-object v1

    .line 134
    .end local v0           #uri:Lgov/nist/javax/sip/address/SipUri;
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public hasDisplayName()Z
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSIPAddress()Z
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v0, v0, Lgov/nist/javax/sip/address/SipUri;

    return v0
.end method

.method public isWildcard()Z
    .registers 3

    .prologue
    .line 310
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    if-nez p1, :cond_6

    move v2, v5

    .line 94
    :goto_5
    return v2

    .line 83
    :cond_6
    instance-of v2, p1, Ljavax/sip/address/Address;

    if-nez v2, :cond_c

    move v2, v4

    .line 84
    goto :goto_5

    .line 86
    :cond_c
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    move-object v1, v0

    .line 87
    .local v1, that:Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getMatcher()Lgov/nist/core/Match;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 88
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/AddressImpl;->getMatcher()Lgov/nist/core/Match;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/Match;->match(Ljava/lang/String;)Z

    move-result v2

    goto :goto_5

    .line 89
    :cond_23
    iget-object v2, v1, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-nez v2, :cond_2d

    move v2, v4

    .line 90
    goto :goto_5

    .line 91
    :cond_2d
    iget-object v2, v1, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-nez v2, :cond_3a

    .line 92
    iget-object v2, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    iget-object v3, v1, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/GenericURI;->match(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 94
    :cond_3a
    iget-object v2, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    iget-object v3, v1, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    iget-object v3, v1, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/GenericURI;->match(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    move v2, v5

    goto :goto_5

    :cond_50
    move v2, v4

    goto :goto_5
.end method

.method public removeDisplayName()V
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .registers 5
    .parameter "parameterName"

    .prologue
    .line 153
    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v1, v1, Lgov/nist/javax/sip/address/SipUri;

    if-nez v1, :cond_e

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "address is not a SipUri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    .line 156
    .local v0, uri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setAddess(Ljavax/sip/address/URI;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 240
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    .end local p1
    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 241
    return-void
.end method

.method public setAddressType(I)V
    .registers 2
    .parameter "atype"

    .prologue
    .line 209
    iput p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 210
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 3
    .parameter "displayName"

    .prologue
    .line 229
    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 231
    return-void
.end method

.method public setURI(Ljavax/sip/address/URI;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 319
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    .end local p1
    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 320
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2
    .parameter "user"

    .prologue
    .line 327
    iget-object p0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public setWildCardFlag()V
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x3

    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 335
    new-instance v0, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 336
    iget-object p0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/address/SipUri;

    const-string v0, "*"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 337
    return-void
.end method
