.class public Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final params:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 11
    .parameter "ks"

    .prologue
    const/4 v8, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v6, 0x0

    .line 66
    .local v6, validatorLocal:Ljava/security/cert/CertPathValidator;
    const/4 v3, 0x0

    .line 67
    .local v3, factoryLocal:Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 68
    .local v4, paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    const/4 v0, 0x0

    .line 69
    .local v0, acceptedIssuersLocal:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 71
    .local v2, errLocal:Ljava/lang/Exception;
    :try_start_9
    const-string v7, "PKIX"

    invoke-static {v7}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v6

    .line 72
    const-string v7, "X509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 73
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 74
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_35

    .line 75
    .end local v4           #paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    .local v5, paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    const/4 v7, 0x0

    :try_start_23
    invoke-virtual {v5, v7}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->setRevocationEnabled(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_3c

    move-object v4, v5

    .line 79
    .end local v5           #paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    .restart local v4       #paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    :goto_27
    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 80
    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 81
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    .line 82
    if-eqz v0, :cond_39

    move-object v7, v0

    :goto_30
    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 85
    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 86
    return-void

    .line 76
    :catch_35
    move-exception v7

    move-object v1, v7

    .line 77
    .local v1, e:Ljava/lang/Exception;
    :goto_37
    move-object v2, v1

    goto :goto_27

    .line 82
    .end local v1           #e:Ljava/lang/Exception;
    :cond_39
    new-array v7, v8, [Ljava/security/cert/X509Certificate;

    goto :goto_30

    .line 76
    .end local v4           #paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    .restart local v5       #paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    :catch_3c
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    .restart local v4       #paramsLocal:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    goto :goto_37
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .registers 6
    .parameter "ks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v3, trusted:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 100
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 102
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_9

    .line 103
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 106
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    :cond_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 11
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 137
    if-eqz p1, :cond_e

    array-length v4, p1

    if-eqz v4, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    .line 138
    :cond_e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null or zero-length parameter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_16
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-eqz v4, :cond_22

    .line 141
    new-instance v4, Ljava/security/cert/CertificateException;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 144
    :cond_22
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->cleanupCertChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 145
    .local v3, newChain:[Ljava/security/cert/X509Certificate;
    array-length v4, v3

    if-nez v4, :cond_2a

    .line 172
    :cond_29
    return-void

    .line 149
    :cond_2a
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 150
    .local v0, certPath:Ljava/security/cert/CertPath;
    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_56

    .line 154
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "Certificate chain error"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_56
    :try_start_56
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    invoke-virtual {v4, v0, v5}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 164
    const/4 v2, 0x1

    .local v2, i:I
    :goto_5e
    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 165
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    new-instance v5, Ljava/security/cert/TrustAnchor;

    aget-object v6, v3, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-virtual {v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->index(Ljava/security/cert/TrustAnchor;)V
    :try_end_6e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_56 .. :try_end_6e} :catch_71
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_56 .. :try_end_6e} :catch_79

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 167
    .end local v2           #i:I
    :catch_71
    move-exception v4

    move-object v1, v4

    .line 168
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 169
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_79
    move-exception v4

    move-object v1, v4

    .line 170
    .local v1, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private cleanupCertChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 10
    .parameter "chain"

    .prologue
    .line 185
    move-object v4, p1

    .line 191
    .local v4, original:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, currIndex:I
    :goto_2
    array-length v6, p1

    if-ge v1, v6, :cond_11

    .line 194
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->isTrustAnchor(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 195
    add-int/lit8 v1, v1, -0x1

    .line 230
    :cond_11
    add-int/lit8 v0, v1, 0x1

    .line 231
    .local v0, chainLength:I
    array-length v6, p1

    if-ne v0, v6, :cond_51

    move-object v6, p1

    .line 234
    .end local p0
    :goto_17
    return-object v6

    .line 203
    .end local v0           #chainLength:I
    .restart local p0
    :cond_18
    const/4 v2, 0x0

    .line 204
    .local v2, foundNext:Z
    add-int/lit8 v3, v1, 0x1

    .local v3, nextIndex:I
    :goto_1b
    array-length v6, p1

    if-ge v3, v6, :cond_49

    .line 205
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 206
    const/4 v2, 0x1

    .line 208
    add-int/lit8 v6, v1, 0x1

    if-eq v3, v6, :cond_49

    .line 210
    if-ne p1, v4, :cond_3d

    .line 211
    invoke-virtual {v4}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 213
    .restart local p1
    :cond_3d
    aget-object v5, p1, v3

    .line 214
    .local v5, tempCertificate:Ljava/security/cert/X509Certificate;
    add-int/lit8 v6, v1, 0x1

    aget-object v6, p1, v6

    aput-object v6, p1, v3

    .line 215
    add-int/lit8 v6, v1, 0x1

    aput-object v5, p1, v6

    .line 224
    .end local v5           #tempCertificate:Ljava/security/cert/X509Certificate;
    :cond_49
    if-eqz v2, :cond_11

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 204
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 234
    .end local v2           #foundNext:Z
    .end local v3           #nextIndex:I
    .restart local v0       #chainLength:I
    :cond_51
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/X509Certificate;

    move-object v6, p0

    goto :goto_17
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 8
    .parameter "certs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v4, Ljava/util/HashSet;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 111
    .local v4, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/security/cert/X509Certificate;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 112
    .local v1, cert:Ljava/security/cert/X509Certificate;
    new-instance v5, Ljava/security/cert/TrustAnchor;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 114
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    :cond_19
    return-object v4
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method
