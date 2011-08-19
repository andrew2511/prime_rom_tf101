.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
.super Ljava/lang/Object;
.source "SSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;
    }
.end annotation


# static fields
.field public static final NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;


# instance fields
.field cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field clientRandom:[B

.field context:Ljavax/net/ssl/SSLSessionContext;

.field private creationTime:J

.field id:[B

.field final isServer:Z

.field private isValid:Z

.field lastAccessedTime:J

.field localCertificates:[Ljava/security/cert/X509Certificate;

.field master_secret:[B

.field peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

.field serverRandom:[B

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "sr"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V
    .registers 11
    .parameter "cipher_suite"
    .parameter "sr"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    .line 146
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    .line 176
    iget-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    iput-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 177
    if-nez p1, :cond_2a

    .line 178
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->SSL_NULL_WITH_NULL_NULL:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 179
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 180
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    .line 181
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 194
    :goto_29
    return-void

    .line 183
    :cond_2a
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 184
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 185
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    invoke-virtual {p2, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 186
    iget-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 187
    .local v0, time:J
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1c

    const-wide/32 v4, -0x1000000

    and-long/2addr v4, v0

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 188
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1d

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v0

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 189
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1e

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v0

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 190
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1f

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 191
    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    goto :goto_29
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 350
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 351
    :catch_5
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 206
    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 3

    .prologue
    .line 222
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 231
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 233
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 237
    const/16 v0, 0x4805

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_c

    .line 243
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v3, "No peer certificate"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    new-array v0, v2, [Ljavax/security/cert/X509Certificate;

    .line 246
    .local v0, certs:[Ljavax/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 248
    :try_start_15
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_23
    .catch Ljavax/security/cert/CertificateException; {:try_start_15 .. :try_end_23} :catch_29
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_15 .. :try_end_23} :catch_27

    .line 246
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 254
    :cond_26
    return-object v0

    .line 251
    :catch_27
    move-exception v2

    goto :goto_23

    .line 250
    :catch_29
    move-exception v2

    goto :goto_23
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    .line 259
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

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
    .line 273
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    .line 274
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    if-nez v0, :cond_7

    const-string v0, "NONE"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    goto :goto_6
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 4

    .prologue
    .line 284
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 285
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 286
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string v2, "getSSLSessionContext"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 288
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"

    .prologue
    .line 292
    if-nez p1, :cond_a

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;

    invoke-direct {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 299
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 300
    .local v3, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 301
    .local v0, currAcc:Ljava/security/AccessControlContext;
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;

    .line 302
    .local v2, key:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;
    iget-object v4, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 303
    iget-object v4, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 306
    .end local v2           #key:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;
    :cond_2d
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 312
    return-void
.end method

.method public isValid()Z
    .registers 5

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v0

    if-eqz v0, :cond_25

    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    invoke-interface {v2}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 319
    :cond_25
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 323
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 324
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;

    invoke-direct {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, old:Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_25

    .line 328
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local p2
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 330
    :cond_25
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_33

    .line 331
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local v0           #old:Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 334
    :cond_33
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 7
    .parameter "name"

    .prologue
    .line 337
    if-nez p1, :cond_a

    .line 338
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameter is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    :cond_a
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;

    invoke-direct {v4, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl$ValueKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 341
    .local v2, old:Ljava/lang/Object;
    instance-of v3, v2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v3, :cond_25

    .line 342
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    move-object v1, v0

    .line 343
    .local v1, listener:Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v3, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v3, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 345
    .end local v1           #listener:Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_25
    return-void
.end method

.method setPeer(Ljava/lang/String;I)V
    .registers 3
    .parameter "peerHost"
    .parameter "peerPort"

    .prologue
    .line 363
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 364
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    .line 365
    return-void
.end method
