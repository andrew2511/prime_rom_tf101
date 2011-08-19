.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field private static final AF_INET:I = 0x2

.field public static final ALL:Ljava/net/InetAddress; = null

.field public static final ANY:Ljava/net/InetAddress; = null

.field public static final LOOPBACK:Ljava/net/InetAddress; = null

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 36
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_2a

    invoke-direct {v0, v1, v3}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 42
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_30

    invoke-direct {v0, v1, v3}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .line 49
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_36

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    return-void

    .line 36
    nop

    :array_2a
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 42
    :array_30
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data

    .line 49
    :array_36
    .array-data 0x1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>([BLjava/lang/String;)V
    .registers 4
    .parameter "address"
    .parameter "name"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Ljava/net/Inet4Address;->family:I

    .line 54
    iput-object p1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    .line 55
    iput-object p2, p0, Ljava/net/Inet4Address;->hostName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Ljava/net/Inet4Address;

    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    iget-object v2, p0, Ljava/net/Inet4Address;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isAnyLocalAddress()Z
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 80
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_e

    .line 81
    const/4 v1, 0x0

    .line 84
    :goto_d
    return v1

    .line 79
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_11
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public isLinkLocalAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_18

    move v0, v3

    :goto_17
    return v0

    :cond_18
    move v0, v2

    goto :goto_17
.end method

.method public isLoopbackAddress()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v2

    goto :goto_c
.end method

.method public isMCGlobal()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    .line 171
    :goto_8
    return v1

    .line 151
    :cond_9
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 158
    .local v0, address:I
    ushr-int/lit8 v1, v0, 0x8

    const v2, 0xe00001

    if-ge v1, v2, :cond_1a

    move v1, v3

    .line 159
    goto :goto_8

    .line 167
    :cond_1a
    ushr-int/lit8 v1, v0, 0x18

    const/16 v2, 0xee

    if-le v1, v2, :cond_22

    move v1, v3

    .line 168
    goto :goto_8

    .line 171
    :cond_22
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public isMCLinkLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 197
    .local v0, address:I
    ushr-int/lit8 v1, v0, 0x8

    const/high16 v2, 0xe0

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    move v1, v3

    goto :goto_10
.end method

.method public isMCNodeLocal()Z
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v2, p0, Ljava/net/Inet4Address;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 226
    .local v0, address:I
    ushr-int/lit8 v1, v0, 0x10

    .line 227
    .local v1, prefix:I
    const v2, 0xefc0

    if-lt v1, v2, :cond_17

    const v2, 0xefc3

    if-gt v1, v2, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    move v2, v4

    goto :goto_16
.end method

.method public isMCSiteLocal()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v1, p0, Ljava/net/Inet4Address;->ipaddress:[B

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 211
    .local v0, address:I
    ushr-int/lit8 v1, v0, 0x10

    const v2, 0xefff

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    move v1, v3

    goto :goto_11
.end method

.method public isMulticastAddress()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v2

    goto :goto_c
.end method

.method public isSiteLocalAddress()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xac

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xf

    if-le v0, v1, :cond_2a

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-lt v0, v1, :cond_3e

    :cond_2a
    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Ljava/net/Inet4Address;->ipaddress:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_40

    :cond_3e
    move v0, v3

    :goto_3f
    return v0

    :cond_40
    move v0, v2

    goto :goto_3f
.end method
