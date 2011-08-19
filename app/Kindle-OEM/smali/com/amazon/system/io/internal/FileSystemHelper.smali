.class public Lcom/amazon/system/io/internal/FileSystemHelper;
.super Ljava/lang/Object;
.source "FileSystemHelper.java"


# static fields
.field private static final temporaryExtension:Ljava/lang/String; = "_temp"

.field private static final underscoreCharacter:C = '_'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 69
    .line 70
    const-string v0, "_temp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public static createFileFromTemporaryFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileFactory"
    .parameter "fileName"

    .prologue
    .line 41
    move-object v0, p1

    .line 42
    .local v0, newFilePath:Ljava/lang/String;
    const-string v1, "_temp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "_temp"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    invoke-static {p0, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectFileNameWithExtension(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->rename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    const/4 v0, 0x0

    .line 50
    :cond_1
    return-object v0
.end method

.method public static dataInputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/DataInputStream;
    .locals 2
    .parameter "fileFactory"
    .parameter "filenamePath"

    .prologue
    .line 365
    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->inputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 366
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 367
    .local v0, dataInputStream:Ljava/io/DataInputStream;
    if-eqz v1, :cond_0

    .line 369
    new-instance v0, Ljava/io/DataInputStream;

    .end local v0           #dataInputStream:Ljava/io/DataInputStream;
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 371
    .restart local v0       #dataInputStream:Ljava/io/DataInputStream;
    :cond_0
    return-object v0
.end method

.method public static dataOutputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/DataOutputStream;
    .locals 2
    .parameter "fileFactory"
    .parameter "filenamePath"
    .parameter "createIfNotExist"

    .prologue
    .line 544
    invoke-static {p0, p1, p2}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 545
    .local v1, outputStream:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 546
    .local v0, dataOutputStream:Ljava/io/DataOutputStream;
    if-eqz v1, :cond_0

    .line 548
    new-instance v0, Ljava/io/DataOutputStream;

    .end local v0           #dataOutputStream:Ljava/io/DataOutputStream;
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 550
    .restart local v0       #dataOutputStream:Ljava/io/DataOutputStream;
    :cond_0
    return-object v0
.end method

.method public static deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    const/4 v1, 0x0

    .line 163
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v1

    .line 172
    :cond_0
    if-eqz v0, :cond_2

    .line 174
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 180
    :goto_0
    return v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 177
    goto :goto_0

    .line 167
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 168
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 172
    if-eqz v2, :cond_2

    .line 174
    :try_start_4
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 177
    goto :goto_0

    .line 175
    :catch_2
    move-exception v0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 177
    goto :goto_0

    .line 169
    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 170
    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File delete error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 172
    if-eqz v2, :cond_2

    .line 174
    :try_start_6
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move v0, v1

    .line 177
    goto :goto_0

    .line 175
    :catch_4
    move-exception v0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 177
    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_1

    .line 174
    :try_start_7
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 177
    :cond_1
    :goto_4
    throw v0

    .line 175
    :catch_5
    move-exception v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 172
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 169
    :catch_6
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    .line 167
    :catch_7
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method public static emptyDirectory(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 749
    const/4 v0, 0x0

    .line 754
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 755
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 757
    const/4 v1, 0x1

    .line 758
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->list()[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    move v1, v6

    .line 759
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v4

    and-int/2addr v3, v4

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 776
    :goto_1
    if-eqz v0, :cond_3

    .line 780
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 788
    :goto_2
    return v0

    .line 782
    :catch_0
    move-exception v0

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 785
    goto :goto_2

    .line 766
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 768
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileSystemHelper:emptyDirectory:IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 776
    if-eqz v1, :cond_2

    .line 780
    :try_start_4
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v6

    .line 785
    goto :goto_2

    .line 782
    :catch_2
    move-exception v0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    .line 785
    goto :goto_2

    .line 770
    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 772
    :goto_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileSystemHelper:emptyDirectory:RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 776
    if-eqz v1, :cond_2

    .line 780
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move v0, v6

    .line 785
    goto :goto_2

    .line 782
    :catch_4
    move-exception v0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    .line 785
    goto :goto_2

    .line 776
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5
    if-eqz v1, :cond_1

    .line 780
    :try_start_7
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 785
    :cond_1
    :goto_6
    throw v0

    .line 782
    :catch_5
    move-exception v1

    .line 784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 776
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 770
    :catch_6
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    .line 766
    :catch_7
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_3

    :cond_2
    move v0, v6

    goto/16 :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v1, v6

    goto/16 :goto_1
.end method

.method public static exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    const/4 v1, 0x0

    .line 194
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v1

    .line 203
    :cond_0
    if-eqz v0, :cond_2

    .line 205
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 211
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 208
    goto :goto_0

    .line 198
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 199
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 203
    if-eqz v2, :cond_2

    .line 205
    :try_start_4
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 208
    goto :goto_0

    .line 206
    :catch_2
    move-exception v0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 208
    goto :goto_0

    .line 200
    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 201
    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File.exists error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 203
    if-eqz v2, :cond_2

    .line 205
    :try_start_6
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move v0, v1

    .line 208
    goto :goto_0

    .line 206
    :catch_4
    move-exception v0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 208
    goto :goto_0

    .line 203
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_1

    .line 205
    :try_start_7
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 208
    :cond_1
    :goto_4
    throw v0

    .line 206
    :catch_5
    move-exception v1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 203
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 200
    :catch_6
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    .line 198
    :catch_7
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method public static fileSize(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    const-wide/16 v1, -0x1

    .line 227
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->fileSize()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-wide v1

    .line 243
    :cond_0
    if-eqz v0, :cond_2

    .line 247
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v0, v1

    .line 256
    :goto_0
    return-wide v0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v0, v1

    .line 252
    goto :goto_0

    .line 233
    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    .line 235
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileSystemHelper:fileSize:IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 243
    if-eqz v3, :cond_2

    .line 247
    :try_start_4
    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-wide v0, v1

    .line 252
    goto :goto_0

    .line 249
    :catch_2
    move-exception v0

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v0, v1

    .line 252
    goto :goto_0

    .line 237
    :catch_3
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    .line 239
    :goto_2
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileSystemHelper:fileSize:RuntimeException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 243
    if-eqz v3, :cond_2

    .line 247
    :try_start_6
    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-wide v0, v1

    .line 252
    goto :goto_0

    .line 249
    :catch_4
    move-exception v0

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v0, v1

    .line 252
    goto :goto_0

    .line 243
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    if-eqz v1, :cond_1

    .line 247
    :try_start_7
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 252
    :cond_1
    :goto_4
    throw v0

    .line 249
    :catch_5
    move-exception v1

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 243
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_3

    .line 237
    :catch_6
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_2

    .line 233
    :catch_7
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto/16 :goto_1

    :cond_2
    move-wide v0, v1

    goto/16 :goto_0
.end method

.method public static getAsinFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 820
    if-nez p0, :cond_1

    .line 822
    const-string v0, ""

    .line 826
    :goto_0
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 829
    const-string v2, ""

    .line 830
    if-lez v1, :cond_0

    .line 832
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 835
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 799
    if-nez p0, :cond_1

    .line 801
    const-string v0, ""

    .line 804
    :goto_0
    if-nez p1, :cond_0

    .line 806
    const-string v1, ""

    .line 810
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".prc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static getLastModifiedDate(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    const-wide/16 v1, -0x1

    .line 619
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 620
    if-eqz v0, :cond_0

    .line 622
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->lastModified()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-wide v1

    .line 638
    :cond_0
    if-eqz v0, :cond_2

    .line 642
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v0, v1

    .line 651
    :goto_0
    return-wide v0

    .line 644
    :catch_0
    move-exception v0

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v0, v1

    .line 647
    goto :goto_0

    .line 630
    :catch_1
    move-exception v3

    if-eqz v0, :cond_2

    .line 642
    :try_start_3
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-wide v0, v1

    .line 647
    goto :goto_0

    .line 644
    :catch_2
    move-exception v0

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v0, v1

    .line 647
    goto :goto_0

    .line 632
    :catch_3
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    .line 634
    :goto_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileSystemHelper.getLastModifiedDate:RuntimeException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 638
    if-eqz v3, :cond_2

    .line 642
    :try_start_5
    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-wide v0, v1

    .line 647
    goto :goto_0

    .line 644
    :catch_4
    move-exception v0

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v0, v1

    .line 647
    goto :goto_0

    .line 638
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_1

    .line 642
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 647
    :cond_1
    :goto_3
    throw v0

    .line 644
    :catch_5
    move-exception v1

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 638
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_2

    .line 632
    :catch_6
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_1

    :cond_2
    move-wide v0, v1

    goto/16 :goto_0
.end method

.method public static getTemporaryExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "_temp"

    return-object v0
.end method

.method public static inputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 333
    .line 336
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 337
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->openInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 345
    :goto_0
    if-eqz v0, :cond_2

    .line 347
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 353
    :goto_1
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 350
    goto :goto_1

    .line 341
    :catch_1
    move-exception v0

    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_1

    .line 347
    :try_start_3
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v4

    .line 350
    goto :goto_1

    .line 348
    :catch_2
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v4

    .line 350
    goto :goto_1

    .line 342
    :catch_3
    move-exception v0

    move-object v1, v4

    .line 343
    :goto_3
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileSystemHelper:inputStreamFromFile:RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 345
    if-eqz v1, :cond_1

    .line 347
    :try_start_5
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v4

    .line 350
    goto :goto_1

    .line 348
    :catch_4
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v4

    .line 350
    goto :goto_1

    .line 345
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_0

    .line 347
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 350
    :cond_0
    :goto_5
    throw v0

    .line 348
    :catch_5
    move-exception v1

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 345
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 342
    :catch_6
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 341
    :catch_7
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v4

    goto/16 :goto_1

    :cond_2
    move-object v0, v1

    goto/16 :goto_1

    :cond_3
    move-object v1, v4

    goto/16 :goto_0
.end method

.method public static mkdir(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 701
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 702
    if-eqz v0, :cond_0

    .line 704
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->mkdir()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 720
    :cond_0
    if-eqz v0, :cond_1

    .line 724
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 732
    :cond_1
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 709
    :catch_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 724
    :try_start_3
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 726
    :catch_2
    move-exception v0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 713
    :catch_3
    move-exception v1

    if-eqz v0, :cond_1

    .line 724
    :try_start_4
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 726
    :catch_4
    move-exception v0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 724
    :try_start_5
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 729
    :cond_2
    :goto_2
    throw v0

    .line 726
    :catch_5
    move-exception v1

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 720
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public static openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 663
    .line 665
    const/4 v0, 0x0

    .line 667
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 668
    :try_start_1
    new-instance v2, Lcom/amazon/system/io/internal/FileInputStream;

    invoke-direct {v2, v1}, Lcom/amazon/system/io/internal/FileInputStream;-><init>(Lcom/amazon/system/io/IFileConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 669
    const/4 v0, 0x1

    .line 678
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 680
    :try_start_2
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    .line 686
    :goto_0
    return-object v0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 683
    goto :goto_0

    .line 671
    :catch_1
    move-exception v1

    move-object v1, v3

    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 680
    :try_start_3
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v3

    .line 683
    goto :goto_0

    .line 681
    :catch_2
    move-exception v0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 683
    goto :goto_0

    .line 673
    :catch_3
    move-exception v1

    move-object v1, v3

    :goto_2
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 680
    :try_start_4
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v3

    .line 683
    goto :goto_0

    .line 681
    :catch_4
    move-exception v0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 683
    goto :goto_0

    .line 678
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_3
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 680
    :try_start_5
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 683
    :cond_0
    :goto_4
    throw v1

    .line 681
    :catch_5
    move-exception v0

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 678
    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_3

    .line 673
    :catch_6
    move-exception v2

    goto :goto_2

    .line 671
    :catch_7
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public static outputStreamAppendingExistingFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/foundation/IStatusTracker;)Ljava/io/OutputStream;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 486
    .line 490
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 491
    if-eqz v0, :cond_1

    .line 493
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/io/IFileConnection;->openOutputStream(JZZ)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 520
    :goto_0
    if-eqz v0, :cond_4

    .line 524
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 532
    :goto_1
    return-object v0

    .line 499
    :cond_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSystemHelper.outputStreamAppendingExistingFile: failed to append to file, doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v5

    goto :goto_0

    .line 504
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSystemHelper.outputStreamAppendingExistingFile: failed to open file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, "FileOpenFailed"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v1, v5

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 529
    goto :goto_1

    .line 508
    :catch_1
    move-exception v0

    move-object v1, v5

    .line 510
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 520
    if-eqz v1, :cond_3

    .line 524
    :try_start_5
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v5

    .line 529
    goto :goto_1

    .line 526
    :catch_2
    move-exception v0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v5

    .line 529
    goto :goto_1

    .line 513
    :catch_3
    move-exception v0

    move-object v1, v5

    .line 515
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 520
    if-eqz v1, :cond_3

    .line 524
    :try_start_7
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v0, v5

    .line 529
    goto :goto_1

    .line 526
    :catch_4
    move-exception v0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v5

    .line 529
    goto/16 :goto_1

    .line 520
    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_4
    if-eqz v1, :cond_2

    .line 524
    :try_start_8
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 529
    :cond_2
    :goto_5
    throw v0

    .line 526
    :catch_5
    move-exception v1

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 520
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 513
    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 508
    :catch_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2

    :cond_3
    move-object v0, v5

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 383
    .line 386
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 387
    if-eqz v0, :cond_4

    .line 388
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/io/IFileConnection;->openOutputStream(JZZ)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 401
    :goto_0
    if-eqz v0, :cond_3

    .line 403
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 409
    :goto_1
    return-object v0

    .line 390
    :cond_0
    if-eqz p2, :cond_4

    .line 391
    :try_start_3
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->create()V

    .line 392
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/io/IFileConnection;->openOutputStream(JZZ)Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 406
    goto :goto_1

    .line 396
    :catch_1
    move-exception v0

    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_2

    .line 403
    :try_start_4
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v5

    .line 406
    goto :goto_1

    .line 404
    :catch_2
    move-exception v0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v5

    .line 406
    goto :goto_1

    .line 399
    :catch_3
    move-exception v0

    move-object v0, v5

    :goto_3
    if-eqz v0, :cond_2

    .line 403
    :try_start_5
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v5

    .line 406
    goto :goto_1

    .line 404
    :catch_4
    move-exception v0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v5

    .line 406
    goto :goto_1

    .line 401
    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_4
    if-eqz v1, :cond_1

    .line 403
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 406
    :cond_1
    :goto_5
    throw v0

    .line 404
    :catch_5
    move-exception v1

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 401
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 399
    :catch_6
    move-exception v1

    goto :goto_3

    .line 396
    :catch_7
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v0, v5

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    :cond_4
    move-object v1, v5

    goto/16 :goto_0
.end method

.method public static outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;ZLcom/amazon/foundation/IStatusTracker;)Ljava/io/OutputStream;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 424
    .line 428
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 429
    if-eqz v0, :cond_1

    .line 431
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/io/IFileConnection;->openOutputStream(JZZ)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 459
    :goto_0
    if-eqz v0, :cond_5

    .line 463
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 471
    :goto_1
    return-object v0

    .line 435
    :cond_0
    if-eqz p2, :cond_2

    .line 437
    :try_start_3
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->create()V

    .line 438
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/io/IFileConnection;->openOutputStream(JZZ)Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_0

    .line 443
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSystemHelper.outputStreamFromFile: failed to open file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, "FileOpenFailed"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    move-object v1, v5

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 468
    goto :goto_1

    .line 447
    :catch_1
    move-exception v0

    move-object v1, v5

    .line 449
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 459
    if-eqz v1, :cond_4

    .line 463
    :try_start_5
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v5

    .line 468
    goto :goto_1

    .line 465
    :catch_2
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v5

    .line 468
    goto :goto_1

    .line 452
    :catch_3
    move-exception v0

    move-object v1, v5

    .line 454
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 459
    if-eqz v1, :cond_4

    .line 463
    :try_start_7
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v0, v5

    .line 468
    goto :goto_1

    .line 465
    :catch_4
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v5

    .line 468
    goto/16 :goto_1

    .line 459
    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_4
    if-eqz v1, :cond_3

    .line 463
    :try_start_8
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 468
    :cond_3
    :goto_5
    throw v0

    .line 465
    :catch_5
    move-exception v1

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 459
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 452
    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 447
    :catch_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2

    :cond_4
    move-object v0, v5

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static removeTemporaryExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 85
    const-string v0, "_temp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "_temp"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public static rename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 104
    .line 108
    invoke-static {p0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectDirectoryPath(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    move v0, v5

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 115
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a

    move-result v1

    move-object v2, v0

    move v0, v1

    move-object v1, v3

    .line 133
    :goto_1
    if-eqz v2, :cond_2

    .line 135
    :try_start_2
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    .line 143
    :try_start_3
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    :cond_3
    :try_start_4
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v1

    .line 118
    if-eqz v1, :cond_b

    :try_start_5
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 119
    if-eqz p3, :cond_a

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_b

    move-result-object v2

    .line 121
    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->delete()Z

    .line 125
    :cond_4
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/system/io/IFileConnection;->rename(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_c

    move-result v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    .line 136
    :catch_1
    move-exception v2

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 128
    :catch_2
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 129
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 133
    if-eqz v2, :cond_5

    .line 135
    :try_start_8
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 141
    :cond_5
    :goto_5
    if-eqz v1, :cond_9

    .line 143
    :try_start_9
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move v0, v5

    .line 146
    goto/16 :goto_0

    .line 136
    :catch_3
    move-exception v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 144
    :catch_4
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v5

    .line 146
    goto/16 :goto_0

    .line 130
    :catch_5
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 131
    :goto_6
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File rename error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 133
    if-eqz v2, :cond_6

    .line 135
    :try_start_b
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 141
    :cond_6
    :goto_7
    if-eqz v1, :cond_9

    .line 143
    :try_start_c
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    move v0, v5

    .line 146
    goto/16 :goto_0

    .line 136
    :catch_6
    move-exception v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 144
    :catch_7
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v5

    .line 146
    goto/16 :goto_0

    .line 133
    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_8
    if-eqz v2, :cond_7

    .line 135
    :try_start_d
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 141
    :cond_7
    :goto_9
    if-eqz v1, :cond_8

    .line 143
    :try_start_e
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 146
    :cond_8
    :goto_a
    throw v0

    .line 136
    :catch_8
    move-exception v2

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 144
    :catch_9
    move-exception v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 133
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_8

    .line 130
    :catch_a
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_6

    :catch_b
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_6

    :catch_c
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_6

    .line 128
    :catch_d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_4

    :catch_e
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_4

    :catch_f
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_4

    :cond_9
    move v0, v5

    goto/16 :goto_0

    :cond_a
    move-object v2, v3

    goto/16 :goto_3

    :cond_b
    move v0, v5

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_1
.end method

.method public static selectDirectoryPath(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileFactory"
    .parameter "filenamePath"

    .prologue
    .line 288
    move-object v0, p1

    .line 290
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 292
    .local v1, slashIndex:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 293
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .end local v1           #slashIndex:I
    :cond_0
    return-object v0
.end method

.method public static selectFileName(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileFactory"
    .parameter "filenamePath"

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, filename:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 270
    .local v0, dotIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 271
    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 272
    .local v2, slashIndex:I
    if-ge v2, v0, :cond_0

    .line 273
    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    .end local v2           #slashIndex:I
    :cond_0
    return-object v1
.end method

.method public static selectFileNameWithExtension(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileFactory"
    .parameter "filenamePath"

    .prologue
    .line 309
    move-object v0, p1

    .line 311
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 313
    .local v1, slashIndex:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 314
    invoke-interface {p0}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 322
    .end local v1           #slashIndex:I
    :cond_0
    :goto_0
    return-object v0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLastModifiedDateAsNow(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 562
    const/4 v0, 0x0

    .line 566
    :try_start_0
    invoke-interface {p0, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 567
    if-eqz v0, :cond_4

    .line 569
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->setLastModifiedDateAsNow()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    .line 592
    :goto_0
    if-eqz v0, :cond_3

    .line 596
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 604
    :goto_1
    return v0

    .line 575
    :cond_0
    :try_start_3
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->create()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 576
    const/4 v1, 0x1

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 601
    goto :goto_1

    .line 582
    :catch_1
    move-exception v1

    .line 592
    if-eqz v0, :cond_2

    .line 596
    :try_start_4
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v3

    .line 601
    goto :goto_1

    .line 598
    :catch_2
    move-exception v0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 601
    goto :goto_1

    .line 587
    :catch_3
    move-exception v1

    .line 592
    if-eqz v0, :cond_2

    .line 596
    :try_start_5
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move v0, v3

    .line 601
    goto :goto_1

    .line 598
    :catch_4
    move-exception v0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 601
    goto :goto_1

    .line 592
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_1

    .line 596
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 601
    :cond_1
    :goto_3
    throw v0

    .line 598
    :catch_5
    move-exception v1

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 592
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto/16 :goto_0
.end method
