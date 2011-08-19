.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ServerHandshakeImpl.java"


# instance fields
.field private privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "owner"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    .line 69
    return-void
.end method

.method private findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 3
    .parameter "session_id"

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object p0
.end method

.method private selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .registers 11
    .parameter "clientSuites"

    .prologue
    .line 634
    move-object v0, p1

    .local v0, arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_4
    if-ge v5, v6, :cond_27

    aget-object v2, v0, v5

    .line 635
    .local v2, clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    iget-boolean v8, v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v8, :cond_10

    .line 634
    .end local v5           #i$:I
    :cond_c
    add-int/lit8 v4, v5, 0x1

    .restart local v4       #i$:I
    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_4

    .line 639
    :cond_10
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v1

    .local v1, arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_18
    if-ge v4, v7, :cond_c

    aget-object v3, v1, v4

    .line 640
    .local v3, enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    move-object v8, v2

    .line 646
    .end local v1           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v2           #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v3           #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :goto_23
    return-object v8

    .line 639
    .restart local v1       #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v2       #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v3       #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 646
    .end local v1           #arr$:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v2           #clientSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v3           #enabledCipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .restart local v5       #i$:I
    :cond_27
    const/4 v8, 0x0

    goto :goto_23
.end method


# virtual methods
.method protected makeFinished()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 604
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v2, v2, v3

    if-ne v2, v3, :cond_2f

    move v0, v3

    .line 605
    .local v0, isTLS:Z
    :goto_a
    if-eqz v0, :cond_32

    .line 606
    const/16 v2, 0xc

    new-array v1, v2, [B

    .line 607
    .local v1, verify_data:[B
    const-string v2, "server finished"

    invoke-virtual {p0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 612
    :goto_15
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 613
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 614
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    if-eqz v2, :cond_42

    .line 615
    if-eqz v0, :cond_3c

    .line 616
    const-string v2, "client finished"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 620
    :goto_2c
    iput v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    .line 625
    :goto_2e
    return-void

    .line 604
    .end local v0           #isTLS:Z
    .end local v1           #verify_data:[B
    :cond_2f
    const/4 v2, 0x0

    move v0, v2

    goto :goto_a

    .line 609
    .restart local v0       #isTLS:Z
    :cond_32
    const/16 v2, 0x24

    new-array v1, v2, [B

    .line 610
    .restart local v1       #verify_data:[B
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerVerifyDataSSLv3([B[B)V

    goto :goto_15

    .line 618
    :cond_3c
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_2c

    .line 622
    :cond_42
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 623
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    goto :goto_2e
.end method

.method processClientHello()V
    .registers 40

    .prologue
    .line 329
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v5, v5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_140

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    aget-byte v5, v5, v23

    if-nez v5, :cond_13c

    .line 338
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported([B)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 339
    const/16 v5, 0x46

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROTOCOL VERSION. Unsupported client version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 345
    :cond_5b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v5, v5

    if-eqz v5, :cond_99

    .line 350
    const/16 v32, 0x0

    .line 353
    .local v32, reuseCurrent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    if-eqz v5, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_14f

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_14d

    .line 356
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    .line 383
    .end local v32           #reuseCurrent:Z
    :cond_99
    :goto_99
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move v5, v0

    if-eqz v5, :cond_1bb

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    iget-object v9, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 387
    .local v9, cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/16 v23, 0x0

    :goto_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v5, v5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_1ae

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v5, v5, v23

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1aa

    .line 414
    :goto_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v6, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 419
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getId()[B

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Ljava/security/SecureRandom;[B[BLorg/apache/harmony/xnet/provider/jsse/CipherSuite;B)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v6, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move v5, v0

    if-eqz v5, :cond_242

    .line 425
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendChangeCipherSpec()V

    .line 596
    .end local v9           #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :goto_13b
    return-void

    .line 329
    :cond_13c
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 334
    :cond_140
    const/16 v5, 0x28

    const-string v6, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_1a

    .line 359
    .restart local v32       #reuseCurrent:Z
    :cond_14d
    const/16 v32, 0x1

    .line 363
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v34

    .line 364
    .local v34, sessionToResume:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    if-eqz v34, :cond_165

    invoke-virtual/range {v34 .. v34}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v5

    if-nez v5, :cond_197

    .line 365
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v5

    if-nez v5, :cond_18f

    .line 366
    if-eqz v32, :cond_184

    .line 368
    const/16 v5, 0x64

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendWarningAlert(B)V

    .line 369
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    .line 370
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clearMessages()V

    goto :goto_13b

    .line 374
    :cond_184
    const/16 v5, 0x28

    const-string v6, "SSL Session may not be created"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 376
    :cond_18f
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto/16 :goto_99

    .line 378
    :cond_197
    invoke-virtual/range {v34 .. v34}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 379
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    goto/16 :goto_99

    .line 387
    .end local v32           #reuseCurrent:Z
    .end local v34           #sessionToResume:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .restart local v9       #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_1aa
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_a9

    .line 392
    :cond_1ae
    const/16 v5, 0x28

    const-string v6, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_c5

    .line 396
    .end local v9           #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v9

    .line 397
    .restart local v9       #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    if-nez v9, :cond_1d6

    .line 398
    const/16 v5, 0x28

    const-string v6, "HANDSHAKE FAILURE. NO COMMON SUITE"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 400
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v5

    if-nez v5, :cond_1ec

    .line 401
    const/16 v5, 0x28

    const-string v6, "SSL Session may not be created"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 404
    :cond_1ec
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object v5, v0

    if-eqz v5, :cond_222

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto/16 :goto_c5

    .line 409
    :cond_222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto/16 :goto_c5

    .line 430
    :cond_242
    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v5

    if-nez v5, :cond_305

    .line 431
    const/4 v14, 0x0

    .line 432
    .local v14, certs:[Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v13

    .line 433
    .local v13, certType:Ljava/lang/String;
    if-nez v13, :cond_26f

    .line 434
    const/16 v5, 0x28

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NO CERT TYPE FOR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 437
    :cond_26f
    const/4 v12, 0x0

    .line 438
    .local v12, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v25

    .line 439
    .local v25, km:Ljavax/net/ssl/X509KeyManager;
    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    move v5, v0

    if-eqz v5, :cond_2c4

    .line 440
    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    move-object/from16 v19, v0

    .line 441
    .local v19, ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object v5, v0

    if-eqz v5, :cond_2b4

    .line 442
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object v6, v0

    move-object/from16 v0, v19

    move-object v1, v13

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v12

    .line 448
    :goto_29c
    if-eqz v12, :cond_2a5

    .line 449
    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v14

    .line 458
    .end local v19           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_2a5
    :goto_2a5
    if-nez v14, :cond_2dd

    .line 459
    const/16 v5, 0x28

    const-string v6, "NO SERVER CERTIFICATE FOUND"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_13b

    .line 445
    .restart local v19       #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_2b4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object v6, v0

    move-object/from16 v0, v19

    move-object v1, v13

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v12

    goto :goto_29c

    .line 452
    .end local v19           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_2c4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object v6, v0

    move-object/from16 v0, v25

    move-object v1, v13

    move-object v2, v5

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v12

    .line 453
    if-eqz v12, :cond_2a5

    .line 454
    move-object/from16 v0, v25

    move-object v1, v12

    invoke-interface {v0, v1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v14

    goto :goto_2a5

    .line 462
    :cond_2dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    iput-object v14, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 463
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-direct {v5, v14}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 464
    move-object/from16 v0, v25

    move-object v1, v12

    invoke-interface {v0, v1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 469
    .end local v12           #alias:Ljava/lang/String;
    .end local v13           #certType:Ljava/lang/String;
    .end local v14           #certs:[Ljava/security/cert/X509Certificate;
    .end local v25           #km:Ljavax/net/ssl/X509KeyManager;
    :cond_305
    const/16 v33, 0x0

    .line 470
    .local v33, rsakey:Ljava/security/interfaces/RSAPublicKey;
    const/16 v16, 0x0

    .line 471
    .local v16, dhkeySpec:Ljavax/crypto/spec/DHPublicKeySpec;
    const/16 v22, 0x0

    .line 472
    .local v22, hash:[B
    const/16 v28, 0x0

    .line 473
    .local v28, p:Ljava/math/BigInteger;
    const/16 v20, 0x0

    .line 475
    .local v20, g:Ljava/math/BigInteger;
    const/16 v27, 0x0

    .line 478
    .local v27, kpg:Ljava/security/KeyPairGenerator;
    :try_start_311
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_489

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v30

    .line 480
    .local v30, pk:Ljava/security/PublicKey;
    invoke-static/range {v30 .. v30}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v5

    const/16 v6, 0x200

    if-le v5, v6, :cond_33a

    .line 482
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v27

    .line 483
    const/16 v5, 0x200

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_33a
    .catch Ljava/lang/Exception; {:try_start_311 .. :try_end_33a} :catch_4df

    .line 501
    .end local v30           #pk:Ljava/security/PublicKey;
    :cond_33a
    :goto_33a
    if-eqz v27, :cond_427

    .line 503
    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    iget-object v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->authType:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 504
    .local v17, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    const/16 v26, 0x0

    .line 506
    .local v26, kp:Ljava/security/KeyPair;
    :try_start_348
    invoke-virtual/range {v27 .. v27}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v26

    .line 507
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4f1

    .line 508
    invoke-virtual/range {v26 .. v26}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v34

    move-object/from16 v0, v34

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v33, v0

    .line 514
    :goto_35b
    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v5

    if-nez v5, :cond_5ad

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    move-object v5, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    .line 521
    invoke-virtual/range {v26 .. v26}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 526
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v38, v0

    .line 528
    .local v38, tmpLength:[B
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_50f

    .line 529
    invoke-interface/range {v33 .. v33}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v37

    .line 530
    .local v37, tmp:[B
    const/4 v5, 0x0

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 531
    const/4 v5, 0x1

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 532
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 533
    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 534
    invoke-interface/range {v33 .. v33}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v37

    .line 535
    const/4 v5, 0x0

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 536
    const/4 v5, 0x1

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 537
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 538
    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 556
    :goto_3fa
    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B
    :try_end_3fd
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_3fd} :catch_59b

    move-result-object v22

    .line 564
    .end local v37           #tmp:[B
    .end local v38           #tmpLength:[B
    :goto_3fe
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5b8

    .line 565
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-interface/range {v33 .. v33}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface/range {v33 .. v33}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    .line 571
    :goto_41c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 575
    .end local v17           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v26           #kp:Ljava/security/KeyPair;
    :cond_427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v5

    if-nez v5, :cond_43d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v5

    if-eqz v5, :cond_46c

    .line 579
    :cond_43d
    :try_start_43d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v36

    .line 580
    .local v36, tm:Ljavax/net/ssl/X509TrustManager;
    invoke-interface/range {v36 .. v36}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    :try_end_449
    .catch Ljava/lang/ClassCastException; {:try_start_43d .. :try_end_449} :catch_5d0

    move-result-object v11

    .line 585
    .local v11, accepted:[Ljava/security/cert/X509Certificate;
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v31, v0

    fill-array-data v31, :array_5e6

    .line 587
    .local v31, requestedClientCertTypes:[B
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object v0, v5

    move-object/from16 v1, v31

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>([B[Ljava/security/cert/X509Certificate;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 593
    .end local v11           #accepted:[Ljava/security/cert/X509Certificate;
    .end local v31           #requestedClientCertTypes:[B
    .end local v36           #tm:Ljavax/net/ssl/X509TrustManager;
    :cond_46c
    :goto_46c
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    invoke-direct {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 595
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    goto/16 :goto_13b

    .line 485
    :cond_489
    :try_start_489
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4a9

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4a9

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4a9

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_4a9

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_4a9

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_33a

    .line 491
    :cond_4a9
    const-string v5, "DH"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v27

    .line 492
    new-instance v29, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->getPrime()[B

    move-result-object v6

    move-object/from16 v0, v29

    move v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_4bd
    .catch Ljava/lang/Exception; {:try_start_489 .. :try_end_4bd} :catch_4df

    .line 493
    .end local v28           #p:Ljava/math/BigInteger;
    .local v29, p:Ljava/math/BigInteger;
    :try_start_4bd
    new-instance v21, Ljava/math/BigInteger;

    const-string v5, "2"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_4c7
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_4c7} :catch_5d5

    .line 494
    .end local v20           #g:Ljava/math/BigInteger;
    .local v21, g:Ljava/math/BigInteger;
    :try_start_4c7
    new-instance v35, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 495
    .local v35, spec:Ljavax/crypto/spec/DHParameterSpec;
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4d9
    .catch Ljava/lang/Exception; {:try_start_4c7 .. :try_end_4d9} :catch_5dc

    move-object/from16 v20, v21

    .end local v21           #g:Ljava/math/BigInteger;
    .restart local v20       #g:Ljava/math/BigInteger;
    move-object/from16 v28, v29

    .end local v29           #p:Ljava/math/BigInteger;
    .restart local v28       #p:Ljava/math/BigInteger;
    goto/16 :goto_33a

    .line 497
    .end local v35           #spec:Ljavax/crypto/spec/DHParameterSpec;
    :catch_4df
    move-exception v5

    move-object/from16 v18, v5

    .line 498
    .local v18, e:Ljava/lang/Exception;
    :goto_4e2
    const/16 v5, 0x50

    const-string v6, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_33a

    .line 510
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v17       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .restart local v26       #kp:Ljava/security/KeyPair;
    :cond_4f1
    :try_start_4f1
    invoke-virtual/range {v26 .. v26}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v15

    check-cast v15, Ljavax/crypto/interfaces/DHPublicKey;

    .line 511
    .local v15, dhkey:Ljavax/crypto/interfaces/DHPublicKey;
    const-string v5, "DH"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v24

    .line 512
    .local v24, kf:Ljava/security/KeyFactory;
    const-class v5, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, v24

    move-object v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v16, v0

    goto/16 :goto_35b

    .line 540
    .end local v15           #dhkey:Ljavax/crypto/interfaces/DHPublicKey;
    .end local v24           #kf:Ljava/security/KeyFactory;
    .restart local v38       #tmpLength:[B
    :cond_50f
    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v37

    .line 541
    .restart local v37       #tmp:[B
    const/4 v5, 0x0

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 542
    const/4 v5, 0x1

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 543
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 544
    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 545
    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v37

    .line 546
    const/4 v5, 0x0

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 547
    const/4 v5, 0x1

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 548
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 549
    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 550
    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v37

    .line 551
    const/4 v5, 0x0

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 552
    const/4 v5, 0x1

    move-object/from16 v0, v37

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v38, v5

    .line 553
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 554
    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V
    :try_end_599
    .catch Ljava/lang/Exception; {:try_start_4f1 .. :try_end_599} :catch_59b

    goto/16 :goto_3fa

    .line 560
    .end local v37           #tmp:[B
    .end local v38           #tmpLength:[B
    :catch_59b
    move-exception v5

    move-object/from16 v18, v5

    .line 561
    .restart local v18       #e:Ljava/lang/Exception;
    const/16 v5, 0x50

    const-string v6, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3fe

    .line 558
    .end local v18           #e:Ljava/lang/Exception;
    :cond_5ad
    :try_start_5ad
    invoke-virtual/range {v26 .. v26}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;
    :try_end_5b6
    .catch Ljava/lang/Exception; {:try_start_5ad .. :try_end_5b6} :catch_59b

    goto/16 :goto_3fe

    .line 568
    :cond_5b8
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_41c

    .line 581
    .end local v17           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v26           #kp:Ljava/security/KeyPair;
    :catch_5d0
    move-exception v5

    move-object/from16 v18, v5

    .line 583
    .local v18, e:Ljava/lang/ClassCastException;
    goto/16 :goto_46c

    .line 497
    .end local v18           #e:Ljava/lang/ClassCastException;
    .end local v28           #p:Ljava/math/BigInteger;
    .restart local v29       #p:Ljava/math/BigInteger;
    :catch_5d5
    move-exception v5

    move-object/from16 v18, v5

    move-object/from16 v28, v29

    .end local v29           #p:Ljava/math/BigInteger;
    .restart local v28       #p:Ljava/math/BigInteger;
    goto/16 :goto_4e2

    .end local v20           #g:Ljava/math/BigInteger;
    .end local v28           #p:Ljava/math/BigInteger;
    .restart local v21       #g:Ljava/math/BigInteger;
    .restart local v29       #p:Ljava/math/BigInteger;
    :catch_5dc
    move-exception v5

    move-object/from16 v18, v5

    move-object/from16 v20, v21

    .end local v21           #g:Ljava/math/BigInteger;
    .restart local v20       #g:Ljava/math/BigInteger;
    move-object/from16 v28, v29

    .end local v29           #p:Ljava/math/BigInteger;
    .restart local v28       #p:Ljava/math/BigInteger;
    goto/16 :goto_4e2

    .line 585
    nop

    :array_5e6
    .array-data 0x1
        0x1t
        0x2t
    .end array-data
.end method

.method public receiveChangeCipherSpec()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 654
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    if-eqz v0, :cond_10

    .line 655
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_d

    .line 656
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    .line 676
    :goto_c
    return-void

    .line 658
    :cond_d
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->changeCipherSpecReceived:Z

    goto :goto_c

    .line 661
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_30

    :cond_1c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    if-nez v0, :cond_41

    .line 666
    :cond_30
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    .line 670
    :goto_33
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v0, v0, v1

    if-ne v0, v1, :cond_44

    .line 671
    const-string v0, "client finished"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    goto :goto_c

    .line 668
    :cond_41
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->changeCipherSpecReceived:Z

    goto :goto_33

    .line 673
    :cond_44
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_c
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_8

    .line 77
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    .line 88
    :cond_7
    :goto_7
    return-void

    .line 80
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 86
    :cond_11
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendHelloRequest()V

    .line 87
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    goto :goto_7
.end method

.method public unwrap([B)V
    .registers 22
    .parameter "bytes"

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 98
    .end local p1
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v16

    if-lez v16, :cond_4e

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 103
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v11

    .line 104
    .local v11, handshakeType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v13

    .line 105
    .local v13, length:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v16

    move/from16 v0, v16

    move v1, v13

    if-ge v0, v1, :cond_4f

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    .line 288
    .end local v11           #handshakeType:I
    .end local v13           #length:I
    :cond_4e
    :goto_4e
    return-void

    .line 110
    .restart local v11       #handshakeType:I
    .restart local v13       #length:I
    :cond_4f
    sparse-switch v11, :sswitch_data_526

    .line 279
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_55} :catch_56

    goto :goto_4e

    .line 282
    .end local v11           #handshakeType:I
    .end local v13           #length:I
    :catch_56
    move-exception v16

    move-object/from16 v10, v16

    .line 284
    .local v10, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_4e

    .line 112
    .end local v10           #e:Ljava/io/IOException;
    .restart local v11       #handshakeType:I
    .restart local v13       #length:I
    :sswitch_63
    :try_start_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7d

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto :goto_4e

    .line 119
    :cond_7d
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->needSendHelloRequest:Z

    .line 120
    new-instance v16, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 121
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->nonBlocking:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c7

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->delegatedTasks:Ljava/util/Vector;

    move-object/from16 v16, v0

    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v18, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/security/PrivilegedExceptionAction;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Ljava/security/AccessControlContext;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 130
    :cond_c7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto/16 :goto_d

    .line 134
    :sswitch_cc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v16, v0

    if-nez v16, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v16, v0

    if-eqz v16, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f1

    .line 136
    :cond_ec
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_4e

    .line 139
    :cond_f1
    new-instance v16, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_135

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 142
    const/16 v16, 0x28

    const-string v17, "HANDSHAKE FAILURE: no client certificate received"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_d

    .line 146
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_13e} :catch_56

    move-result-object v6

    .line 148
    .local v6, authType:Ljava/lang/String;
    :try_start_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/security/cert/CertificateException; {:try_start_13f .. :try_end_15d} :catch_177
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_15d} :catch_56

    .line 154
    :goto_15d
    :try_start_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto/16 :goto_d

    .line 150
    :catch_177
    move-exception v16

    move-object/from16 v10, v16

    .line 151
    .local v10, e:Ljava/security/cert/CertificateException;
    const/16 v16, 0x2a

    const-string v17, "Untrusted Client Certificate "

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15d

    .line 159
    .end local v6           #authType:Ljava/lang/String;
    .end local v10           #e:Ljava/security/cert/CertificateException;
    :sswitch_189
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v16, v0

    if-nez v16, :cond_1bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v16, v0

    if-nez v16, :cond_1bd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->changeCipherSpecReceived:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1c2

    .line 167
    :cond_1bd
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_4e

    .line 170
    :cond_1c2
    new-instance v16, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;

    move-result-object v6

    .line 173
    .restart local v6       #authType:Ljava/lang/String;
    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    invoke-direct {v9, v6}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 174
    .local v9, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/cert/Certificate;)V

    .line 175
    const/4 v14, 0x0

    .line 176
    .local v14, md5_hash:[B
    const/4 v15, 0x0

    .line 178
    .local v15, sha_hash:[B
    const-string v16, "RSA"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_248

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5withoutLast()[B

    move-result-object v14

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v15

    .line 186
    :cond_21e
    :goto_21e
    invoke-virtual {v9, v14}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    .line 187
    invoke-virtual {v9, v15}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->verifySignature([B)Z

    move-result v16

    if-nez v16, :cond_d

    .line 189
    const/16 v16, 0x33

    const-string v17, "DECRYPT ERROR: CERTIFICATE_VERIFY incorrect signature"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_d

    .line 181
    :cond_248
    const-string v16, "DSA"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21e

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v15

    goto :goto_21e

    .line 194
    .end local v6           #authType:Ljava/lang/String;
    .end local v9           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v14           #md5_hash:[B
    .end local v15           #sha_hash:[B
    :sswitch_25e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v16, v0

    if-nez v16, :cond_28a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_28a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v16, v0

    if-nez v16, :cond_28a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v16, v0

    if-nez v16, :cond_28f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v16

    if-eqz v16, :cond_28f

    .line 198
    :cond_28a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_4e

    .line 201
    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3b8

    .line 203
    :cond_2c3
    new-instance v16, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-byte v18, v18, v19

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3a2

    const/16 v18, 0x1

    :goto_2e5
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_2f9
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_2f9} :catch_56

    .line 206
    const/4 v7, 0x0

    .line 208
    .local v7, c:Ljavax/crypto/Cipher;
    :try_start_2fa
    const-string v16, "RSA/ECB/PKCS1Padding"

    invoke-static/range {v16 .. v16}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 209
    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    move-object/from16 v17, v0

    move-object v0, v7

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x30

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_37c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-byte v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_37c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-byte v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-byte v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_39d

    .line 217
    :cond_37c
    const/16 v16, 0x30

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_39d
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_39d} :catch_3a6
    .catch Ljava/io/IOException; {:try_start_2fa .. :try_end_39d} :catch_56

    .line 256
    .end local v7           #c:Ljavax/crypto/Cipher;
    :cond_39d
    :goto_39d
    :try_start_39d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerMasterSecret()V

    goto/16 :goto_d

    .line 203
    :cond_3a2
    const/16 v18, 0x0

    goto/16 :goto_2e5

    .line 221
    .restart local v7       #c:Ljavax/crypto/Cipher;
    :catch_3a6
    move-exception v16

    move-object/from16 v10, v16

    .line 222
    .local v10, e:Ljava/lang/Exception;
    const/16 v16, 0x50

    const-string v17, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_39d

    .line 226
    .end local v7           #c:Ljavax/crypto/Cipher;
    .end local v10           #e:Ljava/lang/Exception;
    :cond_3b8
    new-instance v16, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-byte v18, v18, v19

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_420

    const/16 v18, 0x1

    :goto_3da
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v13

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_423

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface/range {p1 .. p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B
    :try_end_41e
    .catch Ljava/io/IOException; {:try_start_39d .. :try_end_41e} :catch_56

    goto/16 :goto_39d

    .line 226
    :cond_420
    const/16 v18, 0x0

    goto :goto_3da

    .line 237
    :cond_423
    :try_start_423
    const-string v16, "DH"

    invoke-static/range {v16 .. v16}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    .line 238
    .local v12, kf:Ljava/security/KeyFactory;
    const-string v16, "DH"

    invoke-static/range {v16 .. v16}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v5

    .line 239
    .local v5, agreement:Ljavax/crypto/KeyAgreement;
    new-instance v16, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v17, Ljava/math/BigInteger;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    .line 245
    .local v8, clientPublic:Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 246
    const/16 v16, 0x1

    move-object v0, v5

    move-object v1, v8

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 247
    invoke-virtual {v5}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B
    :try_end_485
    .catch Ljava/lang/Exception; {:try_start_423 .. :try_end_485} :catch_487
    .catch Ljava/io/IOException; {:try_start_423 .. :try_end_485} :catch_56

    goto/16 :goto_39d

    .line 248
    .end local v5           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v8           #clientPublic:Ljava/security/PublicKey;
    .end local v12           #kf:Ljava/security/KeyFactory;
    :catch_487
    move-exception v16

    move-object/from16 v10, v16

    .line 249
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v16, 0x50

    :try_start_48c
    const-string v17, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_4e

    .line 260
    .end local v10           #e:Ljava/lang/Exception;
    :sswitch_49a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v16, v0

    if-nez v16, :cond_4af

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->changeCipherSpecReceived:Z

    move/from16 v16, v0

    if-nez v16, :cond_4af

    .line 261
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_4e

    .line 265
    :cond_4af
    new-instance v16, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v13

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->verifyFinished([B)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 271
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v16, v0

    if-nez v16, :cond_50c

    .line 272
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_d

    .line 274
    :cond_50c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v16, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 275
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I
    :try_end_524
    .catch Ljava/io/IOException; {:try_start_48c .. :try_end_524} :catch_56

    goto/16 :goto_d

    .line 110
    :sswitch_data_526
    .sparse-switch
        0x1 -> :sswitch_63
        0xb -> :sswitch_cc
        0xf -> :sswitch_189
        0x10 -> :sswitch_25e
        0x14 -> :sswitch_49a
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .registers 7
    .parameter "bytes"

    .prologue
    .line 296
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 297
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 299
    :try_start_a
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_2b

    .line 304
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->nonBlocking:Z

    if-eqz v1, :cond_33

    .line 305
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->delegatedTasks:Ljava/util/Vector;

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/security/PrivilegedExceptionAction;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Ljava/security/AccessControlContext;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_2a
    return-void

    .line 300
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 301
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_2a

    .line 314
    .end local v0           #e:Ljava/io/IOException;
    :cond_33
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto :goto_2a
.end method
