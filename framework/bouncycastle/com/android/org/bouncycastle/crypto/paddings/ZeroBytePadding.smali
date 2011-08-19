.class public Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source "ZeroBytePadding.java"

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

    sub-int v0, v1, p2

    .line 44
    .local v0, added:I
    :goto_3
    array-length v1, p1

    if-ge p2, v1, :cond_c

    .line 46
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 47
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 50
    :cond_c
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const-string v0, "ZeroByte"

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
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 59
    array-length v0, p1

    .line 61
    .local v0, count:I
    :goto_1
    if-lez v0, :cond_a

    .line 63
    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget-byte v1, p1, v1

    if-eqz v1, :cond_d

    .line 71
    :cond_a
    array-length v1, p1

    sub-int/2addr v1, v0

    return v1

    .line 68
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
