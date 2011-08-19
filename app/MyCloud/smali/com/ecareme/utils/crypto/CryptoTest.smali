.class public Lcom/ecareme/utils/crypto/CryptoTest;
.super Ljunit/framework/TestCase;
.source "CryptoTest.java"


# static fields
.field static allbytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/ecareme/utils/crypto/CryptoTest;->allbytes:[B

    .line 22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/ecareme/utils/crypto/CryptoTest;->allbytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 16
    return-void

    .line 24
    :cond_0
    sget-object v1, Lcom/ecareme/utils/crypto/CryptoTest;->allbytes:[B

    add-int/lit8 v2, v0, -0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B
    .locals 2
    .parameter "cipher"
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1, p2}, Lcom/ecareme/utils/crypto/AESCipher;->encrypt([B)[B

    move-result-object v0

    .line 88
    .local v0, encbytes:[B
    invoke-virtual {p1, v0}, Lcom/ecareme/utils/crypto/AESCipher;->decrypt([B)[B

    move-result-object v1

    return-object v1
.end method

.method private doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B
    .locals 2
    .parameter "cipher"
    .parameter "clear"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Lcom/ecareme/utils/crypto/XAES;->EncryptData([B)[B

    move-result-object v0

    .line 82
    .local v0, encbytes:[B
    invoke-virtual {p1, v0}, Lcom/ecareme/utils/crypto/XAES;->DecryptData([B)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public testAESCipher()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v4, "01234567890123456789012345678912"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 52
    .local v3, key:[B
    invoke-static {v3}, Lcom/ecareme/utils/crypto/AESCipher;->getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;

    move-result-object v0

    .line 53
    .local v0, cipher:Lcom/ecareme/utils/crypto/AESCipher;
    const-string v4, "9876543210"

    const-string v5, "utf8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 54
    .local v1, clear:[B
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 55
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const-string v5, "utf8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 56
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 57
    const-string v4, "abcdefghijklmnopqrstuvwxyz"

    const-string v5, "utf8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 59
    const-string v4, "><!@#$%^&*()_+~`-=[]\\\"\';,./{}|:?"

    const-string v5, "utf8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 61
    const-string v4, ""

    const-string v5, "utf8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 63
    const-string v4, " "

    const-string v5, "utf8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 65
    const/4 v4, 0x0

    new-array v1, v4, [B

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 67
    sget-object v4, Lcom/ecareme/utils/crypto/CryptoTest;->allbytes:[B

    invoke-direct {p0, v0, v4}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/AESCipher;[B)[B

    move-result-object v4

    sget-object v5, Lcom/ecareme/utils/crypto/CryptoTest;->allbytes:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 70
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/ecareme/utils/crypto/AESCipher;->decrypt([B)[B

    .line 71
    const-string v4, "CryptoException must throw."

    invoke-static {v4}, Lcom/ecareme/utils/crypto/CryptoTest;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 75
    .local v2, e:Lcom/ecareme/utils/crypto/CryptoException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/ecareme/utils/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public testXAES()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v3, "0123456789"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 31
    .local v2, key:[B
    new-instance v0, Lcom/ecareme/utils/crypto/XAES;

    sget-object v3, Lcom/ecareme/utils/crypto/XAES$BlockSize;->BlockSize128:Lcom/ecareme/utils/crypto/XAES$BlockSize;

    sget-object v4, Lcom/ecareme/utils/crypto/XAES$KeySize;->KeySize128:Lcom/ecareme/utils/crypto/XAES$KeySize;

    invoke-direct {v0, v2, v3, v4}, Lcom/ecareme/utils/crypto/XAES;-><init>([BLcom/ecareme/utils/crypto/XAES$BlockSize;Lcom/ecareme/utils/crypto/XAES$KeySize;)V

    .line 32
    .local v0, cipher:Lcom/ecareme/utils/crypto/XAES;
    const-string v3, "9876543210"

    const-string v4, "utf8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 33
    .local v1, clear:[B
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 34
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const-string v4, "utf8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 36
    const-string v3, "abcdefghijklmnopqrstuvwxyz"

    const-string v4, "utf8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 38
    const-string v3, "><!@#$%^&*()_+~`-=[]\\\"\';,./{}|:?"

    const-string v4, "utf8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 40
    const-string v3, ""

    const-string v4, "utf8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 42
    const-string v3, " "

    const-string v4, "utf8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 44
    const/4 v3, 0x0

    new-array v1, v3, [B

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 46
    sget-object v3, Lcom/ecareme/utils/crypto/CryptoTest;->allbytes:[B

    invoke-direct {p0, v0, v3}, Lcom/ecareme/utils/crypto/CryptoTest;->doTest(Lcom/ecareme/utils/crypto/XAES;[B)[B

    move-result-object v3

    sget-object v4, Lcom/ecareme/utils/crypto/CryptoTest;->allbytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/CryptoTest;->assertTrue(Z)V

    .line 47
    return-void
.end method
