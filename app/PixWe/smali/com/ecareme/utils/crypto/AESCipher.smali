.class public Lcom/ecareme/utils/crypto/AESCipher;
.super Ljava/lang/Object;
.source "AESCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/utils/crypto/AESCipher$AESKey;
    }
.end annotation


# static fields
.field private static _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ecareme/utils/crypto/AESCipher$AESKey;",
            "Lcom/ecareme/utils/crypto/AESCipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aes:Lcom/ecareme/utils/crypto/XAES;

.field private key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ecareme/utils/crypto/AESCipher;->_map:Ljava/util/Map;

    .line 15
    return-void
.end method

.method private constructor <init>([B)V
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/ecareme/utils/crypto/AESCipher;->key:[B

    .line 69
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/ecareme/utils/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid key length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ecareme/utils/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    new-instance v0, Lcom/ecareme/utils/crypto/XAES;

    sget-object v1, Lcom/ecareme/utils/crypto/XAES$BlockSize;->BlockSize128:Lcom/ecareme/utils/crypto/XAES$BlockSize;

    sget-object v2, Lcom/ecareme/utils/crypto/XAES$KeySize;->KeySize128:Lcom/ecareme/utils/crypto/XAES$KeySize;

    invoke-direct {v0, p1, v1, v2}, Lcom/ecareme/utils/crypto/XAES;-><init>([BLcom/ecareme/utils/crypto/XAES$BlockSize;Lcom/ecareme/utils/crypto/XAES$KeySize;)V

    iput-object v0, p0, Lcom/ecareme/utils/crypto/AESCipher;->aes:Lcom/ecareme/utils/crypto/XAES;

    .line 74
    return-void
.end method

.method public static getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/ecareme/utils/crypto/AESCipher$AESKey;

    invoke-direct {v0, p0}, Lcom/ecareme/utils/crypto/AESCipher$AESKey;-><init>([B)V

    .line 54
    .local v0, aeskey:Lcom/ecareme/utils/crypto/AESCipher$AESKey;
    sget-object v2, Lcom/ecareme/utils/crypto/AESCipher;->_map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/utils/crypto/AESCipher;

    .line 55
    .local v1, cipher:Lcom/ecareme/utils/crypto/AESCipher;
    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/ecareme/utils/crypto/AESCipher;

    .end local v1           #cipher:Lcom/ecareme/utils/crypto/AESCipher;
    invoke-direct {v1, p0}, Lcom/ecareme/utils/crypto/AESCipher;-><init>([B)V

    .line 58
    .restart local v1       #cipher:Lcom/ecareme/utils/crypto/AESCipher;
    sget-object v2, Lcom/ecareme/utils/crypto/AESCipher;->_map:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-object v1
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ecareme/utils/crypto/AESCipher;->aes:Lcom/ecareme/utils/crypto/XAES;

    invoke-virtual {v0, p1}, Lcom/ecareme/utils/crypto/XAES;->DecryptData([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 1
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ecareme/utils/crypto/AESCipher;->aes:Lcom/ecareme/utils/crypto/XAES;

    invoke-virtual {v0, p1}, Lcom/ecareme/utils/crypto/XAES;->EncryptData([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ecareme/utils/crypto/AESCipher;->key:[B

    return-object v0
.end method
