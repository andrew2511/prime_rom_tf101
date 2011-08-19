.class public final Ljavax/obex/ServerOperation;
.super Ljava/lang/Object;
.source "ServerOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# instance fields
.field public finalBitSet:Z

.field public isAborted:Z

.field private mClosed:Z

.field private mExceptionString:Ljava/lang/String;

.field private mGetOperation:Z

.field private mHasBody:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Ljavax/obex/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mParent:Ljavax/obex/ServerSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mRequestFinished:Z

.field private mResponseSize:I

.field public replyHeader:Ljavax/obex/HeaderSet;

.field public requestHeader:Ljavax/obex/HeaderSet;


# direct methods
.method public constructor <init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V
    .registers 15
    .parameter "p"
    .parameter "in"
    .parameter "request"
    .parameter "maxSize"
    .parameter "listen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 105
    iput-object p1, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    .line 106
    iput-object p2, p0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    .line 107
    iput p4, p0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    .line 108
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 109
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    .line 110
    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    .line 111
    new-instance v4, Ljavax/obex/PrivateInputStream;

    invoke-direct {v4, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 112
    const/4 v4, 0x3

    iput v4, p0, Ljavax/obex/ServerOperation;->mResponseSize:I

    .line 113
    iput-object p5, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    .line 114
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    .line 115
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    .line 116
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 122
    const/4 v4, 0x2

    if-eq p3, v4, :cond_39

    const/16 v4, 0x82

    if-ne p3, v4, :cond_6b

    .line 126
    :cond_39
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    .line 131
    and-int/lit16 v4, p3, 0x80

    if-nez v4, :cond_64

    .line 132
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 153
    :cond_43
    :goto_43
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 154
    .local v3, length:I
    shl-int/lit8 v4, v3, 0x8

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    add-int v3, v4, v5

    .line 159
    const v4, 0xfffe

    if-le v3, v4, :cond_88

    .line 160
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    const/16 v5, 0xce

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 161
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Packet received was too large"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    .end local v3           #length:I
    :cond_64
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 135
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_43

    .line 137
    :cond_6b
    const/4 v4, 0x3

    if-eq p3, v4, :cond_72

    const/16 v4, 0x83

    if-ne p3, v4, :cond_80

    .line 141
    :cond_72
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    .line 144
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 146
    const/16 v4, 0x83

    if-ne p3, v4, :cond_43

    .line 147
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_43

    .line 150
    :cond_80
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ServerOperation can not handle such request"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    .restart local v3       #length:I
    :cond_88
    const/4 v4, 0x3

    if-le v3, v4, :cond_134

    .line 168
    const/4 v4, 0x3

    sub-int v4, v3, v4

    new-array v2, v4, [B

    .line 169
    .local v2, data:[B
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 171
    .local v1, bytesReceived:I
    :goto_94
    array-length v4, v2

    if-eq v1, v4, :cond_9f

    .line 172
    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {p2, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_94

    .line 175
    :cond_9f
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v4, v2}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-result-object v0

    .line 177
    .local v0, body:[B
    if-eqz v0, :cond_aa

    .line 178
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 181
    :cond_aa
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v4}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_f0

    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v4, :cond_f0

    .line 182
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v5}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 187
    :goto_c9
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v4, :cond_f8

    .line 188
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    invoke-virtual {v4, v5}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v4

    if-nez v4, :cond_f8

    .line 189
    const-string v4, "Authentication Failed"

    iput-object v4, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 190
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    const/16 v5, 0xc1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 191
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 192
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 231
    .end local v0           #body:[B
    .end local v1           #bytesReceived:I
    .end local v2           #data:[B
    :cond_ef
    return-void

    .line 184
    .restart local v0       #body:[B
    .restart local v1       #bytesReceived:I
    .restart local v2       #data:[B
    :cond_f0
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_c9

    .line 197
    :cond_f8
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v4, :cond_12c

    .line 198
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    invoke-virtual {v4, v5}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 200
    iget-object v4, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v5, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 201
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v4, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v5, 0x0

    iget-object v6, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v6, v6, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v7, 0x0

    iget-object v8, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    iget-object v8, v8, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 204
    iget-object v4, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/4 v5, 0x0

    iput-object v5, v4, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 208
    :cond_12c
    if-eqz v0, :cond_15f

    .line 209
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V

    .line 220
    .end local v0           #body:[B
    .end local v1           #bytesReceived:I
    .end local v2           #data:[B
    :cond_134
    :goto_134
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v4, :cond_151

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v4, :cond_151

    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-nez v4, :cond_151

    .line 221
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    .line 222
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-lez v4, :cond_134

    .line 228
    :cond_151
    :goto_151
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-eqz v4, :cond_ef

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    if-nez v4, :cond_ef

    .line 229
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    goto :goto_151

    .line 211
    .restart local v0       #body:[B
    .restart local v1       #bytesReceived:I
    .restart local v2       #data:[B
    :cond_15f
    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v4, :cond_134

    iget-boolean v4, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v4, :cond_134

    .line 212
    const/16 v4, 0x90

    invoke-virtual {p0, v4}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    .line 213
    iget-object v4, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v4}, Ljavax/obex/PrivateInputStream;->available()I

    move-result v4

    if-lez v4, :cond_15f

    goto :goto_134
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Called from a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 676
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .registers 7
    .parameter "sendEmpty"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 251
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    if-nez v0, :cond_2d

    .line 252
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v0, :cond_2b

    .line 253
    if-eqz p1, :cond_15

    .line 254
    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_34

    move v0, v2

    .line 269
    :goto_13
    monitor-exit p0

    return v0

    .line 257
    :cond_15
    :try_start_15
    iget v0, p0, Ljavax/obex/ServerOperation;->mResponseSize:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_22

    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v0}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 258
    :cond_22
    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    move v0, v2

    .line 259
    goto :goto_13

    :cond_29
    move v0, v3

    .line 261
    goto :goto_13

    :cond_2b
    move v0, v3

    .line 265
    goto :goto_13

    .line 268
    :cond_2d
    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_34

    move v0, v2

    .line 269
    goto :goto_13

    .line 251
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ensureNotDone()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    return-void
.end method

.method public ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 684
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_c
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mClosed:Z

    if-eqz v0, :cond_18

    .line 687
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_18
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .registers 6

    .prologue
    .line 606
    iget-object v3, p0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v3}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v1

    .line 607
    .local v1, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    .line 608
    iget-object v3, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    iput-object v4, v3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 613
    :goto_11
    iget-object v3, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 615
    .local v0, headerArray:[B
    array-length v3, v0

    return v3

    .line 610
    .end local v0           #headerArray:[B
    :cond_1a
    iget-object v3, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    invoke-static {v1, v2}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v4

    iput-object v4, v3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_11
.end method

.method public getLength()J
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 589
    :try_start_2
    iget-object v2, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/16 v3, 0xc3

    invoke-virtual {v2, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 591
    .local v1, temp:Ljava/lang/Long;
    if-nez v1, :cond_10

    move-wide v2, v4

    .line 597
    .end local v1           #temp:Ljava/lang/Long;
    :goto_f
    return-wide v2

    .line 594
    .restart local v1       #temp:Ljava/lang/Long;
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_15

    move-result-wide v2

    goto :goto_f

    .line 596
    .end local v1           #temp:Ljava/lang/Long;
    :catch_15
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    move-wide v2, v4

    .line 597
    goto :goto_f
.end method

.method public getMaxPacketSize()I
    .registers 3

    .prologue
    .line 602
    iget v0, p0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    const/4 v1, 0x6

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getReceivedHeader()Ljavax/obex/HeaderSet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 515
    iget-object v0, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Called from a server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 574
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-object v1, p0

    .line 576
    :goto_b
    return-object v1

    .line 575
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 576
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isValidBody()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mHasBody:Z

    return v0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 625
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 645
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_f

    .line 646
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available, stream already opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_f
    iget-boolean v0, p0, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    if-nez v0, :cond_1b

    .line 650
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no  output streams available ,request not finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_1b
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-nez v0, :cond_2a

    .line 654
    new-instance v0, Ljavax/obex/PrivateOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    iput-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 656
    :cond_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutputOpen:Z

    .line 657
    iget-object v0, p0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    return-object v0
.end method

.method public sendHeaders(Ljavax/obex/HeaderSet;)V
    .registers 7
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0}, Ljavax/obex/ServerOperation;->ensureOpen()V

    .line 530
    if-nez p1, :cond_d

    .line 531
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_d
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 535
    .local v0, headerList:[I
    if-eqz v0, :cond_27

    .line 536
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_27

    .line 537
    iget-object v2, p0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 541
    .end local v1           #i:I
    :cond_27
    return-void
.end method

.method public declared-synchronized sendReply(I)Z
    .registers 27
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    .local v16, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v12

    .line 288
    .local v12, id:J
    const-wide/16 v20, -0x1

    cmp-long v20, v12, v20

    if-nez v20, :cond_bf

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 294
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v10

    .line 295
    .local v10, headerArray:[B
    const/4 v6, -0x1

    .line 296
    .local v6, bodyLength:I
    const/4 v15, -0x1

    .line 298
    .local v15, orginalBodyLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v20, v0

    if-eqz v20, :cond_45

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v6

    .line 300
    move v15, v6

    .line 303
    :cond_45
    move-object v0, v10

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_108

    .line 305
    const/4 v9, 0x0

    .line 306
    .local v9, end:I
    const/16 v18, 0x0

    .line 308
    .local v18, start:I
    :goto_5a
    move-object v0, v10

    array-length v0, v0

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-eq v0, v1, :cond_ff

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v20, v0

    const/16 v21, 0x3

    sub-int v20, v20, v21

    move-object v0, v10

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    move-result v9

    .line 311
    const/16 v20, -0x1

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_d1

    .line 313
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v20, v0

    if-eqz v20, :cond_96

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/PrivateInputStream;->close()V

    .line 319
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a7

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/PrivateOutputStream;->close()V

    .line 322
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0xd0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 323
    new-instance v20, Ljava/io/IOException;

    const-string v21, "OBEX Packet exceeds max packet size"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_bc
    .catchall {:try_start_1 .. :try_end_bc} :catchall_bc

    .line 284
    .end local v6           #bodyLength:I
    .end local v9           #end:I
    .end local v10           #headerArray:[B
    .end local v12           #id:J
    .end local v15           #orginalBodyLength:I
    .end local v16           #out:Ljava/io/ByteArrayOutputStream;
    .end local v18           #start:I
    :catchall_bc
    move-exception v20

    monitor-exit p0

    throw v20

    .line 291
    .restart local v12       #id:J
    .restart local v16       #out:Ljava/io/ByteArrayOutputStream;
    :cond_bf
    :try_start_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    invoke-static {v12, v13}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto/16 :goto_24

    .line 325
    .restart local v6       #bodyLength:I
    .restart local v9       #end:I
    .restart local v10       #headerArray:[B
    .restart local v15       #orginalBodyLength:I
    .restart local v18       #start:I
    :cond_d1
    sub-int v20, v9, v18

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 326
    .local v17, sendHeader:[B
    const/16 v20, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v10

    move/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V
    :try_end_fb
    .catchall {:try_start_bf .. :try_end_fb} :catchall_bc

    .line 329
    move/from16 v18, v9

    .line 330
    goto/16 :goto_5a

    .line 332
    .end local v17           #sendHeader:[B
    :cond_ff
    if-lez v6, :cond_105

    .line 333
    const/16 v20, 0x1

    .line 491
    .end local v9           #end:I
    .end local v18           #start:I
    :goto_103
    monitor-exit p0

    return v20

    .line 335
    .restart local v9       #end:I
    .restart local v18       #start:I
    :cond_105
    const/16 v20, 0x0

    goto :goto_103

    .line 339
    .end local v9           #end:I
    .end local v18           #start:I
    :cond_108
    :try_start_108
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->mGetOperation:Z

    move/from16 v20, v0

    if-eqz v20, :cond_126

    const/16 v20, 0xa0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_126

    .line 345
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 348
    :cond_126
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v20, v0

    if-nez v20, :cond_142

    move-object v0, v10

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v21, v0

    const/16 v22, 0x14

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1b4

    .line 349
    :cond_142
    if-lez v6, :cond_1b4

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v20, v0

    move-object v0, v10

    array-length v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/16 v21, 0x6

    sub-int v20, v20, v21

    move v0, v6

    move/from16 v1, v20

    if-le v0, v1, :cond_169

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerOperation;->mMaxPacketLength:I

    move/from16 v20, v0

    move-object v0, v10

    array-length v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    const/16 v21, 0x6

    sub-int v6, v20, v21

    .line 359
    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    move-result-object v5

    .line 366
    .local v5, body:[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v20, v0

    if-nez v20, :cond_18a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    move-result v20

    if-eqz v20, :cond_28e

    .line 367
    :cond_18a
    const/16 v20, 0x49

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 372
    :goto_193
    add-int/lit8 v6, v6, 0x3

    .line 373
    shr-int/lit8 v20, v6, 0x8

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    move v0, v6

    int-to-byte v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 379
    .end local v5           #body:[B
    :cond_1b4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e9

    const/16 v20, 0xa0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e9

    if-gtz v15, :cond_1e9

    .line 380
    const/16 v20, 0x49

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    const/4 v15, 0x3

    .line 382
    shr-int/lit8 v20, v15, 0x8

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 383
    move v0, v15

    int-to-byte v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    :cond_1e9
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerOperation;->mResponseSize:I

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 390
    const/16 v20, 0x90

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_4cc

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v11

    .line 392
    .local v11, headerID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v14

    .line 393
    .local v14, length:I
    shl-int/lit8 v20, v14, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->read()I

    move-result v21

    add-int v14, v20, v21

    .line 394
    const/16 v20, 0x2

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_2f2

    const/16 v20, 0x82

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_2f2

    const/16 v20, 0x3

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_2f2

    const/16 v20, 0x83

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_2f2

    .line 399
    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-le v0, v1, :cond_299

    .line 400
    const/16 v20, 0x3

    sub-int v20, v14, v20

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 402
    .local v19, temp:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 404
    .local v7, bytesReceived:I
    :goto_269
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move v0, v7

    move/from16 v1, v20

    if-eq v0, v1, :cond_299

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move v2, v7

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    add-int v7, v7, v20

    goto :goto_269

    .line 369
    .end local v7           #bytesReceived:I
    .end local v11           #headerID:I
    .end local v14           #length:I
    .end local v19           #temp:[B
    .restart local v5       #body:[B
    :cond_28e
    const/16 v20, 0x48

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_193

    .line 413
    .end local v5           #body:[B
    .restart local v11       #headerID:I
    .restart local v14       #length:I
    :cond_299
    const/16 v20, 0xff

    move v0, v11

    move/from16 v1, v20

    if-ne v0, v1, :cond_2cd

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0xa0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 415
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 416
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 417
    const-string v20, "Abort Received"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 418
    new-instance v20, Ljava/io/IOException;

    const-string v21, "Abort Received"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 420
    :cond_2cd
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0xc0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 421
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 422
    const-string v20, "Bad Request Received"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 423
    new-instance v20, Ljava/io/IOException;

    const-string v21, "Bad Request Received"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 427
    :cond_2f2
    const/16 v20, 0x82

    move v0, v11

    move/from16 v1, v20

    if-ne v0, v1, :cond_31e

    .line 428
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->finalBitSet:Z

    .line 436
    :cond_301
    :goto_301
    const v20, 0xfffe

    move v0, v14

    move/from16 v1, v20

    if-le v0, v1, :cond_32e

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0xce

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 438
    new-instance v20, Ljava/io/IOException;

    const-string v21, "Packet received was too large"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 429
    :cond_31e
    const/16 v20, 0x83

    move v0, v11

    move/from16 v1, v20

    if-ne v0, v1, :cond_301

    .line 430
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mRequestFinished:Z

    goto :goto_301

    .line 444
    :cond_32e
    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-le v0, v1, :cond_4c8

    .line 445
    const/16 v20, 0x3

    sub-int v20, v14, v20

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object v8, v0

    .line 446
    .local v8, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 448
    .restart local v7       #bytesReceived:I
    :goto_34b
    move-object v0, v8

    array-length v0, v0

    move/from16 v20, v0

    move v0, v7

    move/from16 v1, v20

    if-eq v0, v1, :cond_36d

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object v0, v8

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v7

    move-object/from16 v0, v20

    move-object v1, v8

    move v2, v7

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    add-int v7, v7, v20

    goto :goto_34b

    .line 452
    :cond_36d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-result-object v5

    .line 453
    .restart local v5       #body:[B
    if-eqz v5, :cond_384

    .line 454
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mHasBody:Z

    .line 456
    :cond_384
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_410

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_410

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    .line 463
    :goto_3bb
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_42a

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v20

    if-nez v20, :cond_41c

    .line 465
    const-string v20, "Authentication Failed"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerOperation;->mExceptionString:Ljava/lang/String;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0xc1

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    .line 467
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/obex/ServerOperation;->mClosed:Z

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 469
    const/16 v20, 0x0

    goto/16 :goto_103

    .line 460
    :cond_410
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x1

    invoke-virtual/range {v20 .. v22}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_3bb

    .line 471
    :cond_41c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 474
    :cond_42a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_4b6

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mParent:Ljavax/obex/ServerSession;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 484
    :cond_4b6
    if-eqz v5, :cond_4c8

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object v1, v5

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/obex/PrivateInputStream;->writeBytes([BI)V
    :try_end_4c8
    .catchall {:try_start_108 .. :try_end_4c8} :catchall_bc

    .line 489
    .end local v5           #body:[B
    .end local v7           #bytesReceived:I
    .end local v8           #data:[B
    :cond_4c8
    const/16 v20, 0x1

    goto/16 :goto_103

    .line 491
    .end local v11           #headerID:I
    .end local v14           #length:I
    :cond_4cc
    const/16 v20, 0x0

    goto/16 :goto_103
.end method

.method public streamClosed(Z)V
    .registers 2
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    return-void
.end method
