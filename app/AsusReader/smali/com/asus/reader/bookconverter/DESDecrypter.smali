.class public Lcom/asus/reader/bookconverter/DESDecrypter;
.super Ljava/lang/Object;
.source "DESDecrypter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .parameter "srcPath"
    .parameter "destPath"
    .parameter "secretKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lcom/asus/reader/bookconverter/DESDecrypter;->decryptStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 42
    return-void
.end method

.method public static decryptStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 6
    .parameter "input"
    .parameter "output"
    .parameter "secretKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    const-string v4, "DES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 23
    .local v1, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-static {p2}, Lcom/asus/reader/bookconverter/DESDecrypter;->getSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 24
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 25
    .local v2, cis:Ljavax/crypto/CipherInputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 26
    .local v0, b:[B
    const/4 v3, 0x0

    .line 27
    .local v3, count:I
    :goto_0
    invoke-virtual {v2, v0}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 28
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V

    .line 31
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 32
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 34
    return-void
.end method

.method private static getSecretKey([B)Ljavax/crypto/SecretKey;
    .locals 3
    .parameter "rawSecretKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 46
    .local v0, desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 47
    .local v1, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2
.end method
