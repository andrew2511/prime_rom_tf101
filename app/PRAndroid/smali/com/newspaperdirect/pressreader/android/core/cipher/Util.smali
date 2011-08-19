.class public Lcom/newspaperdirect/pressreader/android/core/cipher/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrievePassword(Ljava/util/zip/ZipFile;)[B
    .locals 12
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 11
    if-nez p0, :cond_0

    move-object v1, v3

    .line 38
    :goto_0
    return-object v1

    .line 12
    :cond_0
    const-string v1, "manifest"

    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 13
    .local v7, entry:Ljava/util/zip/ZipEntry;
    if-nez v7, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 15
    :cond_1
    check-cast v3, [B

    .line 16
    .local v3, encryptedPassword:[B
    const/4 v10, 0x0

    .line 18
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 19
    invoke-virtual {p0, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 18
    invoke-direct {v11, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 22
    .local v8, line:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/4 v4, 0x5

    invoke-virtual {v8, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    const/16 v4, 0x12

    invoke-virtual {v8, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 24
    .local v9, phrase:Ljava/lang/String;
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;-><init>([B)V

    .line 25
    .local v0, rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 26
    .local v5, len:I
    new-array v3, v5, [B

    .line 27
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;->decrypt([BI[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 31
    if-eqz v11, :cond_4

    .line 33
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v11

    .end local v0           #rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;
    .end local v5           #len:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #phrase:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    move-object v1, v3

    .line 38
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 29
    .local v6, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    if-eqz v10, :cond_2

    .line 33
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 34
    :catch_1
    move-exception v1

    goto :goto_1

    .line 30
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 31
    :goto_3
    if-eqz v10, :cond_3

    .line 33
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 37
    :cond_3
    :goto_4
    throw v1

    .line 34
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v0       #rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;
    .restart local v5       #len:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #phrase:Ljava/lang/String;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0           #rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;
    .end local v5           #len:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #phrase:Ljava/lang/String;
    :catch_3
    move-exception v2

    goto :goto_4

    .line 30
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 28
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v0       #rc4Cipher:Lcom/newspaperdirect/pressreader/android/core/cipher/RC4;
    .restart local v5       #len:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #phrase:Ljava/lang/String;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :cond_4
    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method
