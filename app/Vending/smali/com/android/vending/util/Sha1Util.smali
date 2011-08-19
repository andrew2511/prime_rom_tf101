.class public Lcom/android/vending/util/Sha1Util;
.super Ljava/lang/Object;
.source "Sha1Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/Sha1Util$1;,
        Lcom/android/vending/util/Sha1Util$DigestResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static digest(Ljava/io/InputStream;)Lcom/android/vending/util/Sha1Util$DigestResult;
    .locals 12
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 71
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 72
    .local v2, inputBuf:[B
    const-wide/16 v6, 0x0

    .line 76
    .local v6, totalBytesRead:J
    :try_start_0
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 81
    .local v3, messageDigest:Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, bytesRead:I
    if-ltz v0, :cond_2

    .line 82
    if-eqz v0, :cond_0

    .line 85
    array-length v8, v2

    if-ne v0, v8, :cond_1

    .line 87
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    :goto_1
    int-to-long v8, v0

    add-long/2addr v6, v8

    goto :goto_0

    .line 77
    .end local v0           #bytesRead:I
    .end local v3           #messageDigest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v8

    move-object v1, v8

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    move-object v8, v11

    .line 98
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    .line 90
    .restart local v0       #bytesRead:I
    .restart local v3       #messageDigest:Ljava/security/MessageDigest;
    :cond_1
    new-array v5, v0, [B

    .line 91
    .local v5, tmpArray:[B
    invoke-static {v2, v10, v5, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    .line 96
    .end local v5           #tmpArray:[B
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 97
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 98
    .local v4, result:[B
    new-instance v8, Lcom/android/vending/util/Sha1Util$DigestResult;

    const/16 v9, 0xb

    invoke-static {v4, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6, v7, v11}, Lcom/android/vending/util/Sha1Util$DigestResult;-><init>(Ljava/lang/String;JLcom/android/vending/util/Sha1Util$1;)V

    goto :goto_2
.end method

.method public static secureHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static secureHash([B)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 60
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    .local v1, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 66
    .local v2, result:[B
    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .end local v1           #messageDigest:Ljava/security/MessageDigest;
    .end local v2           #result:[B
    :goto_0
    return-object v3

    .line 61
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 62
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static verify(Ljava/io/InputStream;Ljava/lang/String;J)Z
    .locals 3
    .parameter "input"
    .parameter "hash"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/vending/util/Sha1Util;->digest(Ljava/io/InputStream;)Lcom/android/vending/util/Sha1Util$DigestResult;

    move-result-object v0

    .line 38
    .local v0, result:Lcom/android/vending/util/Sha1Util$DigestResult;
    iget-object v1, v0, Lcom/android/vending/util/Sha1Util$DigestResult;->sha1HashBase64:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/android/vending/util/Sha1Util$DigestResult;->byteCount:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
