.class Lcom/ecareme/utils/crypto/AESCipher$AESKey;
.super Ljava/lang/Object;
.source "AESCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/crypto/AESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AESKey"
.end annotation


# instance fields
.field key:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .parameter "key"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ecareme/utils/crypto/AESCipher$AESKey;->key:[B

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 33
    if-ne p0, p1, :cond_0

    move v2, v4

    .line 45
    :goto_0
    return v2

    .line 37
    :cond_0
    instance-of v2, p1, Lcom/ecareme/utils/crypto/AESCipher$AESKey;

    if-eqz v2, :cond_1

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/ecareme/utils/crypto/AESCipher$AESKey;

    move-object v1, v0

    .line 40
    .local v1, other:Lcom/ecareme/utils/crypto/AESCipher$AESKey;
    iget-object v2, p0, Lcom/ecareme/utils/crypto/AESCipher$AESKey;->key:[B

    iget-object v3, v1, Lcom/ecareme/utils/crypto/AESCipher$AESKey;->key:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 42
    goto :goto_0

    .line 45
    .end local v1           #other:Lcom/ecareme/utils/crypto/AESCipher$AESKey;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ecareme/utils/crypto/AESCipher$AESKey;->key:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
