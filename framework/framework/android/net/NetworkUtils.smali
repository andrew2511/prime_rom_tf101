.class public Landroid/net/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultRoute(Ljava/lang/String;Ljava/net/InetAddress;)Z
    .registers 8
    .parameter "interfaceName"
    .parameter "gw"

    .prologue
    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, gwStr:Ljava/lang/String;
    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_13

    .line 186
    const-string v0, "0.0.0.0"

    .line 194
    .local v0, dstStr:Ljava/lang/String;
    :goto_b
    invoke-static {p0, v0, v5, v1}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3a

    const/4 v2, 0x1

    .end local v0           #dstStr:Ljava/lang/String;
    :goto_12
    return v2

    .line 187
    :cond_13
    instance-of v2, p1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1a

    .line 188
    const-string v0, "::"

    .restart local v0       #dstStr:Ljava/lang/String;
    goto :goto_b

    .line 190
    .end local v0           #dstStr:Ljava/lang/String;
    :cond_1a
    const-string v2, "NetworkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDefaultRoute failure: address is neither IPv4 nor IPv6("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 192
    goto :goto_12

    .restart local v0       #dstStr:Ljava/lang/String;
    :cond_3a
    move v2, v5

    .line 194
    goto :goto_12
.end method

.method public static addHostRoute(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .registers 10
    .parameter "interfaceName"
    .parameter "dst"
    .parameter "gw"

    .prologue
    const/4 v6, 0x0

    .line 208
    if-nez p1, :cond_c

    .line 209
    const-string v3, "NetworkUtils"

    const-string v4, "addHostRoute: dst should not be null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 226
    :goto_b
    return v3

    .line 214
    :cond_c
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, dstStr:Ljava/lang/String;
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 217
    .local v1, gwStr:Ljava/lang/String;
    :goto_17
    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_28

    .line 218
    const/16 v2, 0x20

    .line 226
    .local v2, prefixLength:I
    :goto_1d
    invoke-static {p0, v0, v2, v1}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4f

    const/4 v3, 0x1

    goto :goto_b

    .line 215
    .end local v1           #gwStr:Ljava/lang/String;
    .end local v2           #prefixLength:I
    :cond_25
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_17

    .line 219
    .restart local v1       #gwStr:Ljava/lang/String;
    :cond_28
    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2f

    .line 220
    const/16 v2, 0x80

    .restart local v2       #prefixLength:I
    goto :goto_1d

    .line 222
    .end local v2           #prefixLength:I
    :cond_2f
    const-string v3, "NetworkUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addHostRoute failure: address is neither IPv4 nor IPv6("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 224
    goto :goto_b

    .restart local v2       #prefixLength:I
    :cond_4f
    move v3, v6

    .line 226
    goto :goto_b
.end method

.method public static native addRoute(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static native disableInterface(Ljava/lang/String;)I
.end method

.method public static native enableInterface(Ljava/lang/String;)I
.end method

.method public static getDefaultRoute(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .parameter "interfaceName"

    .prologue
    .line 56
    invoke-static {p0}, Landroid/net/NetworkUtils;->getDefaultRouteNative(Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, addr:I
    invoke-static {v0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method private static native getDefaultRouteNative(Ljava/lang/String;)I
.end method

.method public static native getDhcpError()Ljava/lang/String;
.end method

.method public static inetAddressToInt(Ljava/net/InetAddress;)I
    .registers 4
    .parameter "inetAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 141
    .local v0, addr:[B
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_10

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not an IPv4 address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_10
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static intToInetAddress(I)Ljava/net/InetAddress;
    .registers 5
    .parameter "hostAddress"

    .prologue
    .line 121
    const/4 v2, 0x4

    new-array v0, v2, [B

    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 127
    .local v0, addressBytes:[B
    :try_start_21
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_24
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_24} :catch_26

    move-result-object v2

    return-object v2

    .line 128
    :catch_26
    move-exception v1

    .line 129
    .local v1, e:Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 2
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static prefixLengthToNetmaskInt(I)I
    .registers 4
    .parameter "prefixLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x20

    .line 155
    if-ltz p0, :cond_6

    if-le p0, v2, :cond_e

    .line 156
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid prefix length (0 <= prefix <= 32)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_e
    const/4 v1, -0x1

    sub-int/2addr v2, p0

    shl-int v0, v1, v2

    .line 159
    .local v0, value:I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    return v1
.end method

.method public static native releaseDhcpLease(Ljava/lang/String;)Z
.end method

.method public static native removeDefaultRoute(Ljava/lang/String;)I
.end method

.method public static native removeHostRoutes(Ljava/lang/String;)I
.end method

.method public static native resetConnections(Ljava/lang/String;)I
.end method

.method public static native runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z
.end method

.method public static native runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z
.end method

.method public static native stopDhcp(Ljava/lang/String;)Z
.end method
