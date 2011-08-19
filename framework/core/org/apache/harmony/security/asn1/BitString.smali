.class public final Lorg/apache/harmony/security/asn1/BitString;
.super Ljava/lang/Object;
.source "BitString.java"


# static fields
.field private static final RESET_MASK:[B

.field private static final SET_MASK:[B


# instance fields
.field public final bytes:[B

.field public final unusedBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x8

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    .line 35
    new-array v0, v1, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/apache/harmony/security/asn1/BitString;->RESET_MASK:[B

    return-void

    .line 33
    nop

    :array_12
    .array-data 0x1
        0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data

    .line 35
    :array_1a
    .array-data 0x1
        0x7ft
        0xbft
        0xdft
        0xeft
        0xf7t
        0xfbt
        0xfdt
        0xfet
    .end array-data
.end method

.method public constructor <init>([BI)V
    .registers 5
    .parameter "bytes"
    .parameter "unusedBits"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-ltz p2, :cond_8

    const/4 v0, 0x7

    if-le p2, v0, :cond_10

    .line 61
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of unused bits MUST be in range 0-7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_10
    array-length v0, p1

    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For empty bit string unused bits MUST be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1d
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    .line 69
    iput p2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    .line 70
    return-void
.end method

.method public constructor <init>([Z)V
    .registers 5
    .parameter "values"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    .line 79
    array-length v2, p1

    div-int/lit8 v1, v2, 0x8

    .line 80
    .local v1, size:I
    iget v2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    if-eqz v2, :cond_11

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 83
    :cond_11
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v2, p1

    if-ge v0, v2, :cond_21

    .line 85
    aget-boolean v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/harmony/security/asn1/BitString;->setBit(IZ)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 87
    :cond_21
    return-void
.end method


# virtual methods
.method public getBit(I)Z
    .registers 6
    .parameter "bit"

    .prologue
    .line 90
    rem-int/lit8 v1, p1, 0x8

    .line 91
    .local v1, offset:I
    div-int/lit8 v0, p1, 0x8

    .line 92
    .local v0, index:I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v2, v2, v0

    sget-object v3, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    aget-byte v3, v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public setBit(IZ)V
    .registers 8
    .parameter "bit"
    .parameter "value"

    .prologue
    .line 96
    rem-int/lit8 v1, p1, 0x8

    .line 97
    .local v1, offset:I
    div-int/lit8 v0, p1, 0x8

    .line 98
    .local v0, index:I
    if-eqz p2, :cond_13

    .line 99
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v3, v2, v0

    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    aget-byte v4, v4, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 103
    :goto_12
    return-void

    .line 101
    :cond_13
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v3, v2, v0

    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->RESET_MASK:[B

    aget-byte v4, v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_12
.end method

.method public toBooleanArray()[Z
    .registers 5

    .prologue
    .line 106
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    sub-int/2addr v2, v3

    new-array v1, v2, [Z

    .line 107
    .local v1, result:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 108
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/BitString;->getBit(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 110
    :cond_17
    return-object v1
.end method
