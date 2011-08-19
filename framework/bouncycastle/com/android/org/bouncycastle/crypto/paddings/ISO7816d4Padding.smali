.class public Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 5
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 43
    array-length v1, p1

    sub-int v0, v1, p2

    .line 45
    .local v0, added:I
    const/16 v1, -0x80

    aput-byte v1, p1, p2

    .line 46
    add-int/lit8 p2, p2, 0x1

    .line 48
    :goto_9
    array-length v1, p1

    if-ge p2, v1, :cond_12

    .line 50
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 51
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 54
    :cond_12
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, "ISO7816-4"

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
    .line 23
    return-void
.end method

.method public padCount([B)I
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 63
    array-length v1, p1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 65
    .local v0, count:I
    :goto_4
    if-lez v0, :cond_d

    aget-byte v1, p1, v0

    if-nez v1, :cond_d

    .line 67
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 70
    :cond_d
    aget-byte v1, p1, v0

    const/16 v2, -0x80

    if-eq v1, v2, :cond_1b

    .line 72
    new-instance v1, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1b
    array-length v1, p1

    sub-int/2addr v1, v0

    return v1
.end method
