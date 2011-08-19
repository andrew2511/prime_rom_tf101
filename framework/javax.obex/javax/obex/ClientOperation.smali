.class public final Ljavax/obex/ClientOperation;
.super Ljava/lang/Object;
.source "ClientOperation.java"

# interfaces
.implements Ljavax/obex/Operation;
.implements Ljavax/obex/BaseStream;


# instance fields
.field private mEndOfBodySent:Z

.field private mExceptionMessage:Ljava/lang/String;

.field private mGetOperation:Z

.field private mInputOpen:Z

.field private mMaxPacketSize:I

.field private mOperationDone:Z

.field private mParent:Ljavax/obex/ClientSession;

.field private mPrivateInput:Ljavax/obex/PrivateInputStream;

.field private mPrivateInputOpen:Z

.field private mPrivateOutput:Ljavax/obex/PrivateOutputStream;

.field private mPrivateOutputOpen:Z

.field private mReplyHeader:Ljavax/obex/HeaderSet;

.field private mRequestHeader:Ljavax/obex/HeaderSet;


# direct methods
.method public constructor <init>(ILjavax/obex/ClientSession;Ljavax/obex/HeaderSet;Z)V
    .registers 11
    .parameter "maxSize"
    .parameter "p"
    .parameter "header"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    .line 88
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 90
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 91
    iput p1, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    .line 92
    iput-boolean p4, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    .line 94
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 95
    iput-boolean v5, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 96
    iput-object v3, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 97
    iput-object v3, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 99
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    .line 101
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    .line 103
    invoke-virtual {p3}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 105
    .local v0, headerList:[I
    if-eqz v0, :cond_42

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    array-length v2, v0

    if-ge v1, v2, :cond_42

    .line 108
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p3, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 112
    .end local v1           #i:I
    :cond_42
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v2, :cond_5b

    .line 113
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 114
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthChall:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :cond_5b
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v2, :cond_74

    .line 119
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 120
    iget-object v2, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v4, p3, Ljavax/obex/HeaderSet;->mAuthResp:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :cond_74
    return-void
.end method

.method private sendRequest(I)Z
    .registers 14
    .parameter "opCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v5, 0x0

    .line 399
    .local v5, returnValue:Z
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 400
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v1, -0x1

    .line 401
    .local v1, bodyLength:I
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v3

    .line 402
    .local v3, headerArray:[B
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_18

    .line 403
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v1

    .line 414
    :cond_18
    array-length v8, v3

    add-int/lit8 v8, v8, 0x3

    iget v9, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    if-le v8, v9, :cond_7f

    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, end:I
    const/4 v7, 0x0

    .line 419
    .local v7, start:I
    :goto_21
    array-length v8, v3

    if-eq v2, v8, :cond_79

    .line 421
    iget v8, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    const/4 v9, 0x3

    sub-int/2addr v8, v9

    invoke-static {v3, v7, v8}, Ljavax/obex/ObexHelper;->findHeaderEnd([BII)I

    move-result v2

    .line 424
    const/4 v8, -0x1

    if-ne v2, v8, :cond_56

    .line 425
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 426
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->abort()V

    .line 427
    const-string v8, "Header larger then can be sent in a packet"

    iput-object v8, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 428
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 430
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-eqz v8, :cond_45

    .line 431
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateInputStream;->close()V

    .line 434
    :cond_45
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_4e

    .line 435
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->close()V

    .line 437
    :cond_4e
    new-instance v8, Ljava/io/IOException;

    const-string v9, "OBEX Packet exceeds max packet size"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 440
    :cond_56
    sub-int v8, v2, v7

    new-array v6, v8, [B

    .line 441
    .local v6, sendHeader:[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-static {v3, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    iget-object v9, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v10, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v8, p1, v6, v9, v10}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v8

    if-nez v8, :cond_6d

    .line 443
    const/4 v8, 0x0

    .line 529
    .end local v2           #end:I
    .end local v6           #sendHeader:[B
    .end local v7           #start:I
    :goto_6c
    return v8

    .line 446
    .restart local v2       #end:I
    .restart local v6       #sendHeader:[B
    .restart local v7       #start:I
    :cond_6d
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v8, v8, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v9, 0x90

    if-eq v8, v9, :cond_77

    .line 447
    const/4 v8, 0x0

    goto :goto_6c

    .line 450
    :cond_77
    move v7, v2

    .line 451
    goto :goto_21

    .line 453
    .end local v6           #sendHeader:[B
    :cond_79
    if-lez v1, :cond_7d

    .line 454
    const/4 v8, 0x1

    goto :goto_6c

    .line 456
    :cond_7d
    const/4 v8, 0x0

    goto :goto_6c

    .line 459
    .end local v2           #end:I
    .end local v7           #start:I
    :cond_7f
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 462
    if-lez v1, :cond_c5

    .line 468
    iget v8, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    array-length v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x6

    sub-int/2addr v8, v9

    if-le v1, v8, :cond_94

    .line 469
    const/4 v5, 0x1

    .line 471
    iget v8, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    array-length v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x6

    sub-int v1, v8, v9

    .line 474
    :cond_94
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8, v1}, Ljavax/obex/PrivateOutputStream;->readBytes(I)[B

    move-result-object v0

    .line 481
    .local v0, body:[B
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_f9

    if-nez v5, :cond_f9

    iget-boolean v8, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    if-nez v8, :cond_f9

    and-int/lit16 v8, p1, 0x80

    if-eqz v8, :cond_f9

    .line 483
    const/16 v8, 0x49

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 484
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    .line 489
    :goto_b4
    add-int/lit8 v1, v1, 0x3

    .line 490
    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 491
    int-to-byte v8, v1

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    if-eqz v0, :cond_c5

    .line 494
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 498
    .end local v0           #body:[B
    :cond_c5
    iget-boolean v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v8, :cond_e3

    if-gtz v1, :cond_e3

    iget-boolean v8, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    if-nez v8, :cond_e3

    .line 500
    and-int/lit16 v8, p1, 0x80

    if-nez v8, :cond_ff

    .line 501
    const/16 v8, 0x48

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 508
    :goto_d8
    const/4 v1, 0x3

    .line 509
    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 510
    int-to-byte v8, v1

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 513
    :cond_e3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-nez v8, :cond_10b

    .line 514
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/4 v9, 0x0

    iget-object v10, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v8, p1, v9, v10, v11}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v8

    if-nez v8, :cond_108

    .line 515
    const/4 v8, 0x0

    goto/16 :goto_6c

    .line 486
    .restart local v0       #body:[B
    :cond_f9
    const/16 v8, 0x48

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_b4

    .line 503
    .end local v0           #body:[B
    :cond_ff
    const/16 v8, 0x49

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 504
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljavax/obex/ClientOperation;->mEndOfBodySent:Z

    goto :goto_d8

    :cond_108
    move v8, v5

    .line 517
    goto/16 :goto_6c

    .line 519
    :cond_10b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_124

    iget-object v8, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iget-object v10, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v11, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v8, p1, v9, v10, v11}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    move-result v8

    if-nez v8, :cond_124

    .line 521
    const/4 v8, 0x0

    goto/16 :goto_6c

    .line 526
    :cond_124
    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v8, :cond_131

    iget-object v8, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v8}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_131

    .line 527
    const/4 v5, 0x1

    :cond_131
    move v8, v5

    .line 529
    goto/16 :goto_6c
.end method

.method private declared-synchronized startProcessing()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x90

    .line 540
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v1, :cond_e

    .line 541
    new-instance v1, Ljavax/obex/PrivateInputStream;

    invoke-direct {v1, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v1, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 543
    :cond_e
    const/4 v0, 0x1

    .line 545
    .local v0, more:Z
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v1, :cond_48

    .line 546
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_46

    .line 547
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 548
    :goto_1d
    if-eqz v0, :cond_2b

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_2b

    .line 549
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    goto :goto_1d

    .line 552
    :cond_2b
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_3d

    .line 553
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x83

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 555
    :cond_3d
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_46

    .line 556
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_7c

    .line 577
    :cond_46
    :goto_46
    monitor-exit p0

    return-void

    .line 561
    :cond_48
    :try_start_48
    iget-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v1, :cond_60

    .line 562
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x90

    iput v2, v1, Ljavax/obex/HeaderSet;->responseCode:I

    .line 563
    :goto_52
    if-eqz v0, :cond_60

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_60

    .line 564
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v0

    goto :goto_52

    .line 569
    :cond_60
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v1, v6, :cond_72

    .line 570
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v2, 0x82

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 573
    :cond_72
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v1, v1, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v1, v6, :cond_46

    .line 574
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_7b
    .catchall {:try_start_48 .. :try_end_7b} :catchall_7c

    goto :goto_46

    .line 540
    .end local v0           #more:Z
    :catchall_7c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 385
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_a

    .line 386
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->startProcessing()V

    .line 388
    :cond_a
    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x90

    .line 134
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 136
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v0, v1, :cond_1b

    .line 137
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 134
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_1b
    :try_start_1b
    const-string v0, "Operation aborted"

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 141
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_4a

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v0, v1, :cond_4a

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 147
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v1, 0xff

    const/4 v2, 0x0

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 149
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_47

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response code from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_47
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    .line 156
    :cond_4a
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->close()V
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_18

    .line 157
    monitor-exit p0

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    .line 305
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 306
    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 307
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->setRequestInactive()V

    .line 308
    return-void
.end method

.method public declared-synchronized continueOperation(ZZ)Z
    .registers 10
    .parameter "sendEmpty"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x90

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 590
    monitor-enter p0

    :try_start_5
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v0, :cond_44

    .line 591
    if-eqz p2, :cond_27

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_27

    .line 593
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/16 v1, 0x83

    const/4 v2, 0x0

    iget-object v3, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    .line 597
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v0, v6, :cond_24

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_6d

    :cond_24
    move v0, v5

    .line 633
    :goto_25
    monitor-exit p0

    return v0

    .line 603
    :cond_27
    if-nez p2, :cond_3e

    :try_start_29
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_3e

    .line 606
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_38

    .line 607
    new-instance v0, Ljavax/obex/PrivateInputStream;

    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 609
    :cond_38
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move v0, v5

    .line 610
    goto :goto_25

    .line 612
    :cond_3e
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_6b

    move v0, v1

    .line 613
    goto :goto_25

    .line 617
    :cond_44
    if-nez p2, :cond_5d

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_5d

    .line 619
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_57

    .line 620
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v1, 0x90

    iput v1, v0, Ljavax/obex/HeaderSet;->responseCode:I

    .line 622
    :cond_57
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move v0, v5

    .line 623
    goto :goto_25

    .line 624
    :cond_5d
    if-eqz p2, :cond_65

    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v0, :cond_65

    move v0, v1

    .line 626
    goto :goto_25

    .line 628
    :cond_65
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z
    :try_end_67
    .catchall {:try_start_29 .. :try_end_67} :catchall_6d

    if-eqz v0, :cond_6b

    move v0, v1

    .line 629
    goto :goto_25

    :cond_6b
    move v0, v1

    .line 633
    goto :goto_25

    .line 590
    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ensureNotDone()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v0, :cond_c

    .line 358
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has completed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_c
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
    .line 367
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->ensureOpen()V

    .line 369
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 370
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Ljavax/obex/ClientOperation;->mExceptionMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_11
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mInputOpen:Z

    if-nez v0, :cond_1d

    .line 373
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1d
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderLength()I
    .registers 4

    .prologue
    .line 286
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 287
    .local v0, headerArray:[B
    array-length v1, v0

    return v1
.end method

.method public getLength()J
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 211
    :try_start_2
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v3, 0xc3

    invoke-virtual {v2, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 213
    .local v1, temp:Ljava/lang/Long;
    if-nez v1, :cond_10

    move-wide v2, v4

    .line 219
    .end local v1           #temp:Ljava/lang/Long;
    :goto_f
    return-wide v2

    .line 216
    .restart local v1       #temp:Ljava/lang/Long;
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_15

    move-result-wide v2

    goto :goto_f

    .line 218
    .end local v1           #temp:Ljava/lang/Long;
    :catch_15
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    move-wide v2, v4

    .line 219
    goto :goto_f
.end method

.method public getMaxPacketSize()I
    .registers 3

    .prologue
    .line 281
    iget v0, p0, Ljavax/obex/ClientOperation;->mMaxPacketSize:I

    const/4 v1, 0x6

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getHeaderLength()I

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
    .line 318
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 320
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    return-object v0
.end method

.method public declared-synchronized getResponseCode()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_13

    .line 173
    :cond_10
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    .line 176
    :cond_13
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v0, v0, Ljavax/obex/HeaderSet;->responseCode:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v0

    .line 171
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-object v1, p0

    .line 198
    :goto_b
    return-object v1

    .line 197
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 198
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

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
    .line 296
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 232
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    if-eqz v0, :cond_f

    .line 233
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more input streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_f
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-eqz v0, :cond_1c

    .line 236
    invoke-direct {p0}, Ljavax/obex/ClientOperation;->validateConnection()V

    .line 243
    :cond_16
    :goto_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateInputOpen:Z

    .line 245
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    return-object v0

    .line 238
    :cond_1c
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v0, :cond_16

    .line 239
    new-instance v0, Ljavax/obex/PrivateInputStream;

    invoke-direct {v0, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    goto :goto_16
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 265
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureNotDone()V

    .line 267
    iget-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    if-eqz v0, :cond_12

    .line 268
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no more output streams available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_12
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-nez v0, :cond_21

    .line 272
    new-instance v0, Ljavax/obex/PrivateOutputStream;

    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljavax/obex/PrivateOutputStream;-><init>(Ljavax/obex/BaseStream;I)V

    iput-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    .line 275
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutputOpen:Z

    .line 277
    iget-object v0, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

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
    .line 334
    invoke-virtual {p0}, Ljavax/obex/ClientOperation;->ensureOpen()V

    .line 335
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_f

    .line 336
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Operation has already exchanged all data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_f
    if-nez p1, :cond_19

    .line 340
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Headers may not be null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_19
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v0

    .line 344
    .local v0, headerList:[I
    if-eqz v0, :cond_33

    .line 345
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    array-length v2, v0

    if-ge v1, v2, :cond_33

    .line 346
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    aget v3, v0, v1

    aget v4, v0, v1

    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 349
    .end local v1           #i:I
    :cond_33
    return-void
.end method

.method public streamClosed(Z)V
    .registers 11
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v8, 0x83

    const/4 v7, 0x1

    const/16 v6, 0x90

    .line 643
    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mGetOperation:Z

    if-nez v2, :cond_58

    .line 644
    if-nez p1, :cond_4f

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_4f

    .line 647
    const/4 v1, 0x1

    .line 649
    .local v1, more:Z
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_28

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_28

    .line 650
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 651
    .local v0, headerArray:[B
    array-length v2, v0

    if-gtz v2, :cond_28

    .line 652
    const/4 v1, 0x0

    .line 655
    .end local v0           #headerArray:[B
    :cond_28
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v3, :cond_32

    .line 656
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 659
    :cond_32
    :goto_32
    if-eqz v1, :cond_40

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_40

    .line 660
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v1

    goto :goto_32

    .line 668
    :cond_40
    :goto_40
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_4c

    .line 670
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    goto :goto_40

    .line 672
    :cond_4c
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    .line 725
    .end local v1           #more:Z
    :cond_4e
    :goto_4e
    return-void

    .line 673
    :cond_4f
    if-eqz p1, :cond_4e

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-eqz v2, :cond_4e

    .line 675
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_4e

    .line 678
    :cond_58
    if-eqz p1, :cond_88

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_88

    .line 683
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v3, :cond_68

    .line 684
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 687
    :cond_68
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_74

    .line 688
    invoke-direct {p0, v8}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v2

    if-nez v2, :cond_68

    .line 692
    :cond_74
    :goto_74
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_85

    .line 693
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mParent:Ljavax/obex/ClientSession;

    const/4 v3, 0x0

    iget-object v4, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget-object v5, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    invoke-virtual {v2, v8, v3, v4, v5}, Ljavax/obex/ClientSession;->sendRequest(I[BLjavax/obex/HeaderSet;Ljavax/obex/PrivateInputStream;)Z

    goto :goto_74

    .line 695
    :cond_85
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto :goto_4e

    .line 696
    :cond_88
    if-nez p1, :cond_4e

    iget-boolean v2, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    if-nez v2, :cond_4e

    .line 700
    const/4 v1, 0x1

    .line 702
    .restart local v1       #more:Z
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_a5

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_a5

    .line 703
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mRequestHeader:Ljavax/obex/HeaderSet;

    invoke-static {v2, v4}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v0

    .line 704
    .restart local v0       #headerArray:[B
    array-length v2, v0

    if-gtz v2, :cond_a5

    .line 705
    const/4 v1, 0x0

    .line 708
    .end local v0           #headerArray:[B
    :cond_a5
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    if-nez v2, :cond_b0

    .line 709
    new-instance v2, Ljavax/obex/PrivateInputStream;

    invoke-direct {v2, p0}, Ljavax/obex/PrivateInputStream;-><init>(Ljavax/obex/BaseStream;)V

    iput-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateInput:Ljavax/obex/PrivateInputStream;

    .line 711
    :cond_b0
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    if-eqz v2, :cond_bd

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mPrivateOutput:Ljavax/obex/PrivateOutputStream;

    invoke-virtual {v2}, Ljavax/obex/PrivateOutputStream;->size()I

    move-result v2

    if-gtz v2, :cond_bd

    .line 712
    const/4 v1, 0x0

    .line 714
    :cond_bd
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iput v6, v2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 715
    :goto_c1
    if-eqz v1, :cond_cf

    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-ne v2, v6, :cond_cf

    .line 716
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    move-result v1

    goto :goto_c1

    .line 718
    :cond_cf
    invoke-direct {p0, v8}, Ljavax/obex/ClientOperation;->sendRequest(I)Z

    .line 720
    iget-object v2, p0, Ljavax/obex/ClientOperation;->mReplyHeader:Ljavax/obex/HeaderSet;

    iget v2, v2, Ljavax/obex/HeaderSet;->responseCode:I

    if-eq v2, v6, :cond_4e

    .line 721
    iput-boolean v7, p0, Ljavax/obex/ClientOperation;->mOperationDone:Z

    goto/16 :goto_4e
.end method
