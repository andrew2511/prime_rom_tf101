.class public Lgov/nist/core/Host;
.super Lgov/nist/core/GenericObject;
.source "Host.java"


# static fields
.field protected static final HOSTNAME:I = 0x1

.field protected static final IPV4ADDRESS:I = 0x2

.field protected static final IPV6ADDRESS:I = 0x3

.field private static final serialVersionUID:J = -0x6462c89aa1f7b990L


# instance fields
.field protected addressType:I

.field protected hostname:Ljava/lang/String;

.field private inetAddress:Ljava/net/InetAddress;

.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/core/Host;->addressType:I

    .line 88
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "hostName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 95
    if-nez p1, :cond_10

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null host name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_10
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 101
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "addrType"

    .prologue
    .line 108
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 109
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    .line 112
    invoke-direct {p0, p1, p2}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 113
    return-void
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 283
    if-eqz p1, :cond_d

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isIPv6Reference(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_19

    move v0, v3

    :goto_18
    return v0

    :cond_19
    move v0, v2

    goto :goto_18
.end method

.method private setHost(Ljava/lang/String;I)V
    .registers 7
    .parameter "host"
    .parameter "type"

    .prologue
    const/4 v3, 0x3

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 212
    invoke-direct {p0, p1}, Lgov/nist/core/Host;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 213
    iput v3, p0, Lgov/nist/core/Host;->addressType:I

    .line 218
    :goto_c
    if-eqz p1, :cond_3e

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 222
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 223
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 227
    :cond_21
    const/4 v0, -0x1

    .line 228
    .local v0, zoneStart:I
    iget v1, p0, Lgov/nist/core/Host;->addressType:I

    if-ne v1, v3, :cond_3e

    iget-boolean v1, p0, Lgov/nist/core/Host;->stripAddressScopeZones:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3e

    .line 232
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    .line 235
    .end local v0           #zoneStart:I
    :cond_3e
    return-void

    .line 215
    :cond_3f
    iput p2, p0, Lgov/nist/core/Host;->addressType:I

    goto :goto_c
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "buffer"

    .prologue
    .line 124
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Lgov/nist/core/Host;->isIPv6Reference(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 125
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    :goto_1e
    return-object p1

    .line 127
    :cond_1f
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 140
    if-nez p1, :cond_5

    move v2, v4

    .line 145
    :goto_4
    return v2

    .line 141
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v4

    .line 142
    goto :goto_4

    .line 144
    :cond_15
    move-object v0, p1

    check-cast v0, Lgov/nist/core/Host;

    move-object v1, v0

    .line 145
    .local v1, otherHost:Lgov/nist/core/Host;
    iget-object v2, v1, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    iget-object v3, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 269
    const/4 v0, 0x0

    .line 273
    :goto_5
    return-object v0

    .line 270
    :cond_6
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_d

    .line 271
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    goto :goto_5

    .line 272
    :cond_d
    iget-object v0, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 273
    iget-object v0, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    goto :goto_5
.end method

.method public getIpAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, rawIpAddress:Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 171
    const/4 v2, 0x0

    .line 183
    :goto_6
    return-object v2

    .line 172
    :cond_7
    iget v2, p0, Lgov/nist/core/Host;->addressType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 174
    :try_start_c
    iget-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_18

    .line 175
    iget-object v2, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 176
    :cond_18
    iget-object v2, p0, Lgov/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_1d} :catch_20

    move-result-object v1

    :goto_1e
    move-object v2, v1

    .line 183
    goto :goto_6

    .line 177
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 178
    .local v0, ex:Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve hostname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/core/Host;->dbgPrint(Ljava/lang/String;)V

    goto :goto_1e

    .line 181
    .end local v0           #ex:Ljava/net/UnknownHostException;
    :cond_39
    iget-object v1, p0, Lgov/nist/core/Host;->hostname:Ljava/lang/String;

    goto :goto_1e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lgov/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHostname()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 250
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isIPAddress()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 258
    iget v0, p0, Lgov/nist/core/Host;->addressType:I

    if-eq v0, v1, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lgov/nist/core/Host;->setHostAddress(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setHostAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgov/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 192
    return-void
.end method
