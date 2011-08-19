.class public final Ljavax/obex/ClientSession;
.super Ljavax/obex/ObexSession;
.source "ClientSession.java"


# instance fields
.field private mConnectionId:[B

.field private final mInput:Ljava/io/InputStream;

.field private mObexConnected:Z

.field private mOpen:Z

.field private final mOutput:Ljava/io/OutputStream;

.field private mRequestActive:Z

.field private maxPacketSize:I


# direct methods
.method public constructor <init>(Ljavax/obex/ObexTransport;)V
    .registers 3
    .parameter "trans"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljavax/obex/ObexSession;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    .line 57
    const/16 v0, 0x100

    iput v0, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    .line 66
    invoke-interface {p1}, Ljavax/obex/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    .line 67
    invoke-interface {p1}, Ljavax/obex/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z

    .line 70
    return-void
.end method

.method private declared-synchronized setRequestActive()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z

    if-eqz v0, :cond_10

    .line 389
    new-instance v0, Ljava/io/IOException;

    const-string v1, "OBEX request is already being performed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 388
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 391
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_d

    .line 392
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    .line 520
    iget-object v0, p0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 521
    iget-object v0, p0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 522
    return-void
.end method

.method public connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .registers 11
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 73
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    .line 74
    iget-boolean v4, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-eqz v4, :cond_13

    .line 75
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Already connected to server"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_13
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    .line 79
    const/4 v3, 0x4

    .line 80
    .local v3, totalLength:I
    const/4 v0, 0x0

    .line 83
    .local v0, head:[B
    if-eqz p1, :cond_2f

    .line 84
    iget-object v4, p1, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v4, :cond_29

    .line 85
    new-array v4, v7, [B

    iput-object v4, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    .line 86
    iget-object v4, p1, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v5, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_29
    invoke-static {p1, v6}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 89
    array-length v4, v0

    add-int/2addr v3, v4

    .line 100
    :cond_2f
    new-array v1, v3, [B

    .line 103
    .local v1, requestPacket:[B
    aput-byte v7, v1, v6

    .line 104
    aput-byte v6, v1, v8

    .line 105
    const/4 v4, 0x2

    const/4 v5, -0x1

    aput-byte v5, v1, v4

    .line 106
    const/4 v4, 0x3

    const/4 v5, -0x2

    aput-byte v5, v1, v4

    .line 107
    if-eqz v0, :cond_44

    .line 108
    const/4 v4, 0x4

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :cond_44
    array-length v4, v1

    add-int/lit8 v4, v4, 0x3

    const v5, 0xfffe

    if-le v4, v5, :cond_54

    .line 113
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Packet size exceeds max packet size"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_54
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 117
    .local v2, returnHeaderSet:Ljavax/obex/HeaderSet;
    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 128
    iget v4, v2, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_67

    .line 129
    iput-boolean v8, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    .line 131
    :cond_67
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    .line 133
    return-object v2
.end method

.method public delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .registers 4
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v0

    .line 177
    .local v0, op:Ljavax/obex/Operation;
    invoke-interface {v0}, Ljavax/obex/Operation;->getResponseCode()I

    .line 178
    invoke-interface {v0}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v1

    .line 179
    .local v1, returnValue:Ljavax/obex/HeaderSet;
    invoke-interface {v0}, Ljavax/obex/Operation;->close()V

    .line 181
    return-object v1
.end method

.method public disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .registers 9
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 185
    iget-boolean v2, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-nez v2, :cond_10

    .line 186
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not connected to the server"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_10
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    .line 190
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, head:[B
    if-eqz p1, :cond_4a

    .line 194
    iget-object v2, p1, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v2, :cond_28

    .line 195
    new-array v2, v6, [B

    iput-object v2, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    .line 196
    iget-object v2, p1, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v3, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    invoke-static {v2, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    :cond_28
    iget-object v2, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v2, :cond_37

    .line 200
    new-array v2, v5, [B

    iput-object v2, p1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 201
    iget-object v2, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    iget-object v3, p1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    :cond_37
    invoke-static {p1, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 205
    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    if-le v2, v3, :cond_5b

    .line 206
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Packet size exceeds max packet size"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_4a
    iget-object v2, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v2, :cond_5b

    .line 211
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 212
    const/16 v2, -0x35

    aput-byte v2, v0, v4

    .line 213
    iget-object v2, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    const/4 v3, 0x1

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :cond_5b
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .line 218
    .local v1, returnHeaderSet:Ljavax/obex/HeaderSet;
    const/16 v2, 0x81

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 230
    monitor-enter p0

    .line 231
    const/4 v2, 0x0

    :try_start_68
    iput-boolean v2, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    .line 232
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    .line 233
    monitor-exit p0

    .line 235
    return-object v1

    .line 233
    :catchall_6f
    move-exception v2

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw v2
.end method

.method public declared-synchronized ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljavax/obex/ClientSession;->mOpen:Z

    if-nez v0, :cond_10

    .line 371
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 370
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    :cond_10
    monitor-exit p0

    return-void
.end method

.method public get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .registers 8
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 138
    iget-boolean v1, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-nez v1, :cond_10

    .line 139
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not connected to the server"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_10
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    .line 143
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    .line 146
    if-nez p1, :cond_35

    .line 147
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    .line 156
    .local v0, head:Ljavax/obex/HeaderSet;
    :cond_1d
    :goto_1d
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v1, :cond_2c

    .line 157
    new-array v1, v4, [B

    iput-object v1, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 158
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    iget-object v2, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_2c
    new-instance v1, Ljavax/obex/ClientOperation;

    iget v2, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v0, v3}, Ljavax/obex/ClientOperation;-><init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V

    return-object v1

    .line 149
    .end local v0           #head:Ljavax/obex/HeaderSet;
    :cond_35
    move-object v0, p1

    .line 150
    .restart local v0       #head:Ljavax/obex/HeaderSet;
    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v1, :cond_1d

    .line 151
    new-array v1, v5, [B

    iput-object v1, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    .line 152
    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v2, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1d
.end method

.method public getConnectionID()J
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-nez v0, :cond_7

    .line 241
    const-wide/16 v0, -0x1

    .line 243
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    invoke-static {v0}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v0

    goto :goto_6
.end method

.method public put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .registers 8
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 247
    iget-boolean v1, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-nez v1, :cond_10

    .line 248
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not connected to the server"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_10
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    .line 252
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    .line 254
    if-nez p1, :cond_34

    .line 255
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    .line 266
    .local v0, head:Ljavax/obex/HeaderSet;
    :cond_1d
    :goto_1d
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v1, :cond_2c

    .line 268
    new-array v1, v4, [B

    iput-object v1, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 269
    iget-object v1, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    iget-object v2, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    :cond_2c
    new-instance v1, Ljavax/obex/ClientOperation;

    iget v2, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    invoke-direct {v1, v2, p0, v0, v3}, Ljavax/obex/ClientOperation;-><init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V

    return-object v1

    .line 257
    .end local v0           #head:Ljavax/obex/HeaderSet;
    :cond_34
    move-object v0, p1

    .line 259
    .restart local v0       #head:Ljavax/obex/HeaderSet;
    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v1, :cond_1d

    .line 260
    new-array v1, v5, [B

    iput-object v1, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    .line 261
    iget-object v1, v0, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v2, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1d
.end method

.method public sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z
    .registers 23
    .parameter "opCode"
    .parameter "head"
    .parameter "header"
    .parameter "privateInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    if-eqz p2, :cond_15

    .line 412
    move-object/from16 v0, p2

    array-length v0, v0

    move v13, v0

    add-int/lit8 v13, v13, 0x3

    const v14, 0xfffe

    if-le v13, v14, :cond_15

    .line 413
    new-instance v13, Ljava/io/IOException;

    const-string v14, "header too large "

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 418
    :cond_15
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 419
    .local v10, out:Ljava/io/ByteArrayOutputStream;
    move/from16 v0, p1

    int-to-byte v0, v0

    move v13, v0

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 422
    if-nez p2, :cond_70

    .line 423
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 424
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 432
    :goto_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    move-object v13, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/OutputStream;->write([B)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mOutput:Ljava/io/OutputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13

    move v0, v13

    move-object/from16 v1, p3

    iput v0, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v14

    or-int v9, v13, v14

    .line 439
    .local v9, length:I
    const v13, 0xfffe

    if-le v9, v13, :cond_8d

    .line 440
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Packet received exceeds packet size limit"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 426
    .end local v9           #length:I
    :cond_70
    move-object/from16 v0, p2

    array-length v0, v0

    move v13, v0

    add-int/lit8 v13, v13, 0x3

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 427
    move-object/from16 v0, p2

    array-length v0, v0

    move v13, v0

    add-int/lit8 v13, v13, 0x3

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 428
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2b

    .line 442
    .restart local v9       #length:I
    :cond_8d
    const/4 v13, 0x3

    if-le v9, v13, :cond_1ef

    .line 443
    const/4 v7, 0x0

    .line 444
    .local v7, data:[B
    const/16 v13, 0x80

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_fb

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 448
    .local v12, version:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 449
    .local v8, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v14

    add-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ClientSession;->maxPacketSize:I

    .line 452
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ClientSession;->maxPacketSize:I

    move v13, v0

    const v14, 0xfffe

    if-le v13, v14, :cond_d6

    .line 453
    const v13, 0xfffe

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ClientSession;->maxPacketSize:I

    .line 456
    :cond_d6
    const/4 v13, 0x7

    if-le v9, v13, :cond_f9

    .line 457
    const/4 v13, 0x7

    sub-int v13, v9, v13

    new-array v7, v13, [B

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 460
    .local v6, bytesReceived:I
    :goto_e7
    const/4 v13, 0x7

    sub-int v13, v9, v13

    if-eq v6, v13, :cond_124

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    array-length v14, v7

    sub-int/2addr v14, v6

    invoke-virtual {v13, v7, v6, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    add-int/2addr v6, v13

    goto :goto_e7

    .line 465
    .end local v6           #bytesReceived:I
    :cond_f9
    const/4 v13, 0x1

    .line 515
    .end local v7           #data:[B
    .end local v8           #flags:I
    .end local v12           #version:I
    :goto_fa
    return v13

    .line 468
    .restart local v7       #data:[B
    :cond_fb
    const/4 v13, 0x3

    sub-int v13, v9, v13

    new-array v7, v13, [B

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    invoke-virtual {v13, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 471
    .restart local v6       #bytesReceived:I
    :goto_109
    const/4 v13, 0x3

    sub-int v13, v9, v13

    if-eq v6, v13, :cond_11b

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mInput:Ljava/io/InputStream;

    move-object v13, v0

    array-length v14, v7

    sub-int/2addr v14, v6

    invoke-virtual {v13, v7, v6, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    add-int/2addr v6, v13

    goto :goto_109

    .line 474
    :cond_11b
    const/16 v13, 0xff

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_124

    .line 475
    const/4 v13, 0x1

    goto :goto_fa

    .line 479
    :cond_124
    move-object/from16 v0, p3

    move-object v1, v7

    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-result-object v5

    .line 480
    .local v5, body:[B
    if-eqz p4, :cond_137

    if-eqz v5, :cond_137

    .line 481
    const/4 v13, 0x1

    move-object/from16 v0, p4

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V

    .line 484
    :cond_137
    move-object/from16 v0, p3

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object v13, v0

    if-eqz v13, :cond_158

    .line 485
    const/4 v13, 0x4

    new-array v13, v13, [B

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ClientSession;->mConnectionId:[B

    .line 486
    move-object/from16 v0, p3

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ClientSession;->mConnectionId:[B

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x4

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    :cond_158
    move-object/from16 v0, p3

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object v13, v0

    if-eqz v13, :cond_178

    .line 490
    move-object/from16 v0, p3

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->handleAuthResp([B)Z

    move-result v13

    if-nez v13, :cond_178

    .line 491
    invoke-virtual/range {p0 .. p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    .line 492
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Authentication Failed"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 496
    :cond_178
    move-object/from16 v0, p3

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    move v13, v0

    const/16 v14, 0xc1

    if-ne v13, v14, :cond_1ef

    move-object/from16 v0, p3

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object v13, v0

    if-eqz v13, :cond_1ef

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    move-result v13

    if-eqz v13, :cond_1ef

    .line 500
    const/16 v13, 0x4e

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 501
    move-object/from16 v0, p3

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object v13, v0

    array-length v13, v13

    add-int/lit8 v13, v13, 0x3

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 502
    move-object/from16 v0, p3

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object v13, v0

    array-length v13, v13

    add-int/lit8 v13, v13, 0x3

    int-to-byte v13, v13

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 503
    move-object/from16 v0, p3

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object v13, v0

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 504
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p3

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 505
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p3

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 507
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    const/4 v14, 0x3

    sub-int/2addr v13, v14

    new-array v11, v13, [B

    .line 508
    .local v11, sendHeaders:[B
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object v0, v11

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v13

    move v1, v14

    move-object v2, v11

    move v3, v15

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v13

    goto/16 :goto_fa

    .line 515
    .end local v5           #body:[B
    .end local v6           #bytesReceived:I
    .end local v7           #data:[B
    .end local v11           #sendHeaders:[B
    :cond_1ef
    const/4 v13, 0x1

    goto/16 :goto_fa
.end method

.method public setAuthenticator(Ljavax/obex/Authenticator;)V
    .registers 4
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    if-nez p1, :cond_a

    .line 277
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authenticator may not be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_a
    iput-object p1, p0, Ljavax/obex/ClientSession;->mAuthenticator:Ljavax/obex/Authenticator;

    .line 280
    return-void
.end method

.method public setConnectionID(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_17

    .line 169
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection ID is not in a valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_17
    invoke-static {p1, p2}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    .line 172
    return-void
.end method

.method public setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;
    .registers 15
    .parameter "header"
    .parameter "backup"
    .parameter "create"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 283
    iget-boolean v6, p0, Ljavax/obex/ClientSession;->mObexConnected:Z

    if-nez v6, :cond_10

    .line 284
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Not connected to the server"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 286
    :cond_10
    invoke-direct {p0}, Ljavax/obex/ClientSession;->setRequestActive()V

    .line 287
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->ensureOpen()V

    .line 289
    const/4 v5, 0x2

    .line 290
    .local v5, totalLength:I
    const/4 v1, 0x0

    .line 292
    .local v1, head:[B
    if-nez p1, :cond_4f

    .line 293
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 303
    .local v2, headset:Ljavax/obex/HeaderSet;
    :cond_1f
    :goto_1f
    iget-object v6, v2, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v6, :cond_2e

    .line 304
    new-array v6, v9, [B

    iput-object v6, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    .line 305
    iget-object v6, v2, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v7, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    invoke-static {v6, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    :cond_2e
    iget-object v6, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    if-eqz v6, :cond_3d

    .line 310
    new-array v6, v10, [B

    iput-object v6, v2, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 311
    iget-object v6, p0, Ljavax/obex/ClientSession;->mConnectionId:[B

    iget-object v7, v2, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v6, v8, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    :cond_3d
    invoke-static {v2, v8}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v1

    .line 315
    array-length v6, v1

    add-int/2addr v5, v6

    .line 317
    iget v6, p0, Ljavax/obex/ClientSession;->maxPacketSize:I

    if-le v5, v6, :cond_60

    .line 318
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Packet size exceeds max packet size"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 295
    .end local v2           #headset:Ljavax/obex/HeaderSet;
    :cond_4f
    move-object v2, p1

    .line 296
    .restart local v2       #headset:Ljavax/obex/HeaderSet;
    iget-object v6, v2, Ljavax/obex/HeaderSet;->nonce:[B

    if-eqz v6, :cond_1f

    .line 297
    new-array v6, v9, [B

    iput-object v6, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    .line 298
    iget-object v6, v2, Ljavax/obex/HeaderSet;->nonce:[B

    iget-object v7, p0, Ljavax/obex/ClientSession;->mChallengeDigest:[B

    invoke-static {v6, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    .line 321
    :cond_60
    const/4 v0, 0x0

    .line 325
    .local v0, flags:I
    if-eqz p2, :cond_65

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 331
    :cond_65
    if-nez p3, :cond_69

    .line 332
    or-int/lit8 v0, v0, 0x2

    .line 343
    :cond_69
    new-array v3, v5, [B

    .line 344
    .local v3, packet:[B
    int-to-byte v6, v0

    aput-byte v6, v3, v8

    .line 345
    const/4 v6, 0x1

    aput-byte v8, v3, v6

    .line 346
    if-eqz v2, :cond_78

    .line 347
    const/4 v6, 0x2

    array-length v7, v1

    invoke-static {v1, v8, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :cond_78
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    .line 351
    .local v4, returnHeaderSet:Ljavax/obex/HeaderSet;
    const/16 v6, 0x85

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v3, v4, v7}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 360
    invoke-virtual {p0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    .line 362
    return-object v4
.end method

.method declared-synchronized setRequestInactive()V
    .registers 2

    .prologue
    .line 380
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ljavax/obex/ClientSession;->mRequestActive:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 381
    monitor-exit p0

    return-void

    .line 380
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
