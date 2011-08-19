.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final CHECK_CONNECT_NO_PORT:I = -0x1


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final displayName:Ljava/lang/String;

.field private final interfaceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceIndex:I

.field private final name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I)V
    .registers 10
    .parameter "name"
    .parameter "displayName"
    .parameter "addresses"
    .parameter "interfaceIndex"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    .line 44
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    .line 46
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    .line 48
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 86
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 88
    iput p4, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    .line 89
    if-eqz p3, :cond_32

    .line 90
    move-object v1, p3

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_26
    if-ge v2, v3, :cond_32

    aget-object v0, v1, v2

    .line 91
    .local v0, address:Ljava/net/InetAddress;
    iget-object v4, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 94
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v1           #arr$:[Ljava/net/InetAddress;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_32
    return-void
.end method

.method private static native getAllInterfaceAddressesImpl()[Ljava/net/InterfaceAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .registers 5
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 205
    if-nez p0, :cond_a

    .line 206
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "address == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_a
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 209
    .local v1, networkInterface:Ljava/net/NetworkInterface;
    iget-object v2, v1, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v1

    .line 213
    .end local v1           #networkInterface:Ljava/net/NetworkInterface;
    :goto_27
    return-object v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_27
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 4
    .parameter "interfaceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p0, :cond_8

    .line 181
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 183
    :cond_8
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 184
    .local v1, networkInterface:Ljava/net/NetworkInterface;
    iget-object v2, v1, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v2, v1

    .line 188
    .end local v1           #networkInterface:Ljava/net/NetworkInterface;
    :goto_25
    return-object v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private static native getHardwareAddressImpl(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native getMTUImpl(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkInterfacesImpl()[Ljava/net/NetworkInterface;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    .local v5, networkInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/net/NetworkInterface;>;"
    invoke-static {}, Ljava/net/NetworkInterface;->getAllInterfaceAddressesImpl()[Ljava/net/InterfaceAddress;

    move-result-object v0

    .local v0, arr$:[Ljava/net/InterfaceAddress;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v3, :cond_42

    aget-object v2, v0, v1

    .line 53
    .local v2, ia:Ljava/net/InterfaceAddress;
    if-eqz v2, :cond_32

    .line 54
    iget-object v4, v2, Ljava/net/InterfaceAddress;->name:Ljava/lang/String;

    .line 55
    .local v4, name:Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 56
    .local v6, ni:Ljava/net/NetworkInterface;
    if-nez v6, :cond_35

    .line 57
    new-instance v6, Ljava/net/NetworkInterface;

    .end local v6           #ni:Ljava/net/NetworkInterface;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/net/InetAddress;

    const/4 v8, 0x0

    iget-object v9, v2, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    aput-object v9, v7, v8

    iget v8, v2, Ljava/net/InterfaceAddress;->index:I

    invoke-direct {v6, v4, v4, v7, v8}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I)V

    .line 58
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    iget-object v7, v6, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #ni:Ljava/net/NetworkInterface;
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 61
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #ni:Ljava/net/NetworkInterface;
    :cond_35
    iget-object v7, v6, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    iget-object v8, v2, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v7, v6, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 66
    .end local v2           #ia:Ljava/net/InterfaceAddress;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #ni:Ljava/net/NetworkInterface;
    :cond_42
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Ljava/net/NetworkInterface;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #arr$:[Ljava/net/InterfaceAddress;
    check-cast v0, [Ljava/net/NetworkInterface;

    return-object v0
.end method

.method private static getNetworkInterfacesList()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x1

    .line 231
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesImpl()[Ljava/net/NetworkInterface;

    move-result-object v7

    .line 233
    .local v7, interfaces:[Ljava/net/NetworkInterface;
    move-object v2, v7

    .local v2, arr$:[Ljava/net/NetworkInterface;
    array-length v8, v2

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .local v6, i$:I
    :goto_9
    if-ge v6, v8, :cond_49

    aget-object v9, v2, v6

    .line 236
    .local v9, netif:Ljava/net/NetworkInterface;
    iget-object v12, v9, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6           #i$:I
    .local v5, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 237
    .local v1, addr:Ljava/net/InetAddress;
    iget-object v12, v1, Ljava/net/InetAddress;->ipaddress:[B

    array-length v12, v12

    const/16 v13, 0x10

    if-ne v12, v13, :cond_13

    .line 238
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v12

    if-nez v12, :cond_32

    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 239
    :cond_32
    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    move-object v12, v0

    iput-object v9, v12, Ljava/net/Inet6Address;->scopedIf:Ljava/net/NetworkInterface;

    .line 240
    move-object v0, v1

    check-cast v0, Ljava/net/Inet6Address;

    move-object v12, v0

    iget-object v13, v9, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iput-object v13, v12, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    .line 241
    check-cast v1, Ljava/net/Inet6Address;

    .end local v1           #addr:Ljava/net/InetAddress;
    iput-boolean v15, v1, Ljava/net/Inet6Address;->scope_ifname_set:Z

    goto :goto_13

    .line 233
    :cond_45
    add-int/lit8 v5, v6, 0x1

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_9

    .line 247
    .end local v9           #netif:Ljava/net/NetworkInterface;
    :cond_49
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v11, result:Ljava/util/List;,"Ljava/util/List<Ljava/net/NetworkInterface;>;"
    array-length v12, v7

    new-array v10, v12, [Z

    .line 249
    .local v10, peeked:[Z
    const/4 v3, 0x0

    .local v3, counter:I
    :goto_52
    array-length v12, v7

    if-ge v3, v12, :cond_ad

    .line 251
    aget-boolean v12, v10, v3

    if-eqz v12, :cond_5c

    .line 249
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 254
    :cond_5c
    move v4, v3

    .line 256
    .local v4, counter2:I
    :goto_5d
    array-length v12, v7

    if-ge v4, v12, :cond_a5

    .line 257
    aget-boolean v12, v10, v4

    if-eqz v12, :cond_67

    .line 256
    :cond_64
    :goto_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 260
    :cond_67
    aget-object v12, v7, v4

    iget-object v12, v12, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v7, v3

    iget-object v14, v14, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 262
    aput-boolean v15, v10, v4

    .line 263
    aget-object v12, v7, v3

    iget-object v12, v12, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    aget-object v13, v7, v4

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    aget-object v12, v7, v4

    aget-object v13, v7, v3

    iput-object v13, v12, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    .line 265
    aget-object v12, v7, v3

    iget-object v12, v12, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    aget-object v13, v7, v4

    iget-object v13, v13, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_64

    .line 269
    :cond_a5
    aget-object v12, v7, v3

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    aput-boolean v15, v10, v3

    goto :goto_59

    .line 272
    .end local v4           #counter2:I
    :cond_ad
    return-object v11
.end method

.method private static native isLoopbackImpl(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native isPointToPointImpl(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native isUpImpl(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native supportsMulticastImpl(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 289
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 297
    :goto_5
    return v2

    .line 292
    :cond_6
    instance-of v2, p1, Ljava/net/NetworkInterface;

    if-nez v2, :cond_c

    move v2, v4

    .line 293
    goto :goto_5

    .line 295
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/net/NetworkInterface;

    move-object v1, v0

    .line 297
    .local v1, rhs:Ljava/net/NetworkInterface;
    iget v2, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    iget v3, v1, Ljava/net/NetworkInterface;->interfaceIndex:I

    if-ne v2, v3, :cond_36

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    iget-object v3, v1, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v5

    goto :goto_5

    :cond_36
    move v2, v4

    goto :goto_5
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    goto :goto_a
.end method

.method getFirstAddress()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_14

    .line 115
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/InetAddress;

    move-object v0, p0

    .line 117
    :goto_13
    return-object v0

    .restart local p0
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getHardwareAddress()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 468
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 470
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getHardwareAddressImpl(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_a
.end method

.method getIndex()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 136
    .local v4, sm:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_e

    iget-object v5, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 137
    :cond_e
    iget-object v5, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v5

    .line 149
    :goto_14
    return-object v5

    .line 140
    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v5, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 143
    .local v0, address:Ljava/net/InetAddress;
    :try_start_32
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_3a} :catch_3e

    .line 147
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 144
    :catch_3e
    move-exception v5

    move-object v1, v5

    .line 145
    .local v1, e:Ljava/lang/SecurityException;
    goto :goto_26

    .line 149
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_41
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v5

    goto :goto_14
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 357
    .local v4, sm:Ljava/lang/SecurityManager;
    if-nez v4, :cond_d

    .line 358
    iget-object v5, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 370
    :goto_c
    return-object v5

    .line 361
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    iget-object v5, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 364
    .local v2, ia:Ljava/net/InterfaceAddress;
    :try_start_2a
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_36} :catch_3a

    .line 368
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 365
    :catch_3a
    move-exception v5

    move-object v0, v5

    .line 366
    .local v0, e:Ljava/lang/SecurityException;
    goto :goto_1e

    .end local v0           #e:Ljava/lang/SecurityException;
    .end local v2           #ia:Ljava/net/InterfaceAddress;
    :cond_3d
    move-object v5, v3

    .line 370
    goto :goto_c
.end method

.method public getMTU()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 483
    const/4 v0, 0x0

    .line 485
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getMTUImpl(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLoopback()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 421
    const/4 v0, 0x0

    .line 423
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->isLoopbackImpl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public isPointToPoint()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 437
    const/4 v0, 0x0

    .line 439
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->isPointToPointImpl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public isUp()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->isUpImpl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public isVirtual()Z
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public supportsMulticast()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->supportsMulticastImpl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 321
    .local v1, string:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v3, "]["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v3, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v3, "]["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget v3, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 334
    .local v2, theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v2, :cond_4e

    .line 335
    :goto_30
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 336
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 337
    .local v0, nextAddress:Ljava/net/InetAddress;
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 342
    .end local v0           #nextAddress:Ljava/net/InetAddress;
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
