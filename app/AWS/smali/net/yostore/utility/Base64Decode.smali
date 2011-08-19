.class public Lnet/yostore/utility/Base64Decode;
.super Ljava/lang/Object;
.source "Base64Decode.java"


# static fields
.field private static cipher:Lcom/ecareme/utils/crypto/AESCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    :try_start_0
    const-string v1, "EcaremeFC1AesKey"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/utils/crypto/AESCipher;->getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;

    move-result-object v1

    sput-object v1, Lnet/yostore/utility/Base64Decode;->cipher:Lcom/ecareme/utils/crypto/AESCipher;
    :try_end_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 28
    .local v0, e:Lcom/ecareme/utils/crypto/CryptoException;
    invoke-virtual {v0}, Lcom/ecareme/utils/crypto/CryptoException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final AESdecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "v"

    .prologue
    .line 83
    const/4 v0, 0x0

    check-cast v0, [B

    .line 84
    .local v0, bs:[B
    const/4 v2, 0x0

    .line 87
    .local v2, result:Ljava/lang/String;
    :try_start_0
    const-string v4, "utf-8"

    invoke-static {p0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lcom/ecareme/utils/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    sget-object v4, Lnet/yostore/utility/Base64Decode;->cipher:Lcom/ecareme/utils/crypto/AESCipher;

    invoke-virtual {v4, v0}, Lcom/ecareme/utils/crypto/AESCipher;->decrypt([B)[B

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    move-object v2, v3

    .line 105
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 95
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 97
    .local v1, e:Lcom/ecareme/utils/crypto/CryptoException;
    invoke-virtual {v1}, Lcom/ecareme/utils/crypto/CryptoException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v1           #e:Lcom/ecareme/utils/crypto/CryptoException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 102
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final AESdecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "v"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/ecareme/utils/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 110
    .local v0, returnStr:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 111
    invoke-static {v0, p1}, Lnet/yostore/utility/Base64Decode;->UserAESdecodeWithoutURDDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_0
    return-object v0
.end method

.method public static final AESdecodeWithoutURDDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "v"

    .prologue
    .line 120
    const/4 v0, 0x0

    check-cast v0, [B

    .line 121
    .local v0, bs:[B
    const/4 v2, 0x0

    .line 124
    .local v2, result:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/ecareme/utils/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    sget-object v4, Lnet/yostore/utility/Base64Decode;->cipher:Lcom/ecareme/utils/crypto/AESCipher;

    invoke-virtual {v4, v0}, Lcom/ecareme/utils/crypto/AESCipher;->decrypt([B)[B

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    move-object v2, v3

    .line 141
    .end local v3           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 135
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 139
    .local v1, e:Lcom/ecareme/utils/crypto/CryptoException;
    invoke-virtual {v1}, Lcom/ecareme/utils/crypto/CryptoException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final AESencode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 63
    if-nez p0, :cond_0

    move-object v4, v0

    .line 80
    :goto_0
    return-object v4

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    .line 66
    :cond_1
    check-cast v0, [B

    .line 67
    .local v0, bs:[B
    const/4 v3, 0x0

    .line 69
    .local v3, encoded:Ljava/lang/String;
    :try_start_0
    const-string v4, "EcaremeFC1AesKey"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/AESCipher;->getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;

    move-result-object v4

    sput-object v4, Lnet/yostore/utility/Base64Decode;->cipher:Lcom/ecareme/utils/crypto/AESCipher;

    .line 70
    sget-object v4, Lnet/yostore/utility/Base64Decode;->cipher:Lcom/ecareme/utils/crypto/AESCipher;

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ecareme/utils/crypto/AESCipher;->encrypt([B)[B

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    .line 73
    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 80
    goto :goto_0

    .line 75
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 76
    .local v2, ee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v2           #ee:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 78
    .local v1, e:Lcom/ecareme/utils/crypto/CryptoException;
    invoke-virtual {v1}, Lcom/ecareme/utils/crypto/CryptoException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final UserAESdecodeWithoutURDDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "v"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    check-cast v0, [B

    .line 147
    .local v0, bs:[B
    const/4 v1, 0x0

    .line 149
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ecareme/utils/crypto/AESCipher;->getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;

    move-result-object v2

    .line 151
    .local v2, userAEScipher:Lcom/ecareme/utils/crypto/AESCipher;
    const-string v3, "EncryptedPassword:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v2, v0}, Lcom/ecareme/utils/crypto/AESCipher;->decrypt([B)[B

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EncryptedPassword:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_0
    :goto_0
    return-object v1

    .line 163
    :cond_1
    invoke-static {p0}, Lcom/ecareme/utils/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v2, v0}, Lcom/ecareme/utils/crypto/AESCipher;->decrypt([B)[B

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Ljava/lang/String;

    .end local v1           #result:Ljava/lang/String;
    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static final UserAESencodeWithoutURDDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "v"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/utils/crypto/CryptoException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    check-cast v0, [B

    .line 181
    .local v0, bs:[B
    move-object v1, p0

    .line 183
    .local v1, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/ecareme/utils/crypto/AESCipher;->getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;

    move-result-object v3

    .line 187
    .local v3, userAEScipher:Lcom/ecareme/utils/crypto/AESCipher;
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ecareme/utils/crypto/AESCipher;->encrypt([B)[B

    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/ecareme/utils/codec/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    .line 191
    .end local v3           #userAEScipher:Lcom/ecareme/utils/crypto/AESCipher;
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/ecareme/utils/codec/Base64;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 193
    .end local v1           #result:Ljava/lang/String;
    .local v2, result:Ljava/lang/String;
    return-object v2
.end method

.method public static getVString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .parameter "pwd"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, rtn:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/utility/Base64Decode;->AESencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method


# virtual methods
.method public Base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/ecareme/utils/codec/Base64;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
