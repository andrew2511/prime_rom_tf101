.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# static fields
.field private static final AF_INET6:I = 0xa

.field static final ANY:Ljava/net/InetAddress; = null

.field static final LOOPBACK:Ljava/net/InetAddress; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field ifname:Ljava/lang/String;

.field scope_id:I

.field scope_id_set:Z

.field scope_ifname_set:Z

.field transient scopedIf:Ljava/net/NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 37
    new-instance v0, Ljava/net/Inet6Address;

    new-array v1, v3, [B

    fill-array-data v1, :array_64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    .line 39
    new-instance v0, Ljava/net/Inet6Address;

    new-array v1, v3, [B

    fill-array-data v1, :array_70

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2, v4}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 378
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "ipaddress"

    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_id"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_id_set"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_ifname_set"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "ifname"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/Inet6Address;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    .line 37
    nop

    :array_64
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 39
    :array_70
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>([BLjava/lang/String;I)V
    .registers 5
    .parameter "address"
    .parameter "name"
    .parameter "scope_id"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Ljava/net/Inet6Address;->family:I

    .line 69
    iput-object p2, p0, Ljava/net/Inet6Address;->hostName:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 71
    iput p3, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 72
    if-eqz p3, :cond_13

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 73
    return-void

    .line 72
    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private compareLocalType(Ljava/net/Inet6Address;)Z
    .registers 4
    .parameter "ia"

    .prologue
    const/4 v1, 0x1

    .line 165
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 174
    :goto_e
    return v0

    .line 168
    :cond_f
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 169
    goto :goto_e

    .line 171
    :cond_1d
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    .line 172
    goto :goto_e

    .line 174
    :cond_2b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .registers 6
    .parameter "host"
    .parameter "addr"
    .parameter "scope_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_7

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_24

    .line 92
    :cond_7
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an IPv6 address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_24
    if-gez p2, :cond_27

    .line 95
    const/4 p2, 0x0

    .line 98
    :cond_27
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p1, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .registers 12
    .parameter "host"
    .parameter "addr"
    .parameter "nif"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 122
    const/4 v6, 0x0

    invoke-static {p0, p1, v6}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v1

    .line 125
    .local v1, address:Ljava/net/Inet6Address;
    if-nez p2, :cond_9

    .line 152
    :cond_8
    return-object v1

    .line 131
    :cond_9
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 132
    .local v2, addressList:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 133
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 134
    .local v3, ia:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    array-length v6, v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_d

    .line 135
    move-object v0, v3

    check-cast v0, Ljava/net/Inet6Address;

    move-object v5, v0

    .line 136
    .local v5, v6ia:Ljava/net/Inet6Address;
    invoke-direct {v5, v1}, Ljava/net/Inet6Address;->compareLocalType(Ljava/net/Inet6Address;)Z

    move-result v4

    .line 137
    .local v4, isSameType:Z
    if-eqz v4, :cond_d

    .line 138
    iput-boolean v8, v1, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 139
    iget v6, v5, Ljava/net/Inet6Address;->scope_id:I

    iput v6, v1, Ljava/net/Inet6Address;->scope_id:I

    .line 140
    iput-boolean v8, v1, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 141
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 142
    iput-object p2, v1, Ljava/net/Inet6Address;->scopedIf:Ljava/net/NetworkInterface;

    .line 149
    .end local v3           #ia:Ljava/net/InetAddress;
    .end local v4           #isSameType:Z
    .end local v5           #v6ia:Ljava/net/Inet6Address;
    :cond_3c
    iget-boolean v6, v1, Ljava/net/Inet6Address;->scope_id_set:Z

    if-nez v6, :cond_8

    .line 150
    new-instance v6, Ljava/net/UnknownHostException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scope id not found for address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 403
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "ipaddress"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    .line 404
    const-string v1, "scope_id"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 405
    const-string v1, "scope_id_set"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    .line 406
    const-string v1, "ifname"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 407
    const-string v1, "scope_ifname_set"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    .line 408
    iget-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 409
    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Ljava/net/Inet6Address;->scopedIf:Ljava/net/NetworkInterface;

    .line 411
    :cond_44
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 387
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    if-nez v1, :cond_2e

    .line 388
    const-string v1, "ipaddress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    :goto_e
    const-string v1, "scope_id"

    iget v2, p0, Ljava/net/Inet6Address;->scope_id:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 394
    const-string v1, "scope_id_set"

    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 395
    const-string v1, "scope_ifname_set"

    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 396
    const-string v1, "ifname"

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 398
    return-void

    .line 390
    :cond_2e
    const-string v1, "ipaddress"

    iget-object v2, p0, Ljava/net/Inet6Address;->ipaddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e
.end method


# virtual methods
.method public getScopeId()I
    .registers 2

    .prologue
    .line 342
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    if-eqz v0, :cond_7

    .line 343
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    .line 345
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    if-eqz v0, :cond_7

    .line 356
    iget-object v0, p0, Ljava/net/Inet6Address;->scopedIf:Ljava/net/NetworkInterface;

    .line 358
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isAnyLocalAddress()Z
    .registers 3

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 200
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_e

    .line 201
    const/4 v1, 0x0

    .line 204
    :goto_d
    return v1

    .line 199
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_11
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public isIPv4CompatibleAddress()Z
    .registers 3

    .prologue
    .line 370
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_10

    .line 371
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_d

    .line 372
    const/4 v1, 0x0

    .line 375
    :goto_c
    return v1

    .line 370
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public isLinkLocalAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    move v0, v3

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method public isLoopbackAddress()Z
    .registers 6

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v4

    if-eq v1, v3, :cond_c

    move v1, v2

    .line 229
    :goto_b
    return v1

    .line 223
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v4, :cond_1a

    .line 224
    iget-object v1, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_17

    move v1, v2

    .line 225
    goto :goto_b

    .line 223
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    move v1, v3

    .line 229
    goto :goto_b
.end method

.method public isMCGlobal()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0xe

    if-ne v0, v1, :cond_15

    move v0, v3

    :goto_14
    return v0

    :cond_15
    move v0, v2

    goto :goto_14
.end method

.method public isMCLinkLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    move v0, v3

    :goto_13
    return v0

    :cond_14
    move v0, v2

    goto :goto_13
.end method

.method public isMCNodeLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 286
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_13

    move v0, v2

    :goto_12
    return v0

    :cond_13
    move v0, v3

    goto :goto_12
.end method

.method public isMCOrgLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    if-ne v0, v1, :cond_15

    move v0, v3

    :goto_14
    return v0

    :cond_15
    move v0, v2

    goto :goto_14
.end method

.method public isMCSiteLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    move v0, v3

    :goto_13
    return v0

    :cond_14
    move v0, v2

    goto :goto_13
.end method

.method public isMulticastAddress()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    move v0, v2

    goto :goto_9
.end method

.method public isSiteLocalAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ljava/net/Inet6Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    move v0, v3

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_21
    return-object v0

    .line 424
    :cond_22
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    if-eqz v0, :cond_44

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/Inet6Address;->scope_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 427
    :cond_44
    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method
