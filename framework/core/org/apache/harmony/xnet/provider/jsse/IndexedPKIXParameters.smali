.class public final Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "IndexedPKIXParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters$Bytes;
    }
.end annotation


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 44
    .local p1, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->subjectToTrustAnchors:Ljava/util/Map;

    .line 45
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->index()V

    .line 46
    return-void
.end method

.method private index()V
    .registers 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 50
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->index(Ljava/security/cert/TrustAnchor;)V

    goto :goto_8

    .line 52
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    :cond_18
    return-void
.end method

.method private static isTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Z
    .registers 8
    .parameter "cert"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, anchors:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 123
    .local v3, certPublicKey:Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 126
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    :try_start_14
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 127
    .local v1, caCert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_26

    .line 128
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 132
    .local v2, caPublicKey:Ljava/security/PublicKey;
    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 133
    const/4 v5, 0x1

    .line 139
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #caPublicKey:Ljava/security/PublicKey;
    :goto_25
    return v5

    .line 130
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    .restart local v1       #caCert:Ljava/security/cert/X509Certificate;
    :cond_26
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_2d

    move-result-object v2

    .restart local v2       #caPublicKey:Ljava/security/PublicKey;
    goto :goto_1e

    .line 139
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #caCert:Ljava/security/cert/X509Certificate;
    .end local v2           #caPublicKey:Ljava/security/PublicKey;
    :cond_2b
    const/4 v5, 0x0

    goto :goto_25

    .line 135
    .restart local v0       #anchor:Ljava/security/cert/TrustAnchor;
    :catch_2d
    move-exception v5

    goto :goto_8
.end method


# virtual methods
.method public findTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 13
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 75
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 76
    .local v5, issuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v7, 0x0

    .line 77
    .local v7, verificationException:Ljava/lang/Exception;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v8

    .line 78
    :try_start_9
    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 79
    .local v1, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v1, :cond_16

    .line 80
    monitor-exit v8

    move-object v8, v10

    .line 107
    :goto_15
    return-object v8

    .line 83
    :cond_16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_4a

    .line 86
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    :try_start_26
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 87
    .local v2, caCert:Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_36

    .line 88
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 92
    .local v6, publicKey:Ljava/security/PublicKey;
    :goto_30
    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_3b

    .line 93
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_4a

    move-object v8, v0

    goto :goto_15

    .line 90
    .end local v6           #publicKey:Ljava/security/PublicKey;
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3b

    move-result-object v6

    .restart local v6       #publicKey:Ljava/security/PublicKey;
    goto :goto_30

    .line 94
    .end local v2           #caCert:Ljava/security/cert/X509Certificate;
    .end local v6           #publicKey:Ljava/security/PublicKey;
    :catch_3b
    move-exception v9

    move-object v3, v9

    .line 95
    .local v3, e:Ljava/lang/Exception;
    move-object v7, v3

    .line 97
    goto :goto_1a

    .line 98
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3f
    :try_start_3f
    monitor-exit v8
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_4a

    .line 101
    if-eqz v7, :cond_4d

    .line 102
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    const-string v9, "TrustAnchor found but certificate verification failed."

    invoke-direct {v8, v9, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 98
    .end local v1           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_4a
    move-exception v9

    :try_start_4b
    monitor-exit v8
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v9

    .restart local v1       #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4d
    move-object v8, v10

    .line 107
    goto :goto_15
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .registers 7
    .parameter "anchor"

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 57
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_26

    .line 58
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 63
    .local v2, subject:Ljavax/security/auth/x500/X500Principal;
    :goto_a
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v3

    .line 64
    :try_start_d
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 65
    .local v0, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_21

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .restart local v0       #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2b

    .line 71
    return-void

    .line 60
    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2           #subject:Ljavax/security/auth/x500/X500Principal;
    :cond_26
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .restart local v2       #subject:Ljavax/security/auth/x500/X500Principal;
    goto :goto_a

    .line 70
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v4
.end method

.method public isTrustAnchor(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .parameter "cert"

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 112
    .local v1, subject:Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v2

    .line 113
    :try_start_7
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_15

    .line 115
    const/4 v3, 0x0

    monitor-exit v2

    move v2, v3

    .line 117
    :goto_14
    return v2

    :cond_15
    invoke-static {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->isTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Z

    move-result v3

    monitor-exit v2

    move v2, v3

    goto :goto_14

    .line 118
    .end local v0           #anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_1c
    move-exception v3

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v3
.end method
