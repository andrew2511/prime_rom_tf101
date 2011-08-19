.class public Lcom/asus/reader/bookconverter/Cepub2Epub;
.super Ljava/lang/Object;
.source "Cepub2Epub.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "srcCepubPath"
    .parameter "destEpubPath"
    .parameter "key"

    .prologue
    .line 15
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 16
    .local v4, md:Ljava/security/MessageDigest;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 17
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {p0, p1, v6}, Lcom/asus/reader/bookconverter/DESDecrypter;->decryptFile(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/asus/reader/bookconverter/Cepub2Epub;->isValidZipfile(Ljava/io/File;)Z

    move-result v3

    .line 25
    .local v3, isCovertSuccess:Z
    if-nez v3, :cond_3

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 27
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete: no such file or directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_1

    .line 29
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete: write protected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, files:[Ljava/lang/String;
    array-length v6, v2

    if-lez v6, :cond_2

    .line 33
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete: directory not empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    .end local v2           #files:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 39
    .local v5, success:Z
    if-nez v5, :cond_3

    .line 40
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Delete: deletion failed"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v5           #success:Z
    :cond_3
    move v6, v3

    .line 43
    .end local v1           #f:Ljava/io/File;
    .end local v3           #isCovertSuccess:Z
    .end local v4           #md:Ljava/security/MessageDigest;
    :goto_0
    return v6

    .line 18
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 19
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static isValidZipfile(Ljava/io/File;)Z
    .locals 5
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, zipfile:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 50
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    .local v2, zipfile:Ljava/util/zip/ZipFile;
    const/4 v3, 0x1

    .line 59
    if-eqz v2, :cond_0

    .line 60
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    const/4 v1, 0x0

    .line 65
    .end local v2           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 63
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v2       #zipfile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    move-object v1, v2

    .end local v2           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipfile:Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 51
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 52
    .local v0, e:Ljava/util/zip/ZipException;
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    if-eqz v1, :cond_1

    .line 60
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 61
    const/4 v1, 0x0

    .end local v0           #e:Ljava/util/zip/ZipException;
    :cond_1
    :goto_1
    move v3, v4

    .line 65
    goto :goto_0

    .line 63
    .restart local v0       #e:Ljava/util/zip/ZipException;
    :catch_2
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 55
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    if-eqz v1, :cond_2

    .line 60
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 61
    const/4 v1, 0x0

    :cond_2
    :goto_2
    move v3, v4

    .line 65
    goto :goto_0

    .line 63
    :catch_4
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 58
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 59
    if-eqz v1, :cond_3

    .line 60
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 61
    const/4 v1, 0x0

    .line 65
    :cond_3
    :goto_3
    throw v3

    .line 63
    :catch_5
    move-exception v0

    .line 64
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
