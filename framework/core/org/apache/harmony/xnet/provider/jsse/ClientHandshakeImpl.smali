.class public Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ClientHandshakeImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter "owner"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method private findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 6

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, host:Ljava/lang/String;
    const/4 v2, -0x1

    .line 570
    .local v2, port:I
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v4, :cond_19

    .line 571
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 572
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    .line 577
    :goto_12
    if-eqz v1, :cond_17

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2a

    .line 578
    :cond_17
    const/4 v4, 0x0

    .line 588
    :goto_18
    return-object v4

    .line 574
    :cond_19
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 575
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    goto :goto_12

    .line 582
    :cond_2a
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    .line 583
    .local v0, context:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 585
    .local v3, session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    if-eqz v3, :cond_3e

    .line 586
    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .restart local v3       #session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    :cond_3e
    move-object v4, v3

    .line 588
    goto :goto_18
.end method

.method private renegotiateNewSession()V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 111
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 113
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_4a

    .line 114
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    .line 119
    :goto_2d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 120
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 121
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    .line 126
    :goto_49
    return-void

    .line 116
    :cond_4a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto :goto_2d

    .line 123
    :cond_60
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    .line 124
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendWarningAlert(B)V

    goto :goto_49
.end method

.method private startSession()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 133
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v1, :cond_35

    .line 134
    new-array v0, v5, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aput-object v2, v0, v1

    .line 140
    .local v0, cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :goto_e
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Ljava/security/SecureRandom;[B[B[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 142
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 143
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 144
    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    .line 145
    return-void

    .line 137
    .end local v0           #cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_35
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    .restart local v0       #cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    goto :goto_e
.end method

.method private verifyServerCert()V
    .registers 5

    .prologue
    .line 538
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getAuthType(Z)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, authType:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 549
    :goto_f
    return-void

    .line 538
    .end local v0           #authType:Ljava/lang/String;
    :cond_10
    const/4 v3, 0x0

    goto :goto_9

    .line 543
    .restart local v0       #authType:Ljava/lang/String;
    :cond_12
    :try_start_12
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_1f} :catch_28

    .line 548
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto :goto_f

    .line 544
    :catch_28
    move-exception v2

    move-object v1, v2

    .line 545
    .local v1, e:Ljava/security/cert/CertificateException;
    const/16 v2, 0x2a

    const-string v3, "Not trusted server certificate"

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method


# virtual methods
.method protected makeFinished()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 350
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_2e

    .line 351
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 352
    .local v0, verify_data:[B
    const-string v1, "client finished"

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 357
    :goto_12
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 358
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 359
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v1, :cond_38

    .line 360
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 361
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    .line 370
    :goto_2d
    return-void

    .line 354
    .end local v0           #verify_data:[B
    :cond_2e
    const/16 v1, 0x24

    new-array v0, v1, [B

    .line 355
    .restart local v0       #verify_data:[B
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerVerifyDataSSLv3([B[B)V

    goto :goto_12

    .line 363
    :cond_38
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_48

    .line 364
    const-string v1, "server finished"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 368
    :goto_45
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    goto :goto_2d

    .line 366
    :cond_48
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_45
.end method

.method processServerHelloDone()V
    .registers 30

    .prologue
    .line 377
    const/4 v10, 0x0

    .line 379
    .local v10, clientKey:Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1ea

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 381
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 532
    :goto_1e
    return-void

    .line 384
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyServerCert()V

    .line 393
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a2

    .line 394
    const/4 v9, 0x0

    .line 396
    .local v9, certs:[Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 397
    .local v5, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->getTypesAsString()[Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, certTypes:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    move-object v15, v0

    .line 399
    .local v15, issuers:[Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v18

    .line 400
    .local v18, km:Ljavax/net/ssl/X509KeyManager;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    move/from16 v24, v0

    if-eqz v24, :cond_212

    .line 401
    move-object/from16 v0, v18

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    move-object v14, v0

    .line 402
    .local v14, ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v24, v0

    if-eqz v24, :cond_201

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v24, v0

    move-object v0, v14

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v5

    .line 407
    :goto_6f
    if-eqz v5, :cond_75

    .line 408
    invoke-virtual {v14, v5}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 417
    .end local v14           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_75
    :goto_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v24, v0

    move-object v0, v9

    move-object/from16 v1, v24

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 418
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 419
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v10

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 423
    .end local v5           #alias:Ljava/lang/String;
    .end local v8           #certTypes:[Ljava/lang/String;
    .end local v9           #certs:[Ljava/security/cert/X509Certificate;
    .end local v15           #issuers:[Ljavax/security/auth/x500/X500Principal;
    .end local v18           #km:Ljavax/net/ssl/X509KeyManager;
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_273

    .line 428
    :cond_d6
    :try_start_d6
    const-string v24, "RSA/ECB/PKCS1Padding"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 429
    .local v7, c:Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    if-eqz v24, :cond_22d

    .line 430
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v25

    move-object v0, v7

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f8} :catch_249

    .line 440
    :goto_f8
    const/16 v24, 0x30

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x2

    invoke-static/range {v24 .. v28}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    :try_start_134
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v25, v0

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-byte v26, v26, v27

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_25c

    const/16 v26, 0x1

    :goto_15d
    invoke-direct/range {v24 .. v26}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>([BZ)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_166} :catch_260

    .line 505
    .end local v7           #c:Ljavax/crypto/Cipher;
    :goto_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v24, v0

    if-eqz v24, :cond_17b

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 509
    :cond_17b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerMasterSecret()V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1e5

    .line 515
    invoke-interface {v10}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, authType:Ljava/lang/String;
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    invoke-direct {v12, v6}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    .line 517
    .local v12, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    invoke-virtual {v12, v10}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    .line 519
    const-string v24, "RSA"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_40f

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5()[B

    move-result-object v24

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v24

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    .line 527
    :cond_1c9
    :goto_1c9
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>([B)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 531
    .end local v6           #authType:Ljava/lang/String;
    .end local v12           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :cond_1e5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_1e

    .line 386
    :cond_1ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v24

    if-nez v24, :cond_22

    .line 387
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1e

    .line 405
    .restart local v5       #alias:Ljava/lang/String;
    .restart local v8       #certTypes:[Ljava/lang/String;
    .restart local v9       #certs:[Ljava/security/cert/X509Certificate;
    .restart local v14       #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    .restart local v15       #issuers:[Ljavax/security/auth/x500/X500Principal;
    .restart local v18       #km:Ljavax/net/ssl/X509KeyManager;
    :cond_201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object/from16 v24, v0

    move-object v0, v14

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6f

    .line 411
    .end local v14           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v5

    .line 412
    if-eqz v5, :cond_75

    .line 413
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    goto/16 :goto_75

    .line 433
    .end local v5           #alias:Ljava/lang/String;
    .end local v8           #certTypes:[Ljava/lang/String;
    .end local v9           #certs:[Ljava/security/cert/X509Certificate;
    .end local v15           #issuers:[Ljavax/security/auth/x500/X500Principal;
    .end local v18           #km:Ljavax/net/ssl/X509KeyManager;
    .restart local v7       #c:Ljavax/crypto/Cipher;
    :cond_22d
    const/16 v24, 0x1

    :try_start_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object v0, v7

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_247} :catch_249

    goto/16 :goto_f8

    .line 435
    .end local v7           #c:Ljavax/crypto/Cipher;
    :catch_249
    move-exception v24

    move-object/from16 v13, v24

    .line 436
    .local v13, e:Ljava/lang/Exception;
    const/16 v24, 0x50

    const-string v25, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1e

    .line 444
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v7       #c:Ljavax/crypto/Cipher;
    :cond_25c
    const/16 v26, 0x0

    goto/16 :goto_15d

    .line 447
    :catch_260
    move-exception v24

    move-object/from16 v13, v24

    .line 448
    .restart local v13       #e:Ljava/lang/Exception;
    const/16 v24, 0x50

    const-string v25, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1e

    .line 454
    .end local v7           #c:Ljavax/crypto/Cipher;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_273
    :try_start_273
    const-string v24, "DH"

    invoke-static/range {v24 .. v24}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v17

    .line 455
    .local v17, kf:Ljava/security/KeyFactory;
    const-string v24, "DH"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v4

    .line 456
    .local v4, agreement:Ljavax/crypto/KeyAgreement;
    const-string v24, "DH"

    invoke-static/range {v24 .. v24}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v20

    .line 459
    .local v20, kpg:Ljava/security/KeyPairGenerator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3dd

    .line 460
    new-instance v24, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v21

    .line 463
    .local v21, serverPublic:Ljava/security/PublicKey;
    new-instance v23, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 469
    .local v23, spec:Ljavax/crypto/spec/DHParameterSpec;
    :goto_2db
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 471
    invoke-virtual/range {v20 .. v20}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v19

    .line 472
    .local v19, kp:Ljava/security/KeyPair;
    invoke-virtual/range {v19 .. v19}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v16

    .line 473
    .local v16, key:Ljava/security/Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_32e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3fd

    .line 477
    :cond_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    .line 478
    .local v11, client_pk:Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v22

    .line 479
    .local v22, server_pk:Ljava/security/PublicKey;
    move-object v0, v11

    instance-of v0, v0, Ljavax/crypto/interfaces/DHKey;

    move/from16 v24, v0

    if-eqz v24, :cond_3aa

    move-object/from16 v0, v22

    instance-of v0, v0, Ljavax/crypto/interfaces/DHKey;

    move/from16 v24, v0

    if-eqz v24, :cond_3aa

    .line 481
    move-object v0, v11

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object v12, v0

    invoke-interface {v12}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v22

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object/from16 v23, v0

    .end local v23           #spec:Ljavax/crypto/spec/DHParameterSpec;
    invoke-interface/range {v23 .. v23}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3aa

    check-cast v11, Ljavax/crypto/interfaces/DHKey;

    .end local v11           #client_pk:Ljava/security/PublicKey;
    invoke-interface {v11}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v24

    check-cast v22, Ljavax/crypto/interfaces/DHKey;

    .end local v22           #server_pk:Ljava/security/PublicKey;
    invoke-interface/range {v22 .. v22}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3aa

    .line 488
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-direct/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 495
    .end local v16           #key:Ljava/security/Key;
    :cond_3aa
    :goto_3aa
    invoke-virtual/range {v19 .. v19}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v16

    .line 496
    .restart local v16       #key:Ljava/security/Key;
    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 497
    const/16 v24, 0x1

    move-object v0, v4

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 498
    invoke-virtual {v4}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B
    :try_end_3c8
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_3c8} :catch_3ca

    goto/16 :goto_166

    .line 499
    .end local v4           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v16           #key:Ljava/security/Key;
    .end local v17           #kf:Ljava/security/KeyFactory;
    .end local v19           #kp:Ljava/security/KeyPair;
    .end local v20           #kpg:Ljava/security/KeyPairGenerator;
    .end local v21           #serverPublic:Ljava/security/PublicKey;
    :catch_3ca
    move-exception v24

    move-object/from16 v13, v24

    .line 500
    .restart local v13       #e:Ljava/lang/Exception;
    const/16 v24, 0x50

    const-string v25, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1e

    .line 466
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v4       #agreement:Ljavax/crypto/KeyAgreement;
    .restart local v17       #kf:Ljava/security/KeyFactory;
    .restart local v20       #kpg:Ljava/security/KeyPairGenerator;
    :cond_3dd
    :try_start_3dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v21

    .line 467
    .restart local v21       #serverPublic:Ljava/security/PublicKey;
    move-object/from16 v0, v21

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v23

    .restart local v23       #spec:Ljavax/crypto/spec/DHParameterSpec;
    goto/16 :goto_2db

    .line 492
    .restart local v16       #key:Ljava/security/Key;
    .restart local v19       #kp:Ljava/security/KeyPair;
    :cond_3fd
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    check-cast v16, Ljavax/crypto/interfaces/DHPublicKey;

    .end local v16           #key:Ljava/security/Key;
    invoke-interface/range {v16 .. v16}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_40e
    .catch Ljava/lang/Exception; {:try_start_3dd .. :try_end_40e} :catch_3ca

    goto :goto_3aa

    .line 522
    .end local v4           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v17           #kf:Ljava/security/KeyFactory;
    .end local v19           #kp:Ljava/security/KeyPair;
    .end local v20           #kpg:Ljava/security/KeyPairGenerator;
    .end local v21           #serverPublic:Ljava/security/PublicKey;
    .end local v23           #spec:Ljavax/crypto/spec/DHParameterSpec;
    .restart local v6       #authType:Ljava/lang/String;
    .restart local v12       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :cond_40f
    const-string v24, "DSA"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c9

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v24

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    goto/16 :goto_1c9
.end method

.method public receiveChangeCipherSpec()V
    .registers 2

    .prologue
    .line 556
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v0, :cond_f

    .line 557
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-nez v0, :cond_b

    .line 558
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 563
    :cond_b
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->changeCipherSpecReceived:Z

    .line 564
    return-void

    .line 560
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_b

    .line 561
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto :goto_b
.end method

.method public start()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_15

    .line 74
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 84
    :cond_a
    :goto_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_2a

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 101
    :goto_11
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    .line 102
    :cond_14
    return-void

    .line 76
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_1e

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 80
    :cond_1e
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_a

    .line 86
    :cond_2a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 88
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 90
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_71

    .line 91
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    .line 96
    :goto_57
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    goto :goto_11

    .line 93
    :cond_71
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto :goto_57

    .line 99
    :cond_87
    const/16 v0, 0x28

    const-string v1, "SSL Session may not be created "

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_11
.end method

.method public unwrap([B)V
    .registers 13
    .parameter "bytes"

    .prologue
    const/4 v10, 0x1

    const/16 v8, 0x28

    .line 153
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v7, :cond_11

    .line 154
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->delegatedTaskErr:Ljava/lang/Exception;

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->delegatedTaskErr:Ljava/lang/Exception;

    .line 156
    const-string v7, "Error in delegated task"

    invoke-virtual {p0, v8, v7, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :cond_11
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 160
    :cond_16
    :goto_16
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-lez v7, :cond_3c

    .line 161
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 164
    :try_start_23
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    .line 165
    .local v3, handshakeType:I
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v5

    .line 166
    .local v5, length:I
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-ge v7, v5, :cond_3d

    .line 167
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    .line 330
    .end local v3           #handshakeType:I
    .end local v5           #length:I
    :cond_3c
    :goto_3c
    return-void

    .line 170
    .restart local v3       #handshakeType:I
    .restart local v5       #length:I
    :cond_3d
    sparse-switch v3, :sswitch_data_262

    .line 320
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_43} :catch_44

    goto :goto_3c

    .line 323
    .end local v3           #handshakeType:I
    .end local v5           #length:I
    :catch_44
    move-exception v7

    move-object v0, v7

    .line 325
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_3c

    .line 174
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #handshakeType:I
    .restart local v5       #length:I
    :sswitch_4c
    :try_start_4c
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->removeFromMarkedPosition()V

    .line 175
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_5d

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_16

    .line 181
    :cond_5d
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 182
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 183
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 184
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    goto :goto_16

    .line 188
    :cond_76
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->renegotiateNewSession()V

    goto :goto_16

    .line 192
    :sswitch_7a
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_82

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_86

    .line 193
    :cond_82
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto :goto_3c

    .line 196
    :cond_86
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 199
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v6

    .line 200
    .local v6, servProt:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, enabled:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9e
    array-length v7, v1

    if-ge v4, v7, :cond_11e

    .line 203
    aget-object v7, v1, v4

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11b

    .line 212
    :goto_ad
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-byte v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    if-eqz v7, :cond_ba

    .line 213
    const/16 v7, 0x28

    const-string v8, "Bad server hello compression method"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 219
    :cond_ba
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    .line 222
    .local v2, enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/4 v4, 0x0

    :goto_c1
    array-length v7, v2

    if-ge v4, v7, :cond_129

    .line 223
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_126

    .line 231
    :goto_d0
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_ec

    .line 232
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v7, v7

    if-nez v7, :cond_131

    .line 235
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 245
    :cond_de
    :goto_de
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_16c

    .line 246
    const-string v7, "server finished"

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 251
    :cond_ec
    :goto_ec
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v6, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 252
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 253
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 254
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iput-object v7, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 255
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    goto/16 :goto_16

    .line 202
    .end local v2           #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_11b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    .line 207
    :cond_11e
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_ad

    .line 222
    .restart local v2       #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_126
    add-int/lit8 v4, v4, 0x1

    goto :goto_c1

    .line 227
    :cond_129
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_d0

    .line 236
    :cond_131
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_143

    .line 237
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    goto :goto_de

    .line 238
    :cond_143
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_155

    .line 239
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_de

    .line 241
    :cond_155
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_de

    .line 242
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_de

    .line 248
    :cond_16c
    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto/16 :goto_ec

    .line 258
    .end local v1           #enabled:[Ljava/lang/String;
    .end local v2           #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i:I
    .end local v6           #servProt:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    :sswitch_173
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_183

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_183

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-nez v7, :cond_183

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_188

    .line 260
    :cond_183
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 263
    :cond_188
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    goto/16 :goto_16

    .line 266
    :sswitch_193
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_19f

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_19f

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_1a4

    .line 268
    :cond_19f
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 271
    :cond_1a4
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v9, v9, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v9, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_16

    .line 275
    :sswitch_1b5
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v7, :cond_1cb

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    if-nez v7, :cond_1cb

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v7

    if-nez v7, :cond_1cb

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_1d0

    .line 277
    :cond_1cb
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 280
    :cond_1d0
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    goto/16 :goto_16

    .line 283
    :sswitch_1db
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_1e7

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-nez v7, :cond_1e7

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_1ec

    .line 284
    :cond_1e7
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 287
    :cond_1ec
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 288
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->nonBlocking:Z

    if-eqz v7, :cond_20e

    .line 289
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->delegatedTasks:Ljava/util/Vector;

    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;

    invoke-direct {v9, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;)V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v10

    invoke-direct {v8, v9, p0, v10}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/security/PrivilegedExceptionAction;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Ljava/security/AccessControlContext;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c

    .line 297
    :cond_20e
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->processServerHelloDone()V

    goto/16 :goto_16

    .line 300
    :sswitch_213
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->changeCipherSpecReceived:Z

    if-nez v7, :cond_21c

    .line 301
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_3c

    .line 304
    :cond_21c
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 305
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyFinished([B)V

    .line 306
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 308
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 310
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 311
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_254

    .line 312
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_16

    .line 314
    :cond_254
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 315
    const/4 v7, 0x3

    iput v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_25f} :catch_44

    goto/16 :goto_16

    .line 170
    nop

    :sswitch_data_262
    .sparse-switch
        0x0 -> :sswitch_4c
        0x2 -> :sswitch_7a
        0xb -> :sswitch_173
        0xc -> :sswitch_193
        0xd -> :sswitch_1b5
        0xe -> :sswitch_1db
        0x14 -> :sswitch_213
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 342
    return-void
.end method
