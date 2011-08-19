.class public Ljava/net/InterfaceAddress;
.super Ljava/lang/Object;
.source "InterfaceAddress.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final address:Ljava/net/InetAddress;

.field private final broadcastAddress:Ljava/net/InetAddress;

.field final index:I

.field final name:Ljava/lang/String;

.field private final prefixLength:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Ljava/net/InterfaceAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/net/InterfaceAddress;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(ILjava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 7
    .parameter "index"
    .parameter "name"
    .parameter "address"
    .parameter "mask"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-boolean v0, Ljava/net/InterfaceAddress;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    instance-of v0, p3, Ljava/net/Inet4Address;

    instance-of v1, p4, Ljava/net/Inet4Address;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_13
    iput p1, p0, Ljava/net/InterfaceAddress;->index:I

    .line 54
    iput-object p2, p0, Ljava/net/InterfaceAddress;->name:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 56
    invoke-static {p3, p4}, Ljava/net/InterfaceAddress;->makeBroadcastAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    .line 57
    invoke-static {p4}, Ljava/net/InterfaceAddress;->countPrefixLength(Ljava/net/InetAddress;)S

    move-result v0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    .line 58
    return-void
.end method

.method private static countPrefixLength(Ljava/net/InetAddress;)S
    .registers 8
    .parameter "mask"

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, count:S
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5
    if-ge v4, v5, :cond_1c

    aget-byte v1, v0, v4

    .line 78
    .local v1, b:B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    const/16 v6, 0x8

    if-ge v3, v6, :cond_19

    .line 79
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_16

    .line 80
    add-int/lit8 v6, v2, 0x1

    int-to-short v2, v6

    .line 78
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 77
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 84
    .end local v1           #b:B
    .end local v3           #i:I
    :cond_1c
    return v2
.end method

.method private static makeBroadcastAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 9
    .parameter "address"
    .parameter "mask"

    .prologue
    const/4 v6, 0x0

    .line 61
    instance-of v4, p0, Ljava/net/Inet4Address;

    if-nez v4, :cond_7

    move-object v4, v6

    .line 72
    :goto_6
    return-object v4

    .line 64
    :cond_7
    const/4 v4, 0x4

    new-array v1, v4, [B

    .line 65
    .local v1, broadcast:[B
    iget-object v3, p1, Ljava/net/InetAddress;->ipaddress:[B

    .line 66
    .local v3, maskBytes:[B
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    .line 67
    .local v0, addrBytes:[B
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    if-eqz v4, :cond_24

    .line 68
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    array-length v4, v1

    if-ge v2, v4, :cond_24

    .line 69
    aget-byte v4, v0, v2

    aget-byte v5, v3, v2

    xor-int/lit8 v5, v5, -0x1

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 72
    .end local v2           #i:I
    :cond_24
    new-instance v4, Ljava/net/Inet4Address;

    invoke-direct {v4, v1, v6}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 103
    :goto_5
    return v2

    .line 99
    :cond_6
    instance-of v2, p1, Ljava/net/InterfaceAddress;

    if-nez v2, :cond_c

    move v2, v4

    .line 100
    goto :goto_5

    .line 102
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/net/InterfaceAddress;

    move-object v1, v0

    .line 103
    .local v1, rhs:Ljava/net/InterfaceAddress;
    iget-object v2, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v2, :cond_28

    iget-object v2, v1, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v2, :cond_32

    :cond_18
    iget-short v2, v1, Ljava/net/InterfaceAddress;->prefixLength:S

    iget-short v3, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    if-ne v2, v3, :cond_32

    iget-object v2, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_34

    iget-object v2, v1, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_32

    :goto_26
    move v2, v5

    goto :goto_5

    :cond_28
    iget-object v2, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    iget-object v3, v1, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_32
    move v2, v4

    goto :goto_5

    :cond_34
    iget-object v2, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    iget-object v3, v1, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_26
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getBroadcast()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getNetworkPrefixLength()S
    .registers 2

    .prologue
    .line 147
    iget-short v0, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v1, :cond_10

    move v0, v2

    .line 111
    .local v0, hashCode:I
    :goto_6
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_19

    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    .line 112
    iget-short v1, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    add-int/2addr v0, v1

    .line 113
    return v0

    .line 110
    .end local v0           #hashCode:I
    :cond_10
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    neg-int v1, v1

    move v0, v1

    goto :goto_6

    .line 111
    .restart local v0       #hashCode:I
    :cond_19
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
