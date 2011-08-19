.class Lcom/android/server/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field buf:[B

.field buflen:I

.field mIn:Ljava/io/InputStream;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/Installer;->buf:[B

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/Installer;->buflen:I

    return-void
.end method

.method private connect()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 41
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_7

    move v2, v4

    .line 59
    :goto_6
    return v2

    .line 44
    :cond_7
    const-string v2, "Installer"

    const-string v3, "connecting..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_e
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 48
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "installd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 51
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 53
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    .line 54
    iget-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_33} :catch_35

    move v2, v4

    .line 59
    goto :goto_6

    .line 55
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_35
    move-exception v2

    move-object v1, v2

    .line 56
    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    .line 57
    const/4 v2, 0x0

    goto :goto_6
.end method

.method private disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v0, "Installer"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_8
    iget-object v0, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_2e

    .line 68
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_2c

    .line 71
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_2a

    .line 73
    :cond_23
    :goto_23
    iput-object v2, p0, Lcom/android/server/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 74
    iput-object v2, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    .line 75
    iput-object v2, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    .line 76
    return-void

    .line 72
    :catch_2a
    move-exception v0

    goto :goto_23

    .line 69
    :catch_2c
    move-exception v0

    goto :goto_1a

    .line 66
    :catch_2e
    move-exception v0

    goto :goto_11
.end method

.method private execute(Ljava/lang/String;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, res:Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 165
    :goto_8
    return v2

    .line 164
    :catch_9
    move-exception v0

    .line 165
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_8
.end method

.method private readBytes([BI)Z
    .registers 10
    .parameter "buffer"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, off:I
    if-gez p2, :cond_7

    move v3, v6

    .line 97
    :goto_5
    return v3

    .line 88
    .local v0, count:I
    :cond_6
    add-int/2addr v2, v0

    .line 81
    .end local v0           #count:I
    :cond_7
    if-eq v2, p2, :cond_2b

    .line 83
    :try_start_9
    iget-object v3, p0, Lcom/android/server/Installer;->mIn:Ljava/io/InputStream;

    sub-int v4, p2, v2

    invoke-virtual {v3, p1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 84
    .restart local v0       #count:I
    if-gtz v0, :cond_6

    .line 85
    const-string v3, "Installer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_2f

    .line 95
    .end local v0           #count:I
    :cond_2b
    :goto_2b
    if-ne v2, p2, :cond_39

    const/4 v3, 0x1

    goto :goto_5

    .line 89
    :catch_2f
    move-exception v3

    move-object v1, v3

    .line 90
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Installer"

    const-string v4, "read exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 96
    .end local v1           #ex:Ljava/io/IOException;
    :cond_39
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v3, v6

    .line 97
    goto :goto_5
.end method

.method private readReply()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 102
    iput v4, p0, Lcom/android/server/Installer;->buflen:I

    .line 103
    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/Installer;->readBytes([BI)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v4

    .line 112
    :goto_e
    return v1

    .line 104
    :cond_f
    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/android/server/Installer;->buf:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int v0, v1, v2

    .line 105
    .local v0, len:I
    if-lt v0, v3, :cond_25

    const/16 v1, 0x400

    if-le v0, v1, :cond_48

    .line 106
    :cond_25
    const-string v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid reply length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v1, v4

    .line 108
    goto :goto_e

    .line 110
    :cond_48
    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    invoke-direct {p0, v1, v0}, Lcom/android/server/Installer;->readBytes([BI)Z

    move-result v1

    if-nez v1, :cond_52

    move v1, v4

    goto :goto_e

    .line 111
    :cond_52
    iput v0, p0, Lcom/android/server/Installer;->buflen:I

    move v1, v3

    .line 112
    goto :goto_e
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "cmd"

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/Installer;->connect()Z

    move-result v1

    if-nez v1, :cond_12

    .line 134
    const-string v1, "Installer"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v1, "-1"
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_43

    .line 156
    :goto_10
    monitor-exit p0

    return-object v1

    .line 138
    :cond_12
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 144
    const-string v1, "Installer"

    const-string v2, "write command failed? reconnect!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/server/Installer;->connect()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/server/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 146
    :cond_2b
    const-string v1, "-1"

    goto :goto_10

    .line 150
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/Installer;->readReply()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 151
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/Installer;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .local v0, s:Ljava/lang/String;
    move-object v1, v0

    .line 153
    goto :goto_10

    .line 156
    .end local v0           #s:Ljava/lang/String;
    :cond_40
    const-string v1, "-1"
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_43

    goto :goto_10

    .line 133
    :catchall_43
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .registers 11
    .parameter "_cmd"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 117
    .local v0, cmd:[B
    array-length v2, v0

    .line 118
    .local v2, len:I
    if-lt v2, v8, :cond_d

    const/16 v3, 0x400

    if-le v2, v3, :cond_f

    :cond_d
    move v3, v7

    .line 129
    :goto_e
    return v3

    .line 119
    :cond_f
    iget-object v3, p0, Lcom/android/server/Installer;->buf:[B

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    .line 120
    iget-object v3, p0, Lcom/android/server/Installer;->buf:[B

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 122
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/server/Installer;->buf:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 123
    iget-object v3, p0, Lcom/android/server/Installer;->mOut:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2e} :catch_30

    move v3, v8

    .line 129
    goto :goto_e

    .line 124
    :catch_30
    move-exception v3

    move-object v1, v3

    .line 125
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Installer"

    const-string v4, "write error"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/android/server/Installer;->disconnect()V

    move v3, v7

    .line 127
    goto :goto_e
.end method


# virtual methods
.method public clearUserData(Ljava/lang/String;)I
    .registers 4
    .parameter "name"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteCacheFiles(Ljava/lang/String;)I
    .registers 4
    .parameter "name"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public dexopt(Ljava/lang/String;IZ)I
    .registers 7
    .parameter "apkPath"
    .parameter "uid"
    .parameter "isPublic"

    .prologue
    const/16 v2, 0x20

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    if-eqz p3, :cond_25

    const-string v1, " 1"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 186
    :cond_25
    const-string v1, " 0"

    goto :goto_19
.end method

.method public freeCache(J)I
    .registers 5
    .parameter "freeStorageSize"

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .registers 12
    .parameter "pkgName"
    .parameter "apkPath"
    .parameter "fwdLockApkPath"
    .parameter "pStats"

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x20

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getsize"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    if-eqz p3, :cond_35

    move-object v4, p3

    :goto_1c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, s:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, res:[Ljava/lang/String;
    if-eqz v2, :cond_33

    array-length v4, v2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_38

    :cond_33
    move v4, v6

    .line 287
    :goto_34
    return v4

    .line 273
    .end local v2           #res:[Ljava/lang/String;
    .end local v3           #s:Ljava/lang/String;
    :cond_35
    const-string v4, "!"

    goto :goto_1c

    .line 282
    .restart local v2       #res:[Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :cond_38
    const/4 v4, 0x1

    :try_start_39
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->codeSize:J

    .line 283
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->dataSize:J

    .line 284
    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p4, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 285
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_59} :catch_5b

    move-result v4

    goto :goto_34

    .line 286
    :catch_5b
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/NumberFormatException;
    move v4, v6

    .line 287
    goto :goto_34
.end method

.method public install(Ljava/lang/String;II)I
    .registers 7
    .parameter "name"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "dataPath"
    .parameter "nativeLibPath"

    .prologue
    const/4 v3, -0x1

    .line 296
    if-nez p1, :cond_c

    .line 297
    const-string v1, "Installer"

    const-string v2, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 309
    :goto_b
    return v1

    .line 299
    :cond_c
    if-nez p2, :cond_17

    .line 300
    const-string v1, "Installer"

    const-string v2, "unlinkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 301
    goto :goto_b

    .line 304
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_b
.end method

.method public moveFiles()I
    .registers 2

    .prologue
    .line 292
    const-string v0, "movefiles"

    invoke-direct {p0, v0}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/16 v2, 0x20

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public ping()Z
    .registers 2

    .prologue
    .line 237
    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public remove(Ljava/lang/String;)I
    .registers 4
    .parameter "name"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "oldname"
    .parameter "newname"

    .prologue
    const/16 v2, 0x20

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rmdex(Ljava/lang/String;)I
    .registers 4
    .parameter "codePath"

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setForwardLockPerm(Ljava/lang/String;I)I
    .registers 6
    .parameter "packagePathSuffix"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protect"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public unlinkNativeLibraryDirectory(Ljava/lang/String;)I
    .registers 5
    .parameter "dataPath"

    .prologue
    .line 313
    if-nez p1, :cond_b

    .line 314
    const-string v1, "Installer"

    const-string v2, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, -0x1

    .line 321
    :goto_a
    return v1

    .line 318
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unlinklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_a
.end method
