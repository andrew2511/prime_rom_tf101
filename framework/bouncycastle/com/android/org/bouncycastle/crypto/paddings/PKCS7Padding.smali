.class public Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;
.source "PKCS7Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 5
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 42
    array-length v1, p1

    sub-int/2addr v1, p2

    int-to-byte v0, v1

    .line 44
    .local v0, code:B
    :goto_3
    array-length v1, p1

    if-ge p2, v1, :cond_b

    .line 46
    aput-byte v0, p1, p2

    .line 47
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 50
    :cond_b
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const-string v0, "PKCS7"

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
    .line 22
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
    .line 59
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 61
    .local v0, count:I
    array-length v2, p1

    if-gt v0, v2, :cond_c

    if-nez v0, :cond_14

    .line 63
    :cond_c
    new-instance v2, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "pad block corrupted"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_14
    const/4 v1, 0x1

    .local v1, i:I
    :goto_15
    if-gt v1, v0, :cond_28

    .line 68
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    if-eq v2, v0, :cond_25

    .line 70
    new-instance v2, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "pad block corrupted"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 74
    :cond_28
    return v0
.end method
