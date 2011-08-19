.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetAddress$WaitReachable;
    }
.end annotation


# static fields
.field private static final ERRMSG_CONNECTION_REFUSED:Ljava/lang/String; = "Connection refused"

.field static final SHORTEST_FIRST:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final addressCache:Ljava/net/AddressCache; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private addrCount:I

.field family:I

.field hostName:Ljava/lang/String;

.field ipaddress:[B

.field private reached:Z

.field private transient waitReachable:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 141
    new-instance v0, Ljava/net/AddressCache;

    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    .line 204
    new-instance v0, Ljava/net/InetAddress$1;

    invoke-direct {v0}, Ljava/net/InetAddress$1;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->SHORTEST_FIRST:Ljava/util/Comparator;

    .line 1049
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "address"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "family"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "hostName"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/net/InetAddress$WaitReachable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetAddress$WaitReachable;-><init>(Ljava/net/InetAddress$1;)V

    iput-object v0, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/InetAddress;->family:I

    .line 174
    return-void
.end method

.method static synthetic access$100(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetAddress;->isReachableByTCP(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/net/InetAddress;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Ljava/net/InetAddress;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Ljava/net/InetAddress;->reached:Z

    return p1
.end method

.method static synthetic access$400(Ljava/net/InetAddress;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Ljava/net/InetAddress;->addrCount:I

    return v0
.end method

.method static synthetic access$410(Ljava/net/InetAddress;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Ljava/net/InetAddress;->addrCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Ljava/net/InetAddress;->addrCount:I

    return v0
.end method

.method private static badAddressLength([B)Ljava/net/UnknownHostException;
    .registers 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1046
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address is neither 4 or 16 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native byteArrayToIpString([B)Ljava/lang/String;
.end method

.method static bytesToInetAddresses([[BLjava/lang/String;)[Ljava/net/InetAddress;
    .registers 5
    .parameter "rawAddresses"
    .parameter "hostName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Ljava/net/InetAddress;->preferIPv6Addresses()Z

    move-result v2

    if-nez v2, :cond_b

    .line 225
    sget-object v2, Ljava/net/InetAddress;->SHORTEST_FIRST:Ljava/util/Comparator;

    invoke-static {p0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 229
    :cond_b
    array-length v2, p0

    new-array v1, v2, [Ljava/net/InetAddress;

    .line 230
    .local v1, returnedAddresses:[Ljava/net/InetAddress;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    .line 231
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v1, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 233
    :cond_1d
    return-object v1
.end method

.method public static clearDnsCache()V
    .registers 1

    .prologue
    .line 507
    sget-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    .line 508
    return-void
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/net/InetAddress;

    return-object p0
.end method

.method static getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 6
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 258
    :cond_a
    invoke-static {}, Ljava/net/InetAddress;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v2

    .line 277
    :goto_e
    return-object v2

    .line 262
    :cond_f
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 263
    new-array v2, v3, [Ljava/net/InetAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    aput-object v3, v2, v4

    goto :goto_e

    .line 267
    :cond_1e
    invoke-static {p0}, Ljava/net/InetAddress;->ipStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 268
    .local v0, bytes:[B
    if-eqz v0, :cond_2e

    .line 269
    new-array v2, v3, [Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_e

    .line 272
    :cond_2e
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 273
    .local v1, security:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_38

    .line 274
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 277
    :cond_38
    invoke-static {p0}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_e
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .registers 3
    .parameter "hostName"
    .parameter "ipAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1003
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddressInternal(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .registers 3
    .parameter "ipAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 928
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/net/InetAddress;->getByAddressInternal(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static getByAddress([BI)Ljava/net/InetAddress;
    .registers 3
    .parameter "ipAddress"
    .parameter "scope_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 948
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/net/InetAddress;->getByAddressInternal(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static getByAddressInternal(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .registers 5
    .parameter "hostName"
    .parameter "ipAddress"
    .parameter "scope_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1026
    if-nez p1, :cond_a

    .line 1027
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "ipAddress == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_a
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 1030
    new-instance v1, Ljava/net/Inet4Address;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    .line 1038
    :goto_1a
    return-object v0

    .line 1031
    :cond_1b
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3d

    .line 1035
    invoke-static {p1}, Ljava/net/InetAddress;->isIPv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1036
    new-instance v0, Ljava/net/Inet4Address;

    invoke-static {p1}, Ljava/net/InetAddress;->ipv4MappedToIPv4([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    goto :goto_1a

    .line 1038
    :cond_30
    new-instance v1, Ljava/net/Inet6Address;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    move-object v0, v1

    goto :goto_1a

    .line 1041
    :cond_3d
    invoke-static {p1}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method static getHostByAddrImpl([B)Ljava/net/InetAddress;
    .registers 2
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 520
    invoke-static {p0}, Ljava/net/InetAddress;->getnameinfo([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static getHostNameInternal(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter "host"
    .parameter "isCheck"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 529
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 530
    :cond_8
    sget-object v1, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 541
    :goto_e
    return-object v1

    .line 532
    :cond_f
    invoke-static {p0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 533
    if-eqz p1, :cond_21

    .line 534
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 535
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_21

    .line 536
    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 539
    .end local v0           #sm:Ljava/lang/SecurityManager;
    :cond_21
    invoke-static {p0}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_2d
    move-object v1, p0

    .line 541
    goto :goto_e
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-static {}, Ljava/net/InetAddress;->gethostname()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, host:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 439
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_e

    .line 440
    const/4 v3, -0x1

    :try_start_b
    invoke-virtual {v2, v1, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_16

    .line 445
    :cond_e
    invoke-static {v1}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    :goto_15
    return-object v3

    .line 442
    :catch_16
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v3, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    goto :goto_15
.end method

.method private static native getaddrinfo(Ljava/lang/String;)[[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method private static native gethostname()Ljava/lang/String;
.end method

.method private static native getnameinfo([B)Ljava/lang/String;
.end method

.method static native ipStringToByteArray(Ljava/lang/String;)[B
.end method

.method private static ipv4MappedToIPv4([B)[B
    .registers 5
    .parameter "mappedAddress"

    .prologue
    const/4 v3, 0x4

    .line 970
    new-array v1, v3, [B

    .line 971
    .local v1, ipv4Address:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v3, :cond_f

    .line 972
    add-int/lit8 v2, v0, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 974
    :cond_f
    return-object v1
.end method

.method private static isIPv4MappedAddress([B)Z
    .registers 7
    .parameter "ipAddress"

    .prologue
    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 955
    if-eqz p0, :cond_b

    array-length v1, p0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_d

    :cond_b
    move v1, v3

    .line 966
    :goto_c
    return v1

    .line 958
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v5, :cond_19

    .line 959
    aget-byte v1, p0, v0

    if-eqz v1, :cond_16

    move v1, v3

    .line 960
    goto :goto_c

    .line 958
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 963
    :cond_19
    aget-byte v1, p0, v5

    if-ne v1, v4, :cond_23

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    if-eq v1, v4, :cond_25

    :cond_23
    move v1, v3

    .line 964
    goto :goto_c

    .line 966
    :cond_25
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 2
    .parameter "address"

    .prologue
    .line 563
    invoke-static {p0}, Ljava/net/InetAddress;->ipStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isReachableByMultiThread(Ljava/net/NetworkInterface;II)Z
    .registers 15
    .parameter "netif"
    .parameter "ttl"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 799
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 800
    .local v2, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    move v7, v9

    .line 882
    :goto_11
    return v7

    .line 803
    :cond_12
    iput-boolean v9, p0, Ljava/net/InetAddress;->reached:Z

    .line 804
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Ljava/net/InetAddress;->addrCount:I

    .line 805
    const/4 v5, 0x0

    .line 806
    .local v5, needWait:Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 808
    .local v1, addr:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 809
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 811
    .local v0, NetworkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_35
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_57

    .line 812
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 814
    .local v6, networkInterface:Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 816
    .local v4, localAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_45
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 817
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    move v7, v10

    .line 819
    goto :goto_11

    .line 824
    .end local v4           #localAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v6           #networkInterface:Ljava/net/NetworkInterface;
    :cond_57
    iget-object v7, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    monitor-enter v7

    .line 825
    :try_start_5a
    iget v8, p0, Ljava/net/InetAddress;->addrCount:I

    sub-int/2addr v8, v10

    iput v8, p0, Ljava/net/InetAddress;->addrCount:I

    .line 827
    iget v8, p0, Ljava/net/InetAddress;->addrCount:I

    if-nez v8, :cond_68

    .line 830
    iget-object v8, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 832
    :cond_68
    monitor-exit v7

    goto :goto_1f

    :catchall_6a
    move-exception v8

    monitor-exit v7
    :try_end_6c
    .catchall {:try_start_5a .. :try_end_6c} :catchall_6a

    throw v8

    .line 836
    .end local v0           #NetworkInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_6d
    const/4 v5, 0x1

    .line 837
    new-instance v7, Ljava/net/InetAddress$2;

    invoke-direct {v7, p0, v1, p3}, Ljava/net/InetAddress$2;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;I)V

    invoke-virtual {v7}, Ljava/net/InetAddress$2;->start()V

    goto :goto_1f

    .line 868
    .end local v1           #addr:Ljava/net/InetAddress;
    :cond_77
    if-eqz v5, :cond_95

    .line 869
    iget-object v7, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    monitor-enter v7

    .line 871
    :goto_7c
    :try_start_7c
    iget-boolean v8, p0, Ljava/net/InetAddress;->reached:Z

    if-nez v8, :cond_8d

    iget v8, p0, Ljava/net/InetAddress;->addrCount:I

    if-eqz v8, :cond_8d

    .line 873
    iget-object v8, p0, Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_92
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_8b} :catch_8c

    goto :goto_7c

    .line 875
    :catch_8c
    move-exception v8

    .line 878
    :cond_8d
    :try_start_8d
    iget-boolean v8, p0, Ljava/net/InetAddress;->reached:Z

    monitor-exit v7

    move v7, v8

    goto :goto_11

    .line 879
    :catchall_92
    move-exception v8

    monitor-exit v7
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_92

    throw v8

    :cond_95
    move v7, v9

    .line 882
    goto/16 :goto_11
.end method

.method private isReachableByTCP(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .registers 9
    .parameter "destination"
    .parameter "source"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 888
    .local v1, fd:Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .line 889
    .local v2, reached:Z
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socket(Ljava/io/FileDescriptor;Z)V

    .line 891
    if-eqz p2, :cond_14

    .line 892
    :try_start_e
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    const/4 v4, 0x0

    invoke-interface {v3, v1, p2, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 894
    :cond_14
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    const/4 v4, 0x7

    invoke-interface {v3, v1, p1, v4, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_21

    .line 895
    const/4 v2, 0x1

    .line 903
    :cond_1b
    :goto_1b
    sget-object v3, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v3, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->close(Ljava/io/FileDescriptor;)V

    .line 905
    return v2

    .line 896
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 897
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Connection refused"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 899
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method private static lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 6
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 479
    sget-object v4, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v4, p0}, Ljava/net/AddressCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 480
    .local v1, cachedResult:Ljava/lang/Object;
    if-eqz v1, :cond_21

    .line 481
    instance-of v4, v1, [Ljava/net/InetAddress;

    if-eqz v4, :cond_19

    .line 483
    check-cast v1, [Ljava/net/InetAddress;

    .end local v1           #cachedResult:Ljava/lang/Object;
    check-cast v1, [Ljava/net/InetAddress;

    move-object v4, v1

    .line 492
    :goto_18
    return-object v4

    .line 486
    .restart local v1       #cachedResult:Ljava/lang/Object;
    :cond_19
    new-instance v4, Ljava/net/UnknownHostException;

    check-cast v1, Ljava/lang/String;

    .end local v1           #cachedResult:Ljava/lang/Object;
    invoke-direct {v4, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 490
    .restart local v1       #cachedResult:Ljava/lang/Object;
    :cond_21
    :try_start_21
    invoke-static {p0}, Ljava/net/InetAddress;->getaddrinfo(Ljava/lang/String;)[[B

    move-result-object v4

    invoke-static {v4, p0}, Ljava/net/InetAddress;->bytesToInetAddresses([[BLjava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 491
    .local v0, addresses:[Ljava/net/InetAddress;
    sget-object v4, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v4, p0, v0}, Ljava/net/AddressCache;->put(Ljava/lang/String;[Ljava/net/InetAddress;)V
    :try_end_2e
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_2e} :catch_30

    move-object v4, v0

    .line 492
    goto :goto_18

    .line 493
    .end local v0           #addresses:[Ljava/net/InetAddress;
    :catch_30
    move-exception v4

    move-object v3, v4

    .line 494
    .local v3, e:Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, detailMessage:Ljava/lang/String;
    sget-object v4, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v4, p0, v2}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static loopbackAddresses()[Ljava/net/InetAddress;
    .registers 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    invoke-static {}, Ljava/net/InetAddress;->preferIPv6Addresses()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 592
    new-array v0, v1, [Ljava/net/InetAddress;

    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v1, v0, v2

    sget-object v1, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v1, v0, v3

    .line 594
    :goto_13
    return-object v0

    :cond_14
    new-array v0, v1, [Ljava/net/InetAddress;

    sget-object v1, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v1, v0, v2

    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v1, v0, v3

    goto :goto_13
.end method

.method private static makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    .registers 4
    .parameter "bytes"
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 281
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 282
    new-instance v0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0, p1}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    .line 284
    :goto_9
    return-object v0

    .line 283
    :cond_a
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_16

    .line 284
    new-instance v0, Ljava/net/Inet6Address;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    goto :goto_9

    .line 286
    :cond_16
    invoke-static {p0}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public static parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 6
    .parameter "numericAddress"

    .prologue
    .line 575
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 576
    :cond_8
    invoke-static {}, Ljava/net/InetAddress;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 583
    :goto_f
    return-object v2

    .line 578
    :cond_10
    invoke-static {p0}, Ljava/net/InetAddress;->ipStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 579
    .local v0, bytes:[B
    if-nez v0, :cond_2f

    .line 580
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a numeric address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    :cond_2f
    const/4 v2, 0x0

    :try_start_30
    invoke-static {v0, v2}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    :try_end_33
    .catch Ljava/net/UnknownHostException; {:try_start_30 .. :try_end_33} :catch_35

    move-result-object v2

    goto :goto_f

    .line 584
    :catch_35
    move-exception v1

    .line 586
    .local v1, ex:Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static preferIPv6Addresses()Z
    .registers 3

    .prologue
    .line 295
    const-string v0, "java.net.preferIPv6Addresses"

    .line 296
    .local v0, propertyName:Ljava/lang/String;
    new-instance v2, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v2, v0}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    .local v1, propertyValue:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1068
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1069
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v2, "address"

    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    .line 1070
    .local v0, addr:I
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 1071
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v0, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 1072
    const-string v2, "hostName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 1073
    const-string v2, "family"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/net/InetAddress;->family:I

    .line 1074
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1081
    new-instance v0, Ljava/net/Inet4Address;

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1055
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1056
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    if-nez v1, :cond_20

    .line 1057
    const-string v1, "address"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1061
    :goto_e
    const-string v1, "family"

    iget v2, p0, Ljava/net/InetAddress;->family:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1062
    const-string v1, "hostName"

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1064
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1065
    return-void

    .line 1059
    :cond_20
    const-string v1, "address"

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    goto :goto_e
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 187
    instance-of v0, p1, Ljava/net/InetAddress;

    if-nez v0, :cond_6

    .line 188
    const/4 v0, 0x0

    .line 190
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    check-cast p1, Ljava/net/InetAddress;

    .end local p1
    iget-object v1, p1, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_5
.end method

.method public getAddress()[B
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .registers 8

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, address:I
    :try_start_1
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    array-length v4, v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_19

    .line 377
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v5, 0x0

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v6}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 378
    if-nez v0, :cond_19

    .line 379
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v4}, Ljava/net/InetAddress;->byteArrayToIpString([B)Ljava/lang/String;

    move-result-object v4

    .line 395
    :goto_18
    return-object v4

    .line 382
    :cond_19
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v4}, Ljava/net/InetAddress;->getHostByAddrImpl([B)Ljava/net/InetAddress;

    move-result-object v4

    iget-object v1, v4, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_21
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_21} :catch_33

    .line 386
    .local v1, canonicalName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 389
    .local v3, security:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_31

    :try_start_27
    invoke-static {v1}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 390
    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_31} :catch_3c

    :cond_31
    move-object v4, v1

    .line 395
    goto :goto_18

    .line 383
    .end local v1           #canonicalName:Ljava/lang/String;
    .end local v3           #security:Ljava/lang/SecurityManager;
    :catch_33
    move-exception v4

    move-object v2, v4

    .line 384
    .local v2, e:Ljava/net/UnknownHostException;
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v4}, Ljava/net/InetAddress;->byteArrayToIpString([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    .line 392
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v1       #canonicalName:Ljava/lang/String;
    .restart local v3       #security:Ljava/lang/SecurityManager;
    :catch_3c
    move-exception v4

    move-object v2, v4

    .line 393
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v4}, Ljava/net/InetAddress;->byteArrayToIpString([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_18
.end method

.method public getHostAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0}, Ljava/net/InetAddress;->byteArrayToIpString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x4

    .line 335
    :try_start_1
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v3, :cond_51

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, address:I
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    array-length v3, v3

    if-ne v3, v6, :cond_1f

    .line 338
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 339
    if-nez v0, :cond_1f

    .line 340
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v3}, Ljava/net/InetAddress;->byteArrayToIpString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 361
    .end local v0           #address:I
    :goto_1e
    return-object v3

    .line 343
    .restart local v0       #address:I
    :cond_1f
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v3}, Ljava/net/InetAddress;->getHostByAddrImpl([B)Ljava/net/InetAddress;

    move-result-object v3

    iget-object v3, v3, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    .line 344
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    const-string v4, "localhost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    array-length v3, v3

    if-ne v3, v6, :cond_51

    const v3, 0x7f000001

    if-eq v0, v3, :cond_51

    .line 346
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v3}, Ljava/net/InetAddress;->byteArrayToIpString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_45
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_45} :catch_46

    goto :goto_1e

    .line 349
    .end local v0           #address:I
    :catch_46
    move-exception v3

    move-object v1, v3

    .line 350
    .local v1, e:Ljava/net/UnknownHostException;
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v3}, Ljava/net/InetAddress;->byteArrayToIpString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_1e

    .line 352
    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_51
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 355
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_65

    :try_start_57
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 356
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_65
    .catch Ljava/lang/SecurityException; {:try_start_57 .. :try_end_65} :catch_68

    .line 361
    :cond_65
    iget-object v3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_1e

    .line 358
    :catch_68
    move-exception v3

    move-object v1, v3

    .line 359
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v3}, Ljava/net/InetAddress;->byteArrayToIpString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .registers 2

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .registers 2

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public isLoopbackAddress()Z
    .registers 2

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public isMCGlobal()Z
    .registers 2

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public isMCLinkLocal()Z
    .registers 2

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public isMCNodeLocal()Z
    .registers 2

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .registers 2

    .prologue
    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public isMCSiteLocal()Z
    .registers 2

    .prologue
    .line 709
    const/4 v0, 0x0

    return v0
.end method

.method public isMulticastAddress()Z
    .registers 2

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public isReachable(I)Z
    .registers 4
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result v0

    return v0
.end method

.method public isReachable(Ljava/net/NetworkInterface;II)Z
    .registers 6
    .parameter "networkInterface"
    .parameter "ttl"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    if-ltz p2, :cond_4

    if-gez p3, :cond_c

    .line 783
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ttl < 0 || timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_c
    if-nez p1, :cond_14

    .line 786
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0, p3}, Ljava/net/InetAddress;->isReachableByTCP(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    .line 788
    :goto_13
    return v0

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetAddress;->isReachableByMultiThread(Ljava/net/NetworkInterface;II)Z

    move-result v0

    goto :goto_13
.end method

.method public isSiteLocalAddress()Z
    .registers 2

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v1, :cond_22

    const-string v1, ""

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_b
.end method
