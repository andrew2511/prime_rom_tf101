.class public Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 9
    .parameter "in"
    .parameter "inOff"

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    array-length v2, p1

    sub-int v1, v2, p2

    .line 55
    .local v1, count:I
    if-lez p2, :cond_1d

    .line 57
    sub-int v2, p2, v4

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1b

    move v2, v5

    :goto_12
    int-to-byte v0, v2

    .line 64
    .local v0, code:B
    :goto_13
    array-length v2, p1

    if-ge p2, v2, :cond_2a

    .line 66
    aput-byte v0, p1, p2

    .line 67
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    .end local v0           #code:B
    :cond_1b
    move v2, v3

    .line 57
    goto :goto_12

    .line 61
    :cond_1d
    array-length v2, p1

    sub-int/2addr v2, v4

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_28

    move v2, v5

    :goto_26
    int-to-byte v0, v2

    .restart local v0       #code:B
    goto :goto_13

    .end local v0           #code:B
    :cond_28
    move v2, v3

    goto :goto_26

    .line 70
    .restart local v0       #code:B
    :cond_2a
    return v1
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string v0, "TBC"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 2
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 26
    return-void
.end method

.method public padCount([B)I
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 79
    array-length v2, p1

    sub-int/2addr v2, v3

    aget-byte v0, p1, v2

    .line 81
    .local v0, code:B
    array-length v2, p1

    sub-int v1, v2, v3

    .line 82
    .local v1, index:I
    :goto_8
    if-lez v1, :cond_13

    sub-int v2, v1, v3

    aget-byte v2, p1, v2

    if-ne v2, v0, :cond_13

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 87
    :cond_13
    array-length v2, p1

    sub-int/2addr v2, v1

    return v2
.end method
