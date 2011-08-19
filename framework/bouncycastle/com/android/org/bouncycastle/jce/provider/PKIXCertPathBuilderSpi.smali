.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .registers 22
    .parameter "tbvCert"
    .parameter "pkixParams"
    .parameter "tbvPath"

    .prologue
    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 138
    const/4 v14, 0x0

    .line 259
    :goto_b
    return-object v14

    .line 142
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 144
    const/4 v14, 0x0

    goto :goto_b

    .line 147
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_30

    .line 149
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v15

    if-le v14, v15, :cond_30

    .line 151
    const/4 v14, 0x0

    goto :goto_b

    .line 155
    :cond_30
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v5, 0x0

    .line 163
    .local v5, builderResult:Ljava/security/cert/CertPathBuilderResult;
    :try_start_38
    const-string v14, "X.509"

    const-string v15, "BC"

    invoke-static {v14, v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 164
    .local v6, cFact:Ljava/security/cert/CertificateFactory;
    const-string v14, "PKIX"

    const-string v15, "BC"

    invoke-static {v14, v15}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_8c

    move-result-object v13

    .line 176
    .local v13, validator:Ljava/security/cert/CertPathValidator;
    :try_start_48
    invoke-static/range {p1 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXParameters;)Ljava/security/cert/TrustAnchor;
    :try_end_4b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_48 .. :try_end_4b} :catch_7a

    move-result-object v14

    if-eqz v14, :cond_a9

    .line 181
    const/4 v7, 0x0

    .line 182
    .local v7, certPath:Ljava/security/cert/CertPath;
    const/4 v12, 0x0

    .line 185
    .local v12, result:Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_50
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_56} :catch_96
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_50 .. :try_end_56} :catch_7a

    move-result-object v7

    .line 196
    :try_start_57
    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v12

    .end local v12           #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    check-cast v12, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_61} :catch_9f
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_57 .. :try_end_61} :catch_7a

    .line 205
    .restart local v12       #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_61
    new-instance v14, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v15

    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v16

    invoke-virtual {v12}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    move-object v0, v14

    move-object v1, v7

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_79
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_61 .. :try_end_79} :catch_7a

    goto :goto_b

    .line 251
    .end local v7           #certPath:Ljava/security/cert/CertPath;
    .end local v12           #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_7a
    move-exception v14

    move-object v8, v14

    .line 253
    .local v8, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 255
    .end local v8           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_81
    if-nez v5, :cond_8a

    .line 257
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8a
    move-object v14, v5

    .line 259
    goto :goto_b

    .line 166
    .end local v6           #cFact:Ljava/security/cert/CertificateFactory;
    .end local v13           #validator:Ljava/security/cert/CertPathValidator;
    :catch_8c
    move-exception v14

    move-object v8, v14

    .line 169
    .local v8, e:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Exception creating support classes."

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 187
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #cFact:Ljava/security/cert/CertificateFactory;
    .restart local v7       #certPath:Ljava/security/cert/CertPath;
    .restart local v12       #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    .restart local v13       #validator:Ljava/security/cert/CertPathValidator;
    :catch_96
    move-exception v8

    .line 189
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_97
    new-instance v14, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "Certification path could not be constructed from certificate list."

    invoke-direct {v14, v15, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 199
    .end local v8           #e:Ljava/lang/Exception;
    .end local v12           #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_9f
    move-exception v14

    move-object v8, v14

    .line 201
    .restart local v8       #e:Ljava/lang/Exception;
    new-instance v14, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "Certification path could not be validated."

    invoke-direct {v14, v15, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_a9
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_97 .. :try_end_a9} :catch_7a

    .line 215
    .end local v7           #certPath:Ljava/security/cert/CertPath;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_a9
    :try_start_a9
    invoke-static/range {p1 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_ac
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_a9 .. :try_end_ac} :catch_c6
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_a9 .. :try_end_ac} :catch_7a

    .line 224
    :try_start_ac
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_b1
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_ac .. :try_end_b1} :catch_7a

    .line 229
    .local v10, issuers:Ljava/util/Collection;
    :try_start_b1
    invoke-static/range {p1 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_b8
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b1 .. :try_end_b8} :catch_cf

    .line 237
    :try_start_b8
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_d9

    .line 239
    new-instance v14, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "No issuer certificate for certificate in certification path found."

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 218
    .end local v10           #issuers:Ljava/util/Collection;
    :catch_c6
    move-exception v8

    .line 220
    .local v8, e:Ljava/security/cert/CertificateParsingException;
    new-instance v14, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "No additiontal X.509 stores can be added from certificate locations."

    invoke-direct {v14, v15, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 231
    .end local v8           #e:Ljava/security/cert/CertificateParsingException;
    .restart local v10       #issuers:Ljava/util/Collection;
    :catch_cf
    move-exception v14

    move-object v8, v14

    .line 233
    .local v8, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v14, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v14, v15, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 242
    .end local v8           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_d9
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 244
    .local v11, it:Ljava/util/Iterator;
    :goto_dd
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_81

    if-nez v5, :cond_81

    .line 246
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 247
    .local v9, issuer:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_f5
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b8 .. :try_end_f5} :catch_7a

    move-result-object v5

    .line 248
    goto :goto_dd
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 14
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v9, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v9, :cond_3d

    instance-of v9, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v9, :cond_3d

    .line 47
    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parameters must be an instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " or "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 53
    :cond_3d
    const/4 v5, 0x0

    .line 54
    .local v5, pkixParams:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    instance-of v9, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v9, :cond_8a

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    move-object v5, v0

    .line 66
    .end local p1
    :goto_46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, certPathList:Ljava/util/List;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v3

    .line 72
    .local v3, certSelect:Lcom/android/org/bouncycastle/util/Selector;
    instance-of v9, v3, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    if-nez v9, :cond_93

    .line 74
    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TargetConstraints must be an instance of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " class."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 60
    .end local v2           #certPathList:Ljava/util/List;
    .end local v3           #certSelect:Lcom/android/org/bouncycastle/util/Selector;
    .restart local p1
    :cond_8a
    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    .end local p1
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v5

    .end local v5           #pkixParams:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    check-cast v5, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .restart local v5       #pkixParams:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    goto :goto_46

    .line 82
    .restart local v2       #certPathList:Ljava/util/List;
    .restart local v3       #certSelect:Lcom/android/org/bouncycastle/util/Selector;
    :cond_93
    :try_start_93
    move-object v0, v3

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    move-object v9, v0

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v8

    .line 83
    .local v8, targets:Ljava/util/Collection;
    check-cast v3, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    .end local v3           #certSelect:Lcom/android/org/bouncycastle/util/Selector;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_ac
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_93 .. :try_end_ac} :catch_ba

    .line 91
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 94
    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    const-string v10, "No certificate found matching targetContraints."

    invoke-direct {v9, v10}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 85
    .end local v8           #targets:Ljava/util/Collection;
    :catch_ba
    move-exception v9

    move-object v4, v9

    .line 87
    .local v4, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v10, "Error finding target certificate."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 98
    .end local v4           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8       #targets:Ljava/util/Collection;
    :cond_c4
    const/4 v6, 0x0

    .line 101
    .local v6, result:Ljava/security/cert/CertPathBuilderResult;
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 102
    .local v7, targetIter:Ljava/util/Iterator;
    :goto_c9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_dc

    if-nez v6, :cond_dc

    .line 104
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 105
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, v1, v5, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v6

    goto :goto_c9

    .line 108
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    :cond_dc
    if-nez v6, :cond_104

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v9, :cond_104

    .line 110
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    instance-of v9, v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v9, :cond_fa

    .line 112
    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    iget-object v10, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v11}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 114
    :cond_fa
    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    const-string v10, "Possible certificate chain could not be validated."

    iget-object v11, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-direct {v9, v10, v11}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 119
    :cond_104
    if-nez v6, :cond_112

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-nez v9, :cond_112

    .line 121
    new-instance v9, Ljava/security/cert/CertPathBuilderException;

    const-string v10, "Unable to find certificate chain."

    invoke-direct {v9, v10}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 125
    :cond_112
    return-object v6
.end method
