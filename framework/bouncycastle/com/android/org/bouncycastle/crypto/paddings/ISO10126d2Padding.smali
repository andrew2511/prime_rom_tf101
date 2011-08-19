.class public Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;
.super Ljava/lang/Object;
.source "ISO10126d2Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field random:Ljava/security/SecureRandom;


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
    .registers 6
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 51
    array-length v1, p1

    sub-int/2addr v1, p2

    int-to-byte v0, v1

    .line 53
    .local v0, code:B
    :goto_3
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_14

    .line 55
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 56
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 59
    :cond_14
    aput-byte v0, p1, p2

    .line 61
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const-string v0, "ISO10126-2"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 23
    if-eqz p1, :cond_5

    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    .line 31
    :goto_4
    return-void

    .line 29
    :cond_5
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    goto :goto_4
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
    .line 70
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/lit16 v0, v1, 0xff

    .line 72
    .local v0, count:I
    array-length v1, p1

    if-le v0, v1, :cond_12

    .line 74
    new-instance v1, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_12
    return v0
.end method
