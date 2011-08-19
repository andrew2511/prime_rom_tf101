.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
.super Ljava/lang/Object;
.source "OpenSSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private cipherSuite:Ljava/lang/String;

.field private compressionMethod:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private isValid:Z

.field lastAccessedTime:J

.field final localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private protocol:Ljava/lang/String;

.field private sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

.field protected sslSessionNativePointer:I

.field private values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method protected constructor <init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    .registers 9
    .parameter "sslSessionNativePointer"
    .parameter "localCertificates"
    .parameter "peerCertificates"
    .parameter "peerHost"
    .parameter "peerPort"
    .parameter "sessionContext"

    .prologue
    const-wide/16 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    .line 46
    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 51
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    .line 72
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    .line 73
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 74
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 75
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 76
    iput p5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    .line 77
    iput-object p6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    .line 78
    return-void
.end method

.method constructor <init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    .registers 13
    .parameter "derData"
    .parameter "peerHost"
    .parameter "peerPort"
    .parameter "peerCertificates"
    .parameter "sessionContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->d2i_SSL_SESSION([B)I

    move-result v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p4

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    .line 97
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    if-nez v0, :cond_19

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid session data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_19
    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_11

    .line 267
    :cond_9
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_11
    return-void
.end method

.method private createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    new-array v0, v5, [Ljavax/security/cert/X509Certificate;

    .line 231
    .local v0, chain:[Ljavax/security/cert/X509Certificate;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    if-ge v4, v5, :cond_3a

    .line 232
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 233
    .local v2, encoded:[B
    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_19
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_19} :catch_1c
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_19} :catch_2b

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 236
    .end local v0           #chain:[Ljavax/security/cert/X509Certificate;
    .end local v2           #encoded:[B
    .end local v4           #i:I
    :catch_1c
    move-exception v5

    move-object v1, v5

    .line 237
    .local v1, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 238
    .local v3, exception:Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw v3

    .line 240
    .end local v1           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v3           #exception:Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_2b
    move-exception v5

    move-object v1, v5

    .line 241
    .local v1, e:Ljavax/security/cert/CertificateException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v3       #exception:Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 243
    throw v3

    .line 235
    .end local v1           #e:Ljavax/security/cert/CertificateException;
    .end local v3           #exception:Ljavax/net/ssl/SSLPeerUnverifiedException;
    .restart local v0       #chain:[Ljavax/security/cert/X509Certificate;
    .restart local v4       #i:I
    :cond_3a
    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 508
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_free(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 510
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 512
    return-void

    .line 510
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 161
    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 3

    .prologue
    .line 321
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 322
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_cipher(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 325
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    .line 328
    .end local v0           #name:Ljava/lang/String;
    :cond_1a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    return-object v1
.end method

.method public getCompressionMethod()Ljava/lang/String;
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 356
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_compress_meth(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    .line 360
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .registers 5

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 139
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_get_time(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    .line 141
    :cond_10
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method getEncoded()[B
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->i2d_SSL_SESSION(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    if-nez v0, :cond_7

    .line 108
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->resetId()V

    .line 110
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 5

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    goto :goto_c
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 180
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 182
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 170
    const/16 v0, 0x4805

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 213
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 214
    .local v0, result:[Ljavax/security/cert/X509Certificate;
    if-nez v0, :cond_d

    .line 216
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 218
    :cond_d
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 259
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 310
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 283
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 341
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_get_version(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    .line 343
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 4

    .prologue
    .line 374
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 375
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 376
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string v2, "getSSLSessionContext"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 378
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"

    .prologue
    .line 420
    if-nez p1, :cond_a

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 436
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 437
    .local v7, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    .line 438
    .local v2, current:Ljava/security/AccessControlContext;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v8}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 439
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 440
    .local v5, o:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, v5

    check-cast v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-object v3, v0

    .line 442
    .local v3, entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<Ljava/lang/String;Ljava/security/AccessControlContext;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/AccessControlContext;

    .line 443
    .local v1, cont:Ljava/security/AccessControlContext;
    invoke-static {v2, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 444
    invoke-virtual {v3}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 447
    .end local v1           #cont:Ljava/security/AccessControlContext;
    .end local v3           #entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<Ljava/lang/String;Ljava/security/AccessControlContext;Ljava/lang/Object;>;"
    .end local v5           #o:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_37
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    .line 405
    return-void
.end method

.method public isValid()Z
    .registers 6

    .prologue
    .line 388
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    .line 389
    .local v0, context:Ljavax/net/ssl/SSLSessionContext;
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v1

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_25

    .line 394
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 396
    :cond_25
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    return v1
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 466
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 467
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    .local v0, old:Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_24

    .line 471
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local p2
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 474
    :cond_24
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_32

    .line 475
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local v0           #old:Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 478
    :cond_32
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 7
    .parameter "name"

    .prologue
    .line 496
    if-nez p1, :cond_a

    .line 497
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameter is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    :cond_a
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 500
    .local v2, old:Ljava/lang/Object;
    instance-of v3, v2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v3, :cond_24

    .line 501
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    move-object v1, v0

    .line 502
    .local v1, listener:Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v3, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v3, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 504
    .end local v1           #listener:Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_24
    return-void
.end method

.method resetId()V
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    .line 123
    return-void
.end method
