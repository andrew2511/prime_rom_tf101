.class public Lnet/yostore/utility/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 30
    :cond_0
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 31
    .local v1, halfbyte:I
    const/4 v3, 0x0

    .local v3, two_halfs:I
    move v4, v3

    .line 33
    .end local v3           #two_halfs:I
    .local v4, two_halfs:I
    :goto_1
    if-ltz v1, :cond_1

    const/16 v5, 0x9

    if-gt v1, v5, :cond_1

    .line 34
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 38
    add-int/lit8 v3, v4, 0x1

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
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

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    .line 11
    const/4 v1, 0x0

    .line 13
    .local v1, md:Ljava/security/MessageDigest;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 17
    :goto_0
    const/16 v3, 0x20

    new-array v2, v3, [B

    .line 19
    .local v2, md5hash:[B
    :try_start_1
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    :goto_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 24
    invoke-static {v2}, Lnet/yostore/utility/MD5;->convertToHex([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 14
    .end local v2           #md5hash:[B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 15
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 20
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #md5hash:[B
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 21
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
