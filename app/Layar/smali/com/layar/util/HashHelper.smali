.class public Lcom/layar/util/HashHelper;
.super Ljava/lang/Object;
.source "HashHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 14
    :cond_0
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 15
    .local v1, halfbyte:I
    const/4 v3, 0x0

    .local v3, two_halfs:I
    move v4, v3

    .line 17
    .end local v3           #two_halfs:I
    .local v4, two_halfs:I
    :goto_1
    if-ltz v1, :cond_1

    const/16 v5, 0x9

    if-gt v1, v5, :cond_1

    .line 18
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 21
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 22
    add-int/lit8 v3, v4, 0x1

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 13
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    :cond_1
    const/16 v5, 0xa

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    :cond_2
    move v4, v3

    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    goto :goto_1
.end method

.method public static getDevlKeyHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    .line 29
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 30
    .local v1, sha:Ljava/security/MessageDigest;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 31
    .local v2, sha1hash:[B
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 32
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 33
    invoke-static {v2}, Lcom/layar/util/HashHelper;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 41
    .end local v1           #sha:Ljava/security/MessageDigest;
    .end local v2           #sha1hash:[B
    :goto_0
    return-object v3

    .line 34
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 35
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 36
    const-string v3, "HashHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fatal error! cannot use this phone for devl.-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    move-object v3, v6

    .line 41
    goto :goto_0

    .line 37
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 38
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 39
    const-string v3, "HashHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fatal error! cannot use this phone for devl.-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
