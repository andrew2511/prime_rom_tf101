.class public Lcom/asus/dmlib/util/DMUtils;
.super Ljava/lang/Object;
.source "DMUtils.java"


# static fields
.field private static final SHARED_SECRET:Ljava/lang/String; = "My favorite is Garmin-Asus"

.field private static final TAG:Ljava/lang/String; = "DMUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;)[B
    .locals 2
    .parameter "authType"
    .parameter "format"
    .parameter "devId"
    .parameter "password"
    .parameter "nonce"
    .parameter "pCharsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 54
    const-string v0, "MD5"

    .line 56
    .local v0, DEFAULT_HMAC_ALGORITHM:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Can not calculate cred with null id parameter."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .local p0, illegArgExcp:Ljava/lang/IllegalArgumentException;
    const-string p1, "DMUtils"

    const-string p2, "Can not calculate cred with null id parameter."

    .end local p2
    invoke-static {p1, p2}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    throw p0

    .line 63
    .local p0, authType:Ljava/lang/String;
    .restart local p1
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    .line 65
    .local v0, credData:[B
    const-string v1, "syncml:auth-md5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, md:Ljava/security/MessageDigest;
    :try_start_0
    const-string p0, "MD5"

    .end local p0           #authType:Ljava/lang/String;
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .end local v0           #md:Ljava/security/MessageDigest;
    .local p0, md:Ljava/security/MessageDigest;
    move-object v0, p0

    .line 73
    .end local p0           #md:Ljava/security/MessageDigest;
    .restart local v0       #md:Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p2, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 74
    const-string p0, ":"

    invoke-virtual {p0, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 78
    .local p0, hash1:[B
    invoke-static {p0, p5}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #hash1:[B
    invoke-virtual {p0, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 80
    .local p0, b64:[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 81
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 82
    const-string p0, ":"

    .end local p0           #b64:[B
    invoke-virtual {p0, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    invoke-virtual {v0, p4}, Ljava/security/MessageDigest;->update([B)V

    .line 84
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 86
    .local p0, credData:[B
    const-string p2, "DMUtils"

    .end local p2
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MD5 Cred use b64 encode: "

    .end local p4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p0, p5}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0           #md:Ljava/security/MessageDigest;
    :goto_1
    if-eqz p1, :cond_1

    const-string p2, "b64"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_2

    .line 95
    :cond_1
    invoke-static {p0, p5}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #credData:[B
    invoke-virtual {p0, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 98
    .restart local p0       #credData:[B
    :cond_2
    return-object p0

    .line 69
    .end local p0           #credData:[B
    .restart local v0       #md:Ljava/security/MessageDigest;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :catch_0
    move-exception p0

    .line 70
    .local p0, e:Ljava/security/NoSuchAlgorithmException;
    const-string p0, "DMUtils"

    .end local p0           #e:Ljava/security/NoSuchAlgorithmException;
    const-string v1, "In DMUtils.calculateCred(): catch NoSuchAlgorithmExceptio..."

    invoke-static {p0, v1}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .local v0, credData:[B
    .local p0, authType:Ljava/lang/String;
    :cond_3
    const-string p4, "syncml:auth-basic"

    .end local p4
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #authType:Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ":"

    .end local p2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3, p5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    .local p0, credString:Ljava/lang/String;
    invoke-virtual {p0, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 91
    .end local v0           #credData:[B
    .local p0, credData:[B
    const-string p2, "DMUtils"

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BASIC Cred use b64 encode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p0, p5}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local p0           #credData:[B
    .restart local v0       #credData:[B
    .restart local p2
    .restart local p3
    :cond_4
    move-object p0, v0

    .end local v0           #credData:[B
    .restart local p0       #credData:[B
    goto :goto_1
.end method

.method public static calculateHmac(Ljava/lang/String;Ljava/lang/String;[B[B[B)Ljava/lang/String;
    .locals 7
    .parameter "algorithm"
    .parameter "username"
    .parameter "password"
    .parameter "nonce"
    .parameter "messageBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 106
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 108
    :cond_0
    const-string v5, "DMUtils"

    const-string v6, "In DMUtils.calculateHmac(): One of the parameterswas null."

    invoke-static {v5, v6}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "One of the parameterswas null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_1
    const-string v5, "MD5"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    const-string v5, "DMUtils"

    const-string v6, "In DMUtils.calculateHmac(): Only MD5-algorithm issupported at the moment."

    invoke-static {v5, v6}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Only MD5-algorithm issupported at the moment."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :cond_2
    const/4 v3, 0x0

    .line 119
    .local v3, md:Ljava/security/MessageDigest;
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 124
    :goto_0
    invoke-virtual {v3, p4}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 127
    .local v0, b64_body:[B
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 129
    const-string v5, ":"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 133
    .local v1, b64_first:[B
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 134
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 135
    const-string v5, ":"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 137
    invoke-virtual {v3, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    const-string v5, ":"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 144
    .local v2, hmac:[B
    const-string v5, "utf-8"

    invoke-static {v2, v5}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 120
    .end local v0           #b64_body:[B
    .end local v1           #b64_first:[B
    .end local v2           #hmac:[B
    :catch_0
    move-exception v4

    .line 121
    .local v4, nsae:Ljava/security/NoSuchAlgorithmException;
    const-string v5, "DMUtils"

    const-string v6, "In DMUtils.calculateCred(): catch NoSuchAlgorithmExceptio..."

    invoke-static {v5, v6}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 13
    const-string v2, ""

    .line 14
    .local v2, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .line 15
    .local v0, digest:Ljava/security/MessageDigest;
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 18
    :try_start_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 22
    :goto_0
    return-object v2

    .line 19
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 20
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSecretPW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 47
    const-string v0, "My favorite is Garmin-Asus"

    invoke-static {p0, p1, v0}, Lcom/asus/dmlib/util/DMUtils;->getSecretPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "a"
    .parameter "b"
    .parameter "s"

    .prologue
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, x:Ljava/lang/String;
    const/4 v0, 0x0

    .line 29
    .local v0, digest:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/asus/dmlib/util/DMUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v3, "+"

    const-string v4, "m"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    const-string v5, "f"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v3, "=="

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 40
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
