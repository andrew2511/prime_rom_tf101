.class public Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String; = null

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String; = null

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String; = null

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String; = null

.field protected static final CRL_NUMBER:Ljava/lang/String; = null

.field protected static final CRL_SIGN:I = 0x6

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String; = null

.field protected static final FRESHEST_CRL:Ljava/lang/String; = null

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String; = null

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String; = null

.field protected static final KEY_CERT_SIGN:I = 0x5

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 378
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 380
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 382
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 384
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 386
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 388
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 390
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 394
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 396
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 398
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 400
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 404
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2298
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .registers 27
    .parameter "dp"
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "validDate"
    .parameter "defaultCRLSignCert"
    .parameter "defaultCRLSignKey"
    .parameter "certStatus"
    .parameter "reasonMask"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1758
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1759
    .local v12, currentDate:Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1d

    .line 1761
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p0
    const-string p1, "Validation time is in future."

    .end local p1
    invoke-direct/range {p0 .. p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1772
    .restart local p0
    .restart local p1
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v5

    .line 1773
    .local v5, crls:Ljava/util/Set;
    const/4 v7, 0x0

    .line 1774
    .local v7, validCrlFound:Z
    const/4 v6, 0x0

    .line 1775
    .local v6, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, crl_iter:Ljava/util/Iterator;
    move-object v14, v6

    .end local v6           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v14, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move v15, v7

    .line 1777
    .end local v5           #crls:Ljava/util/Set;
    .end local v7           #validCrlFound:Z
    .local v15, validCrlFound:Z
    :cond_30
    :goto_30
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_148

    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_148

    invoke-virtual/range {p7 .. p7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v5

    if-nez v5, :cond_148

    .line 1781
    :try_start_44
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509CRL;

    .line 1784
    .local v5, crl:Ljava/security/cert/X509CRL;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v13

    .line 1792
    .local v13, interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    move-object v0, v13

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v6

    if-eqz v6, :cond_30

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p8

    .line 1798
    invoke-static/range {v5 .. v10}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v6

    .line 1801
    .local v6, keys:Ljava/util/Set;
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v7

    .line 1803
    .local v7, key:Ljava/security/PublicKey;
    const/4 v6, 0x0

    .line 1805
    .local v6, deltaCRL:Ljava/security/cert/X509CRL;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v8

    if-eqz v8, :cond_14c

    .line 1808
    move-object v0, v12

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v6

    .line 1811
    .local v6, deltaCRLs:Ljava/util/Set;
    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v6

    .local v6, deltaCRL:Ljava/security/cert/X509CRL;
    move-object v7, v6

    .line 1827
    .end local v6           #deltaCRL:Ljava/security/cert/X509CRL;
    .local v7, deltaCRL:Ljava/security/cert/X509CRL;
    :goto_80
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_a7

    .line 1834
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v6, v8, v16

    if-gez v6, :cond_a7

    .line 1836
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local v5           #crl:Ljava/security/cert/X509CRL;
    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1893
    .end local v7           #deltaCRL:Ljava/security/cert/X509CRL;
    .end local v13           #interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    :catch_a3
    move-exception v5

    .line 1895
    .local v5, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v5, v5

    .end local v14           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v5, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v14, v5

    .line 1896
    .end local v5           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v14       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_30

    .line 1840
    .local v5, crl:Ljava/security/cert/X509CRL;
    .restart local v7       #deltaCRL:Ljava/security/cert/X509CRL;
    .restart local v13       #interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    :cond_a7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1843
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1846
    move-object v0, v7

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 1849
    move-object/from16 v0, p3

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 1852
    move-object/from16 v0, p3

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 1855
    invoke-virtual/range {p6 .. p6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_e4

    .line 1857
    const/16 v6, 0xb

    move-object/from16 v0, p6

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1861
    :cond_e4
    move-object/from16 v0, p7

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1863
    invoke-virtual {v5}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    .line 1864
    .local v5, criticalExtensions:Ljava/util/Set;
    if-eqz v5, :cond_116

    .line 1866
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1867
    .end local v5           #criticalExtensions:Ljava/util/Set;
    .local v6, criticalExtensions:Ljava/util/Set;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1868
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1870
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_115

    .line 1872
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL contains unsupported critical extensions."

    .end local v6           #criticalExtensions:Ljava/util/Set;
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v6       #criticalExtensions:Ljava/util/Set;
    :cond_115
    move-object v5, v6

    .line 1876
    .end local v6           #criticalExtensions:Ljava/util/Set;
    .restart local v5       #criticalExtensions:Ljava/util/Set;
    :cond_116
    if-eqz v7, :cond_144

    .line 1878
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    .line 1879
    if-eqz v5, :cond_144

    .line 1881
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1882
    .end local v5           #criticalExtensions:Ljava/util/Set;
    .restart local v6       #criticalExtensions:Ljava/util/Set;
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1883
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1884
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_143

    .line 1886
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL contains unsupported critical extension."

    .end local v6           #criticalExtensions:Ljava/util/Set;
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_143
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_44 .. :try_end_143} :catch_a3

    .restart local v6       #criticalExtensions:Ljava/util/Set;
    :cond_143
    move-object v5, v6

    .line 1891
    .end local v6           #criticalExtensions:Ljava/util/Set;
    .restart local v5       #criticalExtensions:Ljava/util/Set;
    :cond_144
    const/4 v5, 0x1

    .end local v15           #validCrlFound:Z
    .local v5, validCrlFound:Z
    move v15, v5

    .line 1896
    .end local v5           #validCrlFound:Z
    .restart local v15       #validCrlFound:Z
    goto/16 :goto_30

    .line 1898
    .end local v7           #deltaCRL:Ljava/security/cert/X509CRL;
    .end local v13           #interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    :cond_148
    if-nez v15, :cond_14b

    .line 1900
    throw v14

    .line 1902
    :cond_14b
    return-void

    .local v5, crl:Ljava/security/cert/X509CRL;
    .local v6, deltaCRL:Ljava/security/cert/X509CRL;
    .local v7, key:Ljava/security/PublicKey;
    .restart local v13       #interimReasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    :cond_14c
    move-object v7, v6

    .end local v6           #deltaCRL:Ljava/security/cert/X509CRL;
    .local v7, deltaCRL:Ljava/security/cert/X509CRL;
    goto/16 :goto_80
.end method

.method protected static checkCRLs(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    .registers 19
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "validDate"
    .parameter "sign"
    .parameter "workingPublicKey"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1926
    const/4 v2, 0x0

    .line 1927
    .local v2, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v0, 0x0

    .line 1930
    .local v0, crldp:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_2
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .end local v0           #crldp:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_54

    move-result-object v0

    .line 1939
    .restart local v0       #crldp:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_c
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_f
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_f} :catch_5d

    .line 1946
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 1947
    .local v6, certStatus:Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1949
    .local v7, reasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    const/4 v3, 0x0

    .line 1951
    .local v3, validCrlFound:Z
    if-eqz v0, :cond_14e

    .line 1953
    const/4 v1, 0x0

    .line 1956
    .local v1, dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_1d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_66

    move-result-object v9

    .line 1962
    .end local v1           #dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v9, dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    if-eqz v9, :cond_14e

    .line 1964
    const/4 v0, 0x0

    .local v0, i:I
    move v10, v0

    .end local v0           #i:I
    .local v10, i:I
    move v12, v3

    .end local v3           #validCrlFound:Z
    .local v12, validCrlFound:Z
    move-object v11, v2

    .end local v2           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v11, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_27
    array-length v0, v9

    if-ge v10, v0, :cond_74

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_74

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_74

    .line 1966
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 1969
    .local v1, paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :try_start_3e
    aget-object v0, v9, v10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_4b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3e .. :try_end_4b} :catch_6f

    .line 1970
    const/4 v0, 0x1

    .end local v12           #validCrlFound:Z
    .local v0, validCrlFound:Z
    move v2, v0

    .end local v0           #validCrlFound:Z
    .local v2, validCrlFound:Z
    move-object v1, v11

    .line 1964
    .end local v11           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v1, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_4e
    add-int/lit8 v0, v10, 0x1

    .end local v10           #i:I
    .local v0, i:I
    move v10, v0

    .end local v0           #i:I
    .restart local v10       #i:I
    move v12, v2

    .end local v2           #validCrlFound:Z
    .restart local v12       #validCrlFound:Z
    move-object v11, v1

    .end local v1           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v11       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_27

    .line 1933
    .end local v6           #certStatus:Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .end local v7           #reasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v9           #dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v10           #i:I
    .end local v11           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v12           #validCrlFound:Z
    .local v2, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_54
    move-exception p0

    .line 1935
    .local p0, e:Ljava/lang/Exception;
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1
    const-string p2, "CRL distribution point extension could not be read."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1941
    .local v0, crldp:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .local p0, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .restart local p1
    .restart local p2
    :catch_5d
    move-exception p0

    .line 1943
    .local p0, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1
    const-string p2, "No additional CRL locations could be decoded from CRL distribution point extension."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1958
    .local v1, dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v3       #validCrlFound:Z
    .restart local v6       #certStatus:Lcom/android/org/bouncycastle/jce/provider/CertStatus;
    .restart local v7       #reasonsMask:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .local p0, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .restart local p1
    .restart local p2
    :catch_66
    move-exception p0

    .line 1960
    .local p0, e:Ljava/lang/Exception;
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1
    const-string p2, "Distribution points could not be read."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1972
    .end local v0           #crldp:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v2           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v3           #validCrlFound:Z
    .local v1, paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .restart local v9       #dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v10       #i:I
    .restart local v11       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v12       #validCrlFound:Z
    .local p0, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .restart local p1
    .restart local p2
    :catch_6f
    move-exception v0

    .line 1974
    .local v0, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v0, v0

    .end local v11           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v0, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move v2, v12

    .end local v12           #validCrlFound:Z
    .local v2, validCrlFound:Z
    move-object v1, v0

    .end local v0           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v1, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_4e

    .end local v1           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v2           #validCrlFound:Z
    .restart local v11       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v12       #validCrlFound:Z
    :cond_74
    move-object v10, v11

    .end local v11           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local v10, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move v11, v12

    .line 1986
    .end local v9           #dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v12           #validCrlFound:Z
    .local v11, validCrlFound:Z
    :goto_76
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_14a

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_14a

    .line 1995
    const/4 v0, 0x0

    .line 1998
    .local v0, issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_start_85
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_95} :catch_c9
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_85 .. :try_end_95} :catch_d2

    move-result-object v9

    .line 2005
    .end local v0           #issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    .local v9, issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_start_96
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v9}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 2007
    .local v0, dp:Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .local v1, paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    .line 2008
    invoke-static/range {v0 .. v8}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_bf
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_96 .. :try_end_bf} :catch_147

    .line 2010
    const/4 p0, 0x1

    .end local v11           #validCrlFound:Z
    .local p0, validCrlFound:Z
    move p1, p0

    .end local p0           #validCrlFound:Z
    .local p1, validCrlFound:Z
    move-object p0, v10

    .line 2018
    .end local v0           #dp:Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v1           #paramsPKIXClone:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v9           #issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v10           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local p2
    .local p0, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_c2
    if-nez p1, :cond_df

    .line 2020
    instance-of p1, p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1           #validCrlFound:Z
    if-eqz p1, :cond_d7

    .line 2022
    throw p0

    .line 2001
    .local v0, issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    .restart local v10       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v11       #validCrlFound:Z
    .local p0, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .local p1, cert:Ljava/security/cert/X509Certificate;
    .restart local p2
    :catch_c9
    move-exception p0

    .line 2003
    .local p0, e:Ljava/lang/Exception;
    :try_start_ca
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1           #cert:Ljava/security/cert/X509Certificate;
    const-string p2, "Issuer from certificate for CRL could not be reencoded."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_d2
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_ca .. :try_end_d2} :catch_d2

    .line 2012
    .end local p0           #e:Ljava/lang/Exception;
    :catch_d2
    move-exception p0

    move-object p1, v0

    .line 2014
    .end local v0           #issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    .local p0, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local p1, issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    :goto_d4
    move-object p0, p0

    .end local v10           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local p0, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move p1, v11

    .end local v11           #validCrlFound:Z
    .local p1, validCrlFound:Z
    goto :goto_c2

    .line 2025
    .end local p1           #validCrlFound:Z
    :cond_d7
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "No valid CRL found."

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 2027
    .restart local p1       #validCrlFound:Z
    :cond_df
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result p0

    .end local p0           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/16 p1, 0xb

    if-eq p0, p1, :cond_123

    .line 2029
    .end local p1           #validCrlFound:Z
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Certificate revocation after "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2030
    .local p0, message:Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #message:Ljava/lang/String;
    const-string p1, ", reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2031
    .restart local p0       #message:Ljava/lang/String;
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2033
    .end local p0           #message:Ljava/lang/String;
    :cond_123
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result p0

    if-nez p0, :cond_136

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result p0

    const/16 p1, 0xb

    if-ne p0, p1, :cond_136

    .line 2035
    const/16 p0, 0xc

    invoke-virtual {v6, p0}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 2037
    :cond_136
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result p0

    const/16 p1, 0xc

    if-ne p0, p1, :cond_146

    .line 2039
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Certificate status could not be determined."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2041
    :cond_146
    return-void

    .line 2012
    .restart local v9       #issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    .restart local v10       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v11       #validCrlFound:Z
    .local p0, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .local p1, cert:Ljava/security/cert/X509Certificate;
    .restart local p2
    :catch_147
    move-exception p0

    move-object p1, v9

    .end local v9           #issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    .local p1, issuer:Lcom/android/org/bouncycastle/asn1/DERObject;
    goto :goto_d4

    .local p1, cert:Ljava/security/cert/X509Certificate;
    :cond_14a
    move p1, v11

    .end local v11           #validCrlFound:Z
    .local p1, validCrlFound:Z
    move-object p0, v10

    .end local v10           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .local p0, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto/16 :goto_c2

    .local v0, crldp:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    .local v2, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3       #validCrlFound:Z
    .local p0, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .local p1, cert:Ljava/security/cert/X509Certificate;
    :cond_14e
    move v11, v3

    .end local v3           #validCrlFound:Z
    .restart local v11       #validCrlFound:Z
    move-object v10, v2

    .end local v2           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v10       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto/16 :goto_76
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 22
    .parameter "certPath"
    .parameter "index"
    .parameter "policyNodes"
    .parameter "validPolicyTree"
    .parameter "policyMapping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 884
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 885
    .local v5, certs:Ljava/util/List;
    move-object v0, v5

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 886
    .local v13, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 888
    .local v5, n:I
    sub-int v7, v5, p1

    .line 891
    .local v7, i:I
    const/4 v5, 0x0

    .line 894
    .local v5, pm:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_14
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .end local v5           #pm:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v13, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1d
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_14 .. :try_end_1d} :catch_68

    move-result-object v5

    .line 902
    .restart local v5       #pm:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 p3, p3

    .line 903
    .local p3, _validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v5, :cond_1e0

    .line 905
    move-object v8, v5

    .line 906
    .local v8, mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 907
    .local v15, m_idp:Ljava/util/Map;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 909
    .local v9, s_idp:Ljava/util/Set;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2e
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v5, v6, :cond_86

    .line 911
    invoke-virtual {v8, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 912
    .local v6, mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    .line 913
    .local v11, id_p:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    .end local v6           #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    check-cast v6, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    .line 916
    .local v6, sd_p:Ljava/lang/String;
    invoke-interface {v15, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7b

    .line 918
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 919
    .local v10, tmp:Ljava/util/Set;
    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-interface {v15, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v6, v10

    .line 909
    .end local v10           #tmp:Ljava/util/Set;
    .local v6, tmp:Ljava/util/Set;
    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 897
    .end local v5           #j:I
    .end local v6           #tmp:Ljava/util/Set;
    .end local v8           #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #s_idp:Ljava/util/Set;
    .end local v11           #id_p:Ljava/lang/String;
    .end local v15           #m_idp:Ljava/util/Map;
    .local p3, validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_68
    move-exception p2

    .line 899
    .local p2, ex:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance p3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .end local p3           #validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string p4, "Policy mappings extension could not be decoded."

    .end local p4
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 925
    .restart local v5       #j:I
    .local v6, sd_p:Ljava/lang/String;
    .restart local v8       #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v9       #s_idp:Ljava/util/Set;
    .restart local v11       #id_p:Ljava/lang/String;
    .restart local v15       #m_idp:Ljava/util/Map;
    .local p2, policyNodes:[Ljava/util/List;
    .local p3, _validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p4
    :cond_7b
    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 926
    .restart local v10       #tmp:Ljava/util/Set;
    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v6, v10

    .end local v10           #tmp:Ljava/util/Set;
    .local v6, tmp:Ljava/util/Set;
    goto :goto_65

    .line 930
    .end local v6           #tmp:Ljava/util/Set;
    .end local v11           #id_p:Ljava/lang/String;
    :cond_86
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 931
    .end local v5           #j:I
    .end local v8           #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #s_idp:Ljava/util/Set;
    .local v14, it_idp:Ljava/util/Iterator;
    :cond_8a
    :goto_8a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e0

    .line 933
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 938
    .restart local v11       #id_p:Ljava/lang/String;
    if-lez p4, :cond_18b

    .line 940
    const/4 v5, 0x0

    .line 941
    .local v5, idp_found:Z
    aget-object v6, p2, v7

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 942
    .local v8, nodes_i:Ljava/util/Iterator;
    :cond_9f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_be

    .line 944
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 945
    .local v6, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 947
    const/4 v5, 0x1

    .line 948
    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    iput-object v9, v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 953
    .end local v6           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_be
    if-nez v5, :cond_1e7

    .line 955
    aget-object v5, p2, v7

    .end local v5           #idp_found:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 956
    .end local v8           #nodes_i:Ljava/util/Iterator;
    .local v16, nodes_i:Ljava/util/Iterator;
    :cond_c6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e3

    .line 958
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 959
    .restart local v6       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v5, "2.5.29.32.0"

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 961
    const/4 v10, 0x0

    .line 962
    .local v10, pq:Ljava/util/Set;
    const/4 v5, 0x0

    .line 965
    .local v5, policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_e0
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .end local v5           #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v13, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_e8
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_e0 .. :try_end_e8} :catch_152

    .line 973
    .restart local v5       #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 974
    .local v5, e:Ljava/util/Enumeration;
    :cond_ec
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_113

    .line 976
    const/4 v8, 0x0

    .line 979
    .local v8, pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_f3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fa} :catch_165

    move-result-object v8

    .line 986
    .restart local v8       #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string v9, "2.5.29.32.0"

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ec

    .line 990
    :try_start_10b
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    .end local v5           #e:Ljava/util/Enumeration;
    invoke-static {v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_112
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_10b .. :try_end_112} :catch_178

    move-result-object v10

    .line 1003
    .end local v8           #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_113
    const/4 v12, 0x0

    .line 1004
    .local v12, ci:Z
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_124

    .line 1006
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    sget-object v8, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 1010
    :cond_124
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1011
    .local v9, p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v5, "2.5.29.32.0"

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    .end local v6           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e3

    .line 1013
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-direct/range {v5 .. v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1015
    .local v5, c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1016
    aget-object v6, p2, v7

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v16

    .line 1017
    .end local v16           #nodes_i:Ljava/util/Iterator;
    .local v5, nodes_i:Ljava/util/Iterator;
    goto/16 :goto_8a

    .line 968
    .end local v5           #nodes_i:Ljava/util/Iterator;
    .end local v9           #p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12           #ci:Z
    .restart local v6       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v16       #nodes_i:Ljava/util/Iterator;
    :catch_152
    move-exception p2

    .line 970
    .local p2, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance p3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .end local p3           #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string p4, "Certificate policies extension could not be decoded."

    .end local p4
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 981
    .local v5, e:Ljava/util/Enumeration;
    .local p2, policyNodes:[Ljava/util/List;
    .restart local p3       #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p4
    :catch_165
    move-exception p2

    .line 983
    .local p2, ex:Ljava/lang/Exception;
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    .end local p3           #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string p4, "Policy information could not be decoded."

    .end local p4
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 993
    .end local v5           #e:Ljava/util/Enumeration;
    .restart local v8       #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .local p2, policyNodes:[Ljava/util/List;
    .restart local p3       #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p4
    :catch_178
    move-exception p2

    .line 996
    .local p2, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance p3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .end local p3           #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string p4, "Policy qualifier info set could not be decoded."

    .end local p4
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 1027
    .end local v6           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v10           #pq:Ljava/util/Set;
    .end local v16           #nodes_i:Ljava/util/Iterator;
    .local p2, policyNodes:[Ljava/util/List;
    .restart local p3       #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p4
    :cond_18b
    if-gtz p4, :cond_8a

    .line 1029
    aget-object v5, p2, v7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1030
    .local v10, nodes_i:Ljava/util/Iterator;
    :cond_193
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1032
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1033
    .local v5, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_193

    .line 1035
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1036
    .restart local v9       #p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1037
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 1038
    const/4 v5, 0x1

    sub-int v5, v7, v5

    .end local v9           #p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, k:I
    :goto_1b8
    if-ltz v5, :cond_193

    .line 1040
    aget-object v9, p2, v5

    .line 1041
    .local v9, nodes:Ljava/util/List;
    const/4 v6, 0x0

    .local v6, l:I
    :goto_1bd
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_1da

    .line 1043
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1044
    .local v8, node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_1dd

    .line 1046
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    .line 1048
    if-nez p3, :cond_1dd

    .line 1038
    .end local v8           #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1da
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b8

    .line 1041
    .restart local v8       #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1dd
    add-int/lit8 v6, v6, 0x1

    goto :goto_1bd

    .end local v5           #k:I
    .end local v6           #l:I
    .end local v8           #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9           #nodes:Ljava/util/List;
    .end local v10           #nodes_i:Ljava/util/Iterator;
    .end local v11           #id_p:Ljava/lang/String;
    .end local v14           #it_idp:Ljava/util/Iterator;
    .end local v15           #m_idp:Ljava/util/Map;
    :cond_1e0
    move-object/from16 p0, p3

    .line 1060
    .end local p3           #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local p0, _validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    return-object p0

    .restart local v11       #id_p:Ljava/lang/String;
    .restart local v14       #it_idp:Ljava/util/Iterator;
    .restart local v15       #m_idp:Ljava/util/Map;
    .restart local v16       #nodes_i:Ljava/util/Iterator;
    .local p0, certPath:Ljava/security/cert/CertPath;
    .restart local p3       #_validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1e3
    move-object/from16 v5, v16

    .end local v16           #nodes_i:Ljava/util/Iterator;
    .local v5, nodes_i:Ljava/util/Iterator;
    goto/16 :goto_8a

    .local v5, idp_found:Z
    .local v8, nodes_i:Ljava/util/Iterator;
    :cond_1e7
    move-object v5, v8

    .end local v8           #nodes_i:Ljava/util/Iterator;
    .local v5, nodes_i:Ljava/util/Iterator;
    goto/16 :goto_8a
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .registers 15
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1068
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1069
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1074
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 1077
    .local v8, pm:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_c
    sget-object v10, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_15} :catch_50

    move-result-object v8

    .line 1085
    if-eqz v8, :cond_7b

    .line 1087
    move-object v7, v8

    .line 1089
    .local v7, mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1a
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v5, v10, :cond_7b

    .line 1091
    const/4 v4, 0x0

    .line 1092
    .local v4, issuerDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v9, 0x0

    .line 1095
    .local v9, subjectDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :try_start_22
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1097
    .local v6, mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    .line 1098
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_5a

    move-result-object v9

    .line 1106
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    .line 1109
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1080
    .end local v4           #issuerDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #j:I
    .end local v6           #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7           #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #subjectDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_50
    move-exception v10

    move-object v3, v10

    .line 1082
    .local v3, ex:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension could not be decoded."

    invoke-direct {v10, v11, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1100
    .end local v3           #ex:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4       #issuerDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v5       #j:I
    .restart local v7       #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v9       #subjectDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :catch_5a
    move-exception v10

    move-object v2, v10

    .line 1102
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension contents could not be decoded."

    invoke-direct {v10, v11, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1112
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_64
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_78

    .line 1115
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1089
    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1119
    .end local v4           #issuerDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #j:I
    .end local v6           #mapping:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7           #mappings:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #subjectDomainPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_7b
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 14
    .parameter "certPath"
    .parameter "index"
    .parameter "nameConstraintValidator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1664
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1665
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1669
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 1672
    .local v5, nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :try_start_b
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1674
    .local v6, ncSeq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v6, :cond_1c

    .line 1676
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;

    .end local v5           #nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_4d

    .line 1684
    .restart local v5       #nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    :cond_1c
    if-eqz v5, :cond_60

    .line 1690
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1691
    .local v7, permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v7, :cond_27

    .line 1695
    :try_start_24
    invoke-virtual {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_57

    .line 1707
    :cond_27
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 1708
    .local v4, excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v4, :cond_60

    .line 1710
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 1713
    .local v2, e:Ljava/util/Enumeration;
    :goto_31
    :try_start_31
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_60

    .line 1715
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    .line 1716
    .local v8, subtree:Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual {p2, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_42} :catch_43

    goto :goto_31

    .line 1719
    .end local v8           #subtree:Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    :catch_43
    move-exception v9

    move-object v3, v9

    .line 1721
    .local v3, ex:Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1679
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #excluded:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v5           #nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .end local v6           #ncSeq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7           #permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_4d
    move-exception v9

    move-object v2, v9

    .line 1681
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Name constraints extension could not be decoded."

    invoke-direct {v9, v10, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1697
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #nc:Lcom/android/org/bouncycastle/asn1/x509/NameConstraints;
    .restart local v6       #ncSeq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v7       #permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_57
    move-exception v3

    .line 1699
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1726
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v7           #permitted:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_60
    return-void
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .registers 6
    .parameter "certPath"
    .parameter "index"
    .parameter "explicitPolicy"

    .prologue
    .line 2234
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2235
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2239
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2244
    if-eqz p2, :cond_16

    .line 2246
    const/4 v2, 0x1

    sub-int v2, p2, v2

    .line 2249
    :goto_15
    return v2

    :cond_16
    move v2, p2

    goto :goto_15
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .registers 6
    .parameter "certPath"
    .parameter "index"
    .parameter "policyMapping"

    .prologue
    .line 2257
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2258
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2262
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2267
    if-eqz p2, :cond_16

    .line 2269
    const/4 v2, 0x1

    sub-int v2, p2, v2

    .line 2272
    :goto_15
    return v2

    :cond_16
    move v2, p2

    goto :goto_15
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .registers 6
    .parameter "certPath"
    .parameter "index"
    .parameter "inhibitAnyPolicy"

    .prologue
    .line 2280
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2281
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2285
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2290
    if-eqz p2, :cond_16

    .line 2292
    const/4 v2, 0x1

    sub-int v2, p2, v2

    .line 2295
    :goto_15
    return v2

    :cond_16
    move v2, p2

    goto :goto_15
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .registers 12
    .parameter "certPath"
    .parameter "index"
    .parameter "explicitPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1555
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1556
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1560
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1563
    .local v4, pc:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_3f

    move-result-object v4

    .line 1574
    if-eqz v4, :cond_53

    .line 1576
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1578
    .local v5, policyConstraints:Ljava/util/Enumeration;
    :cond_1b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 1583
    :try_start_21
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1584
    .local v2, constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-nez v7, :cond_1b

    .line 1586
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_3a} :catch_49

    move-result v6

    .line 1587
    .local v6, tmpInt:I
    if-ge v6, p2, :cond_53

    move v7, v6

    .line 1601
    .end local v2           #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    .end local v6           #tmpInt:I
    :goto_3e
    return v7

    .line 1566
    :catch_3f
    move-exception v7

    move-object v3, v7

    .line 1568
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1594
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #policyConstraints:Ljava/util/Enumeration;
    :catch_49
    move-exception v7

    move-object v3, v7

    .line 1596
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    :cond_53
    move v7, p2

    .line 1601
    goto :goto_3e
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .registers 12
    .parameter "certPath"
    .parameter "index"
    .parameter "policyMapping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1610
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1611
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1615
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1618
    .local v4, pc:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_40

    move-result-object v4

    .line 1629
    if-eqz v4, :cond_54

    .line 1631
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1633
    .local v5, policyConstraints:Ljava/util/Enumeration;
    :cond_1b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_54

    .line 1637
    :try_start_21
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1638
    .local v2, constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1b

    .line 1640
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_3b} :catch_4a

    move-result v6

    .line 1641
    .local v6, tmpInt:I
    if-ge v6, p2, :cond_54

    move v7, v6

    .line 1655
    .end local v2           #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    .end local v6           #tmpInt:I
    :goto_3f
    return v7

    .line 1621
    :catch_40
    move-exception v7

    move-object v3, v7

    .line 1623
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1648
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #policyConstraints:Ljava/util/Enumeration;
    :catch_4a
    move-exception v7

    move-object v3, v7

    .line 1650
    .local v3, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    :cond_54
    move v7, p2

    .line 1655
    goto :goto_3f
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .registers 10
    .parameter "certPath"
    .parameter "index"
    .parameter "inhibitAnyPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2049
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2050
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2054
    .local v1, cert:Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2057
    .local v4, iap:Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_start_b
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_23

    move-result-object v4

    .line 2066
    if-eqz v4, :cond_2d

    .line 2068
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 2070
    .local v0, _inhibitAnyPolicy:I
    if-ge v0, p2, :cond_2d

    move v5, v0

    .line 2075
    .end local v0           #_inhibitAnyPolicy:I
    :goto_22
    return v5

    .line 2060
    :catch_23
    move-exception v5

    move-object v3, v5

    .line 2062
    .local v3, e:Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v5, v6, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .end local v3           #e:Ljava/lang/Exception;
    :cond_2d
    move v5, p2

    .line 2075
    goto :goto_22
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .registers 8
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2083
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2084
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2088
    .local v1, cert:Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 2091
    .local v0, bc:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_b
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_25

    move-result-object v0

    .line 2099
    if-eqz v0, :cond_2f

    .line 2101
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-nez v4, :cond_37

    .line 2103
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2094
    :catch_25
    move-exception v4

    move-object v3, v4

    .line 2096
    .local v3, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2108
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2f
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2110
    :cond_37
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .registers 8
    .parameter "certPath"
    .parameter "index"
    .parameter "maxPathLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2118
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2119
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2123
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2125
    if-gtz p2, :cond_1b

    .line 2127
    new-instance v2, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2130
    :cond_1b
    const/4 v2, 0x1

    sub-int v2, p2, v2

    .line 2132
    :goto_1e
    return v2

    :cond_1f
    move v2, p2

    goto :goto_1e
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .registers 11
    .parameter "certPath"
    .parameter "index"
    .parameter "maxPathLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2141
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 2142
    .local v4, certs:Ljava/util/List;
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2147
    .local v3, cert:Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2150
    .local v2, bc:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_b
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_25

    move-result-object v2

    .line 2158
    if-eqz v2, :cond_2f

    .line 2160
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 2162
    .local v0, _pathLengthConstraint:Ljava/math/BigInteger;
    if-eqz v0, :cond_2f

    .line 2164
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 2166
    .local v1, _plc:I
    if-ge v1, p2, :cond_2f

    move v6, v1

    .line 2172
    .end local v0           #_pathLengthConstraint:Ljava/math/BigInteger;
    .end local v1           #_plc:I
    :goto_24
    return v6

    .line 2153
    :catch_25
    move-exception v6

    move-object v5, v6

    .line 2155
    .local v5, e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Basic constraints extension cannot be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .end local v5           #e:Ljava/lang/Exception;
    :cond_2f
    move v6, p2

    .line 2172
    goto :goto_24
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .registers 8
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2180
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2181
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2186
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2188
    .local v0, _usage:[Z
    if-eqz v0, :cond_1e

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-nez v3, :cond_1e

    .line 2190
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2194
    :cond_1e
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .registers 11
    .parameter "certPath"
    .parameter "index"
    .parameter "criticalExtensions"
    .parameter "pathCheckers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2203
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2204
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2210
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2211
    .local v3, tmpIter:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2215
    :try_start_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 2217
    :catch_1e
    move-exception v4

    move-object v2, v4

    .line 2219
    .local v2, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2222
    .end local v2           #e:Ljava/security/cert/CertPathValidatorException;
    :cond_2e
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 2224
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate has unsupported critical extension."

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2227
    :cond_3d
    return-void
.end method

.method protected static processCRLA1i(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .registers 9
    .parameter "currentDate"
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 625
    .local v2, set:Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 627
    const/4 v1, 0x0

    .line 630
    .local v1, freshestCRL:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_c
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_15
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_15} :catch_2f

    move-result-object v1

    .line 637
    if-nez v1, :cond_22

    .line 641
    :try_start_18
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p3, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_21
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_18 .. :try_end_21} :catch_39

    move-result-object v1

    .line 649
    :cond_22
    if-eqz v1, :cond_2e

    .line 653
    :try_start_24
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_27
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_24 .. :try_end_27} :catch_43

    .line 663
    :try_start_27
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_27 .. :try_end_2e} :catch_4c

    .line 671
    .end local v1           #freshestCRL:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_2e
    return-object v2

    .line 633
    .restart local v1       #freshestCRL:Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_2f
    move-exception v3

    move-object v0, v3

    .line 635
    .local v0, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 644
    .end local v0           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_39
    move-exception v3

    move-object v0, v3

    .line 646
    .restart local v0       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 655
    .end local v0           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_43
    move-exception v0

    .line 657
    .restart local v0       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No new delta CRL locations could be added from Freshest CRL extension."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 665
    .end local v0           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_4c
    move-exception v3

    move-object v0, v3

    .line 667
    .restart local v0       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Exception obtaining delta CRLs."

    invoke-direct {v3, v4, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static processCRLA1ii(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .registers 11
    .parameter "currentDate"
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 681
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 682
    .local v0, completeSet:Ljava/util/Set;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 683
    .local v2, deltaSet:Ljava/util/Set;
    new-instance v1, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 684
    .local v1, crlselect:Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {v1, p2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 686
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 688
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 697
    :goto_20
    :try_start_20
    invoke-virtual {p3}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_69

    .line 704
    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    .line 709
    :try_start_2e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 710
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 711
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_4f
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2e .. :try_end_4f} :catch_84

    .line 717
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 722
    :try_start_55
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_5c
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_55 .. :try_end_5c} :catch_8e

    .line 729
    :cond_5c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    return-object v4

    .line 692
    :cond_65
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    goto :goto_20

    .line 699
    :catch_69
    move-exception v4

    move-object v3, v4

    .line 701
    .local v3, e:Ljava/io/IOException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot extract issuer from CRL."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 713
    .end local v3           #e:Ljava/io/IOException;
    :catch_84
    move-exception v4

    move-object v3, v4

    .line 715
    .local v3, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Exception obtaining complete CRLs."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 724
    .end local v3           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_8e
    move-exception v4

    move-object v3, v4

    .line 726
    .restart local v3       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Exception obtaining delta CRLs."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLB1(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 12
    .parameter "dp"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 287
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 288
    .local v2, idp:Lcom/android/org/bouncycastle/asn1/DERObject;
    const/4 v3, 0x0

    .line 289
    .local v3, isIndirect:Z
    if-eqz v2, :cond_14

    .line 291
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 293
    const/4 v3, 0x1

    .line 296
    :cond_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    .line 298
    .local v4, issuerBytes:[B
    const/4 v6, 0x0

    .line 299
    .local v6, matchIssuer:Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_70

    .line 301
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 302
    .local v1, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2c
    array-length v7, v1

    if-ge v5, v7, :cond_5a

    .line 304
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4d

    .line 308
    :try_start_38
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_49} :catch_50

    move-result v7

    if-eqz v7, :cond_4d

    .line 310
    const/4 v6, 0x1

    .line 302
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 313
    :catch_50
    move-exception v7

    move-object v0, v7

    .line 315
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 320
    .end local v0           #e:Ljava/io/IOException;
    :cond_5a
    if-eqz v6, :cond_66

    if-nez v3, :cond_66

    .line 322
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 324
    :cond_66
    if-nez v6, :cond_7f

    .line 326
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 331
    .end local v1           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5           #j:I
    :cond_70
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 334
    const/4 v6, 0x1

    .line 337
    :cond_7f
    if-nez v6, :cond_89

    .line 339
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 341
    :cond_89
    return-void
.end method

.method protected static processCRLB2(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 18
    .parameter "dp"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 100
    const/4 v6, 0x0

    .line 103
    .local v6, idp:Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_2
    sget-object v11, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_42

    move-result-object v6

    .line 112
    if-eqz v6, :cond_1e4

    .line 114
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v11

    if-eqz v11, :cond_189

    .line 117
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 118
    .local v3, dpName:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v9, names:Ljava/util/List;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v11

    if-nez v11, :cond_4c

    .line 122
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 123
    .local v5, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_37
    array-length v11, v5

    if-ge v7, v11, :cond_4c

    .line 125
    aget-object v11, v5, v7

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 106
    .end local v3           #dpName:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7           #j:I
    .end local v9           #names:Ljava/util/List;
    :catch_42
    move-exception v11

    move-object v4, v11

    .line 108
    .local v4, e:Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Issuing distribution point extension could not be decoded."

    invoke-direct {v11, v12, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 128
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #dpName:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v9       #names:Ljava/util/List;
    :cond_4c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v11

    if-ne v11, v13, :cond_9d

    .line 130
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    .local v10, vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_57
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 136
    .local v4, e:Ljava/util/Enumeration;
    :goto_6b
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_85

    .line 138
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_7a} :catch_7b

    goto :goto_6b

    .line 141
    .end local v4           #e:Ljava/util/Enumeration;
    :catch_7b
    move-exception v11

    move-object v4, v11

    .line 143
    .local v4, e:Ljava/io/IOException;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Could not read CRL issuer."

    invoke-direct {v11, v12, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 145
    .local v4, e:Ljava/util/Enumeration;
    :cond_85
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 146
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v4           #e:Ljava/util/Enumeration;
    .end local v10           #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_9d
    const/4 v8, 0x0

    .line 151
    .local v8, matches:Z
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v11

    if-eqz v11, :cond_159

    .line 153
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 154
    const/4 v5, 0x0

    .line 155
    .restart local v5       #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v11

    if-nez v11, :cond_bb

    .line 157
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 159
    :cond_bb
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v11

    if-ne v11, v13, :cond_13d

    .line 161
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    if-eqz v11, :cond_fa

    .line 163
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 179
    .end local p0
    :goto_cf
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_d0
    array-length v11, v5

    if-ge v7, v11, :cond_13d

    .line 181
    aget-object v11, v5, v7

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 182
    .restart local v4       #e:Ljava/util/Enumeration;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 183
    .restart local v10       #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_ea
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_122

    .line 185
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v10, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_ea

    .line 167
    .end local v4           #e:Ljava/util/Enumeration;
    .end local v7           #j:I
    .end local v10           #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local p0
    :cond_fa
    new-array v5, v13, [Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 170
    const/4 v11, 0x0

    :try_start_fd
    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v13, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v13, p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    aput-object v12, v5, v11
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_117} :catch_118

    goto :goto_cf

    .line 174
    :catch_118
    move-exception v11

    move-object v4, v11

    .line 176
    .local v4, e:Ljava/io/IOException;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Could not read certificate issuer."

    invoke-direct {v11, v12, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 187
    .local v4, e:Ljava/util/Enumeration;
    .restart local v7       #j:I
    .restart local v10       #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_122
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 188
    new-instance v11, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    aput-object v11, v5, v7

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto :goto_d0

    .line 191
    .end local v4           #e:Ljava/util/Enumeration;
    .end local v7           #j:I
    .end local v10           #vec:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_13d
    if-eqz v5, :cond_14c

    .line 193
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_140
    array-length v11, v5

    if-ge v7, v11, :cond_14c

    .line 195
    aget-object v11, v5, v7

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_156

    .line 197
    const/4 v8, 0x1

    .line 202
    .end local v7           #j:I
    :cond_14c
    if-nez v8, :cond_189

    .line 204
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 193
    .restart local v7       #j:I
    :cond_156
    add-int/lit8 v7, v7, 0x1

    goto :goto_140

    .line 213
    .end local v5           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7           #j:I
    .restart local p0
    :cond_159
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    if-nez v11, :cond_167

    .line 215
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 218
    :cond_167
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 219
    .restart local v5       #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_170
    array-length v11, v5

    if-ge v7, v11, :cond_17c

    .line 221
    aget-object v11, v5, v7

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_186

    .line 223
    const/4 v8, 0x1

    .line 227
    :cond_17c
    if-nez v8, :cond_189

    .line 229
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 219
    :cond_186
    add-int/lit8 v7, v7, 0x1

    goto :goto_170

    .line 234
    .end local v3           #dpName:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v7           #j:I
    .end local v8           #matches:Z
    .end local v9           #names:Ljava/util/List;
    .end local p0
    :cond_189
    const/4 v2, 0x0

    .line 237
    .local v2, bc:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_18a
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v11, v0

    sget-object v12, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_198} :catch_1b6

    move-result-object v2

    .line 245
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move v11, v0

    if-eqz v11, :cond_1d6

    .line 248
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v11

    if-eqz v11, :cond_1c0

    if-eqz v2, :cond_1c0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v11

    if-eqz v11, :cond_1c0

    .line 250
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "CA Cert CRL only contains user certificates."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 240
    :catch_1b6
    move-exception v11

    move-object v4, v11

    .line 242
    .local v4, e:Ljava/lang/Exception;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Basic constraints extension could not be decoded."

    invoke-direct {v11, v12, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 254
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1c0
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v11

    if-eqz v11, :cond_1d6

    if-eqz v2, :cond_1ce

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v11

    if-nez v11, :cond_1d6

    .line 256
    :cond_1ce
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "End CRL only contains CA certificates."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 261
    :cond_1d6
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v11

    if-eqz v11, :cond_1e4

    .line 263
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 266
    .end local v2           #bc:Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;
    :cond_1e4
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .registers 11
    .parameter "deltaCRL"
    .parameter "completeCRL"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 749
    if-nez p0, :cond_3

    .line 847
    :cond_2
    return-void

    .line 753
    :cond_3
    const/4 v1, 0x0

    .line 756
    .local v1, completeidp:Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_4
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_2a

    move-result-object v1

    .line 764
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 767
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 769
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 759
    :catch_2a
    move-exception v6

    move-object v4, v6

    .line 761
    .local v4, e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension could not be decoded."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 773
    .end local v4           #e:Ljava/lang/Exception;
    :cond_34
    const/4 v3, 0x0

    .line 776
    .local v3, deltaidp:Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_35
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_4f

    move-result-object v3

    .line 785
    const/4 v5, 0x0

    .line 786
    .local v5, match:Z
    if-nez v1, :cond_59

    .line 788
    if-nez v3, :cond_45

    .line 790
    const/4 v5, 0x1

    .line 800
    :cond_45
    :goto_45
    if-nez v5, :cond_61

    .line 802
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 779
    .end local v5           #match:Z
    :catch_4f
    move-exception v6

    move-object v4, v6

    .line 781
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 795
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #match:Z
    :cond_59
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 797
    const/4 v5, 0x1

    goto :goto_45

    .line 807
    :cond_61
    const/4 v0, 0x0

    .line 810
    .local v0, completeKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_start_62
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_67
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_62 .. :try_end_67} :catch_79

    move-result-object v0

    .line 819
    const/4 v2, 0x0

    .line 822
    .local v2, deltaKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_start_69
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_6e
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_69 .. :try_end_6e} :catch_83

    move-result-object v2

    .line 831
    if-nez v0, :cond_8d

    .line 833
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 813
    .end local v2           #deltaKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObject;
    :catch_79
    move-exception v6

    move-object v4, v6

    .line 815
    .local v4, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 825
    .end local v4           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2       #deltaKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObject;
    :catch_83
    move-exception v6

    move-object v4, v6

    .line 827
    .restart local v4       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 836
    .end local v4           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_8d
    if-nez v2, :cond_97

    .line 838
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 841
    :cond_97
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 843
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .registers 7
    .parameter "crl"
    .parameter "dp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 351
    .local v1, idp:Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_38

    move-result-object v1

    .line 359
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_42

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 361
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    .line 370
    :goto_37
    return-object v2

    .line 354
    :catch_38
    move-exception v2

    move-object v0, v2

    .line 356
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 365
    .end local v0           #e:Ljava/lang/Exception;
    :cond_42
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_53

    :cond_4a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_53

    .line 367
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_37

    .line 370
    :cond_53
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    :goto_5b
    if-nez v1, :cond_72

    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    :goto_5f
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    goto :goto_37

    :cond_64
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    goto :goto_5b

    :cond_72
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    goto :goto_5f
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;
    .registers 12
    .parameter "crl"
    .parameter "cert"
    .parameter "defaultCRLSignCert"
    .parameter "defaultCRLSignKey"
    .parameter "paramsPKIX"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 449
    .local v0, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :try_start_5
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    .line 450
    .local p0, issuerPrincipal:[B
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_58

    .line 462
    :try_start_10
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object p0

    .end local p0           #issuerPrincipal:[B
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object p0

    .line 463
    .local p0, coll:Ljava/util/Collection;
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object p1

    .end local p1
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 464
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_10 .. :try_end_2e} :catch_61

    .line 471
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 475
    .local p1, cert_it:Ljava/util/Iterator;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v3, validCerts:Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .end local p0           #coll:Ljava/util/Collection;
    .local v4, validKeys:Ljava/util/List;
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_d1

    .line 480
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 486
    .local v2, signingCert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v2, p2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6a

    .line 488
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 452
    .end local v2           #signingCert:Ljava/security/cert/X509Certificate;
    .end local v3           #validCerts:Ljava/util/List;
    .end local v4           #validKeys:Ljava/util/List;
    .local p1, cert:Ljava/lang/Object;
    :catch_58
    move-exception p0

    .line 454
    .local p0, e:Ljava/io/IOException;
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1           #cert:Ljava/lang/Object;
    const-string p2, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 466
    .end local p0           #e:Ljava/io/IOException;
    .restart local p2
    :catch_61
    move-exception p0

    .line 468
    .local p0, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuer certificate for CRL cannot be searched."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 494
    .end local p0           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2       #signingCert:Ljava/security/cert/X509Certificate;
    .restart local v3       #validCerts:Ljava/util/List;
    .restart local v4       #validKeys:Ljava/util/List;
    .local p1, cert_it:Ljava/util/Iterator;
    .restart local p2
    :cond_6a
    :try_start_6a
    const-string p0, "PKIX"

    const-string v1, "BC"

    invoke-static {p0, v1}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object p0

    .line 495
    .local p0, builder:Ljava/security/cert/CertPathBuilder;
    new-instance v1, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V
    :try_end_77
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_6a .. :try_end_77} :catch_128
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6a .. :try_end_77} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_77} :catch_c5

    .line 496
    .end local v0           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local v1, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :try_start_77
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 497
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 498
    .local v0, temp:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 499
    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    .end local v0           #temp:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 510
    .local v0, params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-interface {p5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 512
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 518
    :goto_93
    invoke-virtual {p0, v0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object p0

    .end local p0           #builder:Ljava/security/cert/CertPathBuilder;
    invoke-interface {p0}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    .line 519
    .local p0, certs:Ljava/util/List;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    .end local v0           #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    move-result-object p0

    .end local p0           #certs:Ljava/util/List;
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 534
    .end local v1           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local v0, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_3f

    .line 516
    .local v0, params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .restart local v1       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p0, builder:Ljava/security/cert/CertPathBuilder;
    :cond_ac
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V
    :try_end_b0
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_77 .. :try_end_b0} :catch_b1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_77 .. :try_end_b0} :catch_125
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_b0} :catch_122

    goto :goto_93

    .line 522
    .end local v0           #params:Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .end local p0           #builder:Ljava/security/cert/CertPathBuilder;
    :catch_b1
    move-exception p0

    move-object p1, v1

    .line 524
    .end local v1           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p0, e:Ljava/security/cert/CertPathBuilderException;
    .local p1, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :goto_b3
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    const-string p2, "Internal error."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 526
    .end local p0           #e:Ljava/security/cert/CertPathBuilderException;
    .local v0, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p1, cert_it:Ljava/util/Iterator;
    .restart local p2
    :catch_bb
    move-exception p0

    move-object p1, v0

    .line 528
    .end local v0           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p0, e:Ljava/security/cert/CertPathValidatorException;
    .local p1, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :goto_bd
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    const-string p2, "Public key of issuer certificate of CRL could not be retrieved."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 530
    .end local p0           #e:Ljava/security/cert/CertPathValidatorException;
    .restart local v0       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p1, cert_it:Ljava/util/Iterator;
    .restart local p2
    :catch_c5
    move-exception p0

    move-object p1, v0

    .line 532
    .end local v0           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p0, e:Ljava/lang/Exception;
    .local p1, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    :goto_c7
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/lang/Exception;
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    .end local v2           #signingCert:Ljava/security/cert/X509Certificate;
    .restart local v0       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p1, cert_it:Ljava/util/Iterator;
    :cond_d1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 538
    .local p0, checkKeys:Ljava/util/Set;
    const/4 p2, 0x0

    .line 539
    .local p2, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 p1, 0x0

    .local p1, i:I
    move-object p3, p2

    .end local p2           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local p4
    .end local p5
    .local p3, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_d9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_108

    .line 541
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 542
    .local p2, signCert:Ljava/security/cert/X509Certificate;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p2

    .line 544
    .local p2, keyusage:[Z
    if-eqz p2, :cond_ff

    array-length p4, p2

    const/4 p5, 0x7

    if-lt p4, p5, :cond_f4

    const/4 p4, 0x6

    aget-boolean p2, p2, p4

    .end local p2           #keyusage:[Z
    if-nez p2, :cond_ff

    .line 546
    :cond_f4
    new-instance p2, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string p3, "Issuer certificate key usage extension does not permit CRL signing."

    .end local p3           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-direct {p2, p3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 539
    .local p2, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_fb
    add-int/lit8 p1, p1, 0x1

    move-object p3, p2

    .end local p2           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local p3       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_d9

    .line 551
    :cond_ff
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p2, p3

    .end local p3           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local p2       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_fb

    .line 555
    .end local p2           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local p3       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_108
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    .end local p1           #i:I
    if-eqz p1, :cond_118

    if-nez p3, :cond_118

    .line 557
    new-instance p0, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p0           #checkKeys:Ljava/util/Set;
    const-string p1, "Cannot find a valid issuer certificate."

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 559
    .restart local p0       #checkKeys:Ljava/util/Set;
    :cond_118
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_121

    if-eqz p3, :cond_121

    .line 561
    throw p3

    .line 564
    :cond_121
    return-object p0

    .line 530
    .end local v0           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .end local p0           #checkKeys:Ljava/util/Set;
    .restart local v1       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .restart local v2       #signingCert:Ljava/security/cert/X509Certificate;
    .local p1, cert_it:Ljava/util/Iterator;
    .local p2, defaultCRLSignCert:Ljava/security/cert/X509Certificate;
    .local p3, defaultCRLSignKey:Ljava/security/PublicKey;
    .restart local p4
    .restart local p5
    :catch_122
    move-exception p0

    move-object p1, v1

    .end local v1           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p1, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_c7

    .line 526
    .restart local v1       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p1, cert_it:Ljava/util/Iterator;
    :catch_125
    move-exception p0

    move-object p1, v1

    .end local v1           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p1, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_bd

    .line 522
    .restart local v0       #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p1, cert_it:Ljava/util/Iterator;
    :catch_128
    move-exception p0

    move-object p1, v0

    .end local v0           #selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .local p1, selector:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_b3
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .registers 8
    .parameter "crl"
    .parameter "keys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, lastException:Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 578
    .local v2, key:Ljava/security/PublicKey;
    :try_start_11
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    .line 579
    return-object v2

    .line 581
    :catch_15
    move-exception v0

    .line 583
    .local v0, e:Ljava/lang/Exception;
    move-object v3, v0

    .line 585
    goto :goto_5

    .line 586
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #key:Ljava/security/PublicKey;
    :cond_18
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .registers 8
    .parameter "deltacrls"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v3, 0x0

    .line 596
    .local v3, lastException:Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 598
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 601
    .local v0, crl:Ljava/security/cert/X509CRL;
    :try_start_11
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_16

    move-object v4, v0

    .line 614
    .end local v0           #crl:Ljava/security/cert/X509CRL;
    :goto_15
    return-object v4

    .line 604
    .restart local v0       #crl:Ljava/security/cert/X509CRL;
    :catch_16
    move-exception v1

    .line 606
    .local v1, e:Ljava/lang/Exception;
    move-object v3, v1

    .line 608
    goto :goto_5

    .line 610
    .end local v0           #crl:Ljava/security/cert/X509CRL;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_19
    if-eqz v3, :cond_23

    .line 612
    new-instance v4, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify delta CRL."

    invoke-direct {v4, v5, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 614
    :cond_23
    const/4 v4, 0x0

    goto :goto_15
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .registers 6
    .parameter "validDate"
    .parameter "deltacrl"
    .parameter "cert"
    .parameter "certStatus"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 859
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 861
    :cond_b
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .registers 6
    .parameter "validDate"
    .parameter "completecrl"
    .parameter "cert"
    .parameter "certStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 870
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 872
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V

    .line 874
    :cond_b
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V
    .registers 15
    .parameter "certPath"
    .parameter "paramsPKIX"
    .parameter "index"
    .parameter "workingPublicKey"
    .parameter "verificationAlreadyPerformed"
    .parameter "workingIssuerName"
    .parameter "sign"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1478
    .local v5, certs:Ljava/util/List;
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1482
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-nez p4, :cond_13

    .line 1488
    :try_start_c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_13} :catch_62

    .line 1501
    :cond_13
    :try_start_13
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1a
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_13 .. :try_end_1a} :catch_6c
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_13 .. :try_end_1a} :catch_8b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_13 .. :try_end_1a} :catch_aa

    .line 1520
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1524
    :try_start_20
    invoke-static {p1, p0, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object v0, p1

    move-object v3, p6

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    :try_end_2a
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_20 .. :try_end_2a} :catch_b4

    .line 1541
    :cond_2a
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 1543
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match SubjectName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") of signing certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1491
    :catch_62
    move-exception v0

    move-object v7, v0

    .line 1493
    .local v7, e:Ljava/security/GeneralSecurityException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1504
    .end local v7           #e:Ljava/security/GeneralSecurityException;
    :catch_6c
    move-exception v0

    move-object v7, v0

    .line 1506
    .local v7, e:Ljava/security/cert/CertificateExpiredException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1508
    .end local v7           #e:Ljava/security/cert/CertificateExpiredException;
    :catch_8b
    move-exception v0

    move-object v7, v0

    .line 1510
    .local v7, e:Ljava/security/cert/CertificateNotYetValidException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1512
    .end local v7           #e:Ljava/security/cert/CertificateNotYetValidException;
    :catch_aa
    move-exception v0

    move-object v7, v0

    .line 1514
    .local v7, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v0, v2, v7, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1527
    .end local v7           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_b4
    move-exception v0

    move-object v7, v0

    .line 1529
    .restart local v7       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    move-object v6, v7

    .line 1530
    .local v6, cause:Ljava/lang/Throwable;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 1532
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 1534
    :cond_c1
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, p0, p2}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1547
    .end local v6           #cause:Ljava/lang/Throwable;
    .end local v7           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_cb
    return-void
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 8
    .parameter "certPath"
    .parameter "index"
    .parameter "nameConstraintValidator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1174
    .local v0, certs:Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1175
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1177
    .local v2, n:I
    sub-int v0, v2, p1

    .line 1181
    .local v0, i:I
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-lt v0, v2, :cond_b4

    .line 1183
    :cond_18
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 1184
    .local v2, principal:Ljavax/security/auth/x500/X500Principal;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v0           #i:I
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    .end local v2           #principal:Ljavax/security/auth/x500/X500Principal;
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1189
    .local v0, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_25
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .end local v0           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_6f

    move-result-object v2

    .line 1199
    .local v2, dns:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_2d
    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1200
    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_33
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_2d .. :try_end_33} :catch_78

    .line 1208
    const/4 v0, 0x0

    .line 1211
    .local v0, altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_start_34
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .end local v0           #altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_81

    move-result-object v0

    .line 1219
    .restart local v0       #altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local v2           #dns:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getValues(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/util/Vector;

    move-result-object v1

    .line 1220
    .local v1, emails:Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    :goto_4d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1222
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1223
    .local v2, email:Ljava/lang/String;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1226
    .local v3, emailAsGeneralName:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_5f
    invoke-virtual {p2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1227
    invoke-virtual {p2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_65
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5f .. :try_end_65} :catch_66

    goto :goto_4d

    .line 1229
    :catch_66
    move-exception p2

    .line 1231
    .local p2, ex:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .end local v0           #altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    const-string v1, "Subtree check for certificate subject alternative email failed."

    .end local v1           #e:Ljava/util/Enumeration;
    invoke-direct {v0, v1, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1191
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #emailAsGeneralName:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .local v1, cert:Ljava/security/cert/X509Certificate;
    .local p2, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :catch_6f
    move-exception p2

    .line 1193
    .local p2, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Exception extracting subject name when checking subtrees."

    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    invoke-direct {v0, v1, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1202
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    .local v2, dns:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local p2, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :catch_78
    move-exception p2

    .line 1204
    .local p2, e:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Subtree check for certificate subject failed."

    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    invoke-direct {v0, v1, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1214
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    .local p2, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :catch_81
    move-exception p2

    .line 1216
    .local p2, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Subject alternative name extension could not be decoded."

    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    invoke-direct {v0, v1, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1235
    .end local v2           #dns:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v0       #altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .local v1, e:Ljava/util/Enumeration;
    .local p2, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :cond_8a
    if-eqz v0, :cond_b4

    .line 1237
    const/4 v1, 0x0

    .line 1240
    .local v1, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_8d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_a2

    move-result-object v0

    .line 1247
    .end local v1           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .local v0, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_92
    array-length v2, v0

    if-ge v1, v2, :cond_b4

    .line 1252
    :try_start_95
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1253
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_9f
    .catch Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_95 .. :try_end_9f} :catch_ab

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 1242
    .local v0, altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .local v1, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_a2
    move-exception p2

    .line 1244
    .local p2, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .end local v0           #altName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    const-string v1, "Subject alternative name contents could not be decoded."

    .end local v1           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-direct {v0, v1, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1255
    .local v0, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .local v1, j:I
    .local p2, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :catch_ab
    move-exception p2

    .line 1257
    .local p2, e:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .end local v0           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const-string v1, "Subtree check for certificate subject alternative name failed."

    .end local v1           #j:I
    invoke-direct {v0, v1, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1263
    .local p2, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :cond_b4
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 23
    .parameter "certPath"
    .parameter "index"
    .parameter "acceptablePolicies"
    .parameter "validPolicyTree"
    .parameter "policyNodes"
    .parameter "inhibitAnyPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1274
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1275
    .local v5, certs:Ljava/util/List;
    move-object v0, v5

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 1276
    .local v14, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 1278
    .local v9, n:I
    sub-int v7, v9, p1

    .line 1283
    .local v7, i:I
    const/4 v5, 0x0

    .line 1286
    .local v5, certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_14
    sget-object v5, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .end local v5           #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v14, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1d
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_14 .. :try_end_1d} :catch_6d

    move-result-object v5

    .line 1294
    .restart local v5       #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v5, :cond_212

    if-eqz p3, :cond_212

    .line 1299
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 1300
    .local v6, e:Ljava/util/Enumeration;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1302
    .local v11, pols:Ljava/util/Set;
    :cond_2b
    :goto_2b
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_93

    .line 1304
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v8

    .line 1305
    .local v8, pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    .line 1307
    .local v10, pOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1309
    const-string v12, "2.5.29.32.0"

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2b

    .line 1311
    const/4 v12, 0x0

    .line 1314
    .local v12, pq:Ljava/util/Set;
    :try_start_51
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    .end local v8           #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-static {v8}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_58
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_51 .. :try_end_58} :catch_80

    move-result-object v12

    .line 1322
    move v0, v7

    move-object/from16 v1, p4

    move-object v2, v10

    move-object v3, v12

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z

    move-result v8

    .line 1324
    .local v8, match:Z
    if-nez v8, :cond_2b

    .line 1326
    move v0, v7

    move-object/from16 v1, p4

    move-object v2, v10

    move-object v3, v12

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V

    goto :goto_2b

    .line 1289
    .end local v5           #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v6           #e:Ljava/util/Enumeration;
    .end local v8           #match:Z
    .end local v10           #pOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v11           #pols:Ljava/util/Set;
    .end local v12           #pq:Ljava/util/Set;
    :catch_6d
    move-exception p2

    .line 1291
    .local p2, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance p3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .end local p3
    const-string p4, "Could not read certificate policies extension from certificate."

    .end local p4
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 1316
    .restart local v5       #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6       #e:Ljava/util/Enumeration;
    .restart local v10       #pOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v11       #pols:Ljava/util/Set;
    .restart local v12       #pq:Ljava/util/Set;
    .local p2, acceptablePolicies:Ljava/util/Set;
    .restart local p3
    .restart local p4
    :catch_80
    move-exception p2

    .line 1318
    .local p2, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance p3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .end local p3
    const-string p4, "Policy qualifier info set could not be build."

    .end local p4
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    .line 1331
    .end local v10           #pOid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v12           #pq:Ljava/util/Set;
    .local p2, acceptablePolicies:Ljava/util/Set;
    .restart local p3
    .restart local p4
    :cond_93
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    .end local p0
    if-nez p0, :cond_a5

    const-string p0, "2.5.29.32.0"

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_145

    .line 1333
    :cond_a5
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1334
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1357
    .end local p1
    :goto_ae
    if-gtz p5, :cond_b8

    if-ge v7, v9, :cond_21c

    invoke-static {v14}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_21c

    .line 1359
    :cond_b8
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v15

    .line 1361
    .end local v6           #e:Ljava/util/Enumeration;
    .end local p2           #acceptablePolicies:Ljava/util/Set;
    .local v15, e:Ljava/util/Enumeration;
    :cond_bc
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_219

    .line 1363
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object p0

    .line 1365
    .local p0, pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string p1, "2.5.29.32.0"

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 1367
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    .end local p0           #pInfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v10

    .line 1368
    .local v10, _apq:Ljava/util/Set;
    const/16 p0, 0x1

    sub-int p0, v7, p0

    aget-object p5, p4, p0

    .line 1370
    .local p5, _nodes:Ljava/util/List;
    const/16 p0, 0x0

    .local p0, k:I
    move/from16 v16, p0

    .end local v5           #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #n:I
    .end local v11           #pols:Ljava/util/Set;
    .end local p0           #k:I
    .local v16, k:I
    :goto_ec
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result p0

    move/from16 v0, v16

    move/from16 v1, p0

    if-ge v0, v1, :cond_1aa

    .line 1372
    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1374
    .local v9, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1375
    .local v13, _policySetIter:Ljava/util/Iterator;
    :cond_108
    :goto_108
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1a4

    .line 1377
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 1380
    .local p0, _tmp:Ljava/lang/Object;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/String;

    move/from16 p1, v0

    if-eqz p1, :cond_173

    .line 1382
    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 1393
    .end local p0           #_tmp:Ljava/lang/Object;
    .local v11, _policy:Ljava/lang/String;
    :goto_11f
    const/16 p0, 0x0

    .line 1394
    .local p0, _found:Z
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object p1

    .local p1, _childrenIter:Ljava/util/Iterator;
    move/from16 p2, p0

    .line 1396
    .end local p0           #_found:Z
    .local p2, _found:Z
    :goto_127
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_182

    .line 1398
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1400
    .local p0, _child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object p0

    .end local p0           #_child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_215

    .line 1402
    const/16 p0, 0x1

    .end local p2           #_found:Z
    .local p0, _found:Z
    :goto_142
    move/from16 p2, p0

    .line 1404
    .end local p0           #_found:Z
    .restart local p2       #_found:Z
    goto :goto_127

    .line 1338
    .end local v10           #_apq:Ljava/util/Set;
    .end local v13           #_policySetIter:Ljava/util/Iterator;
    .end local v15           #e:Ljava/util/Enumeration;
    .end local v16           #k:I
    .restart local v5       #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v6       #e:Ljava/util/Enumeration;
    .local v9, n:I
    .local v11, pols:Ljava/util/Set;
    .local p1, index:I
    .local p2, acceptablePolicies:Ljava/util/Set;
    .local p5, inhibitAnyPolicy:I
    :cond_145
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1339
    .local p0, it:Ljava/util/Iterator;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1341
    .end local p1           #index:I
    .local v8, t1:Ljava/util/Set;
    :cond_14e
    :goto_14e
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_168

    .line 1343
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1345
    .local p1, o:Ljava/lang/Object;
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14e

    .line 1347
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14e

    .line 1350
    .end local p1           #o:Ljava/lang/Object;
    :cond_168
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1351
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_ae

    .line 1384
    .end local v5           #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v6           #e:Ljava/util/Enumeration;
    .end local v8           #t1:Ljava/util/Set;
    .end local v11           #pols:Ljava/util/Set;
    .end local p2           #acceptablePolicies:Ljava/util/Set;
    .local v9, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v10       #_apq:Ljava/util/Set;
    .restart local v13       #_policySetIter:Ljava/util/Iterator;
    .restart local v15       #e:Ljava/util/Enumeration;
    .restart local v16       #k:I
    .local p0, _tmp:Ljava/lang/Object;
    .local p5, _nodes:Ljava/util/List;
    :cond_173
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move/from16 p1, v0

    if-eqz p1, :cond_108

    .line 1386
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local p0           #_tmp:Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    .local v11, _policy:Ljava/lang/String;
    goto :goto_11f

    .line 1406
    .local p1, _childrenIter:Ljava/util/Iterator;
    .local p2, _found:Z
    :cond_182
    if-nez p2, :cond_108

    .line 1408
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1409
    .local v8, _newChildExpectedPolicies:Ljava/util/Set;
    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1411
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1413
    .local v5, _newChild:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1414
    aget-object p0, p4, v7

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_108

    .line 1370
    .end local v5           #_newChild:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #_newChildExpectedPolicies:Ljava/util/Set;
    .end local v11           #_policy:Ljava/lang/String;
    .end local p1           #_childrenIter:Ljava/util/Iterator;
    .end local p2           #_found:Z
    :cond_1a4
    add-int/lit8 p0, v16, 0x1

    .end local v16           #k:I
    .local p0, k:I
    move/from16 v16, p0

    .end local p0           #k:I
    .restart local v16       #k:I
    goto/16 :goto_ec

    .end local v9           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v13           #_policySetIter:Ljava/util/Iterator;
    :cond_1aa
    move-object/from16 p0, v15

    .line 1423
    .end local v10           #_apq:Ljava/util/Set;
    .end local v15           #e:Ljava/util/Enumeration;
    .end local v16           #k:I
    .end local p5           #_nodes:Ljava/util/List;
    .local p0, e:Ljava/util/Enumeration;
    :goto_1ac
    move-object/from16 p0, p3

    .line 1427
    .local p0, _validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/16 p1, 0x1

    sub-int p1, v7, p1

    .end local p3
    .local p1, j:I
    :goto_1b2
    if-ltz p1, :cond_1e4

    .line 1429
    aget-object p5, p4, p1

    .line 1431
    .local p5, nodes:Ljava/util/List;
    const/16 p2, 0x0

    .local p2, k:I
    :goto_1b8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result p3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_1de

    .line 1433
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1434
    .local p3, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {p3 .. p3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_1e1

    .line 1436
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p0

    .line 1438
    if-nez p0, :cond_1e1

    .line 1427
    .end local p3           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1de
    add-int/lit8 p1, p1, -0x1

    goto :goto_1b2

    .line 1431
    .restart local p3       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1e1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1b8

    .line 1449
    .end local p2           #k:I
    .end local p3           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local p5           #nodes:Ljava/util/List;
    :cond_1e4
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    .line 1451
    .local p1, criticalExtensionOids:Ljava/util/Set;
    if-eqz p1, :cond_214

    .line 1453
    sget-object p2, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface/range {p1 .. p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 1455
    .local p1, critical:Z
    aget-object p4, p4, v7

    .line 1456
    .local p4, nodes:Ljava/util/List;
    const/16 p2, 0x0

    .local p2, j:I
    :goto_1f4
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result p3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_214

    .line 1458
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1459
    .restart local p3       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1456
    add-int/lit8 p2, p2, 0x1

    goto :goto_1f4

    .line 1464
    .local v5, certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v9, n:I
    .local p0, certPath:Ljava/security/cert/CertPath;
    .local p1, index:I
    .local p2, acceptablePolicies:Ljava/util/Set;
    .local p3, validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local p4, policyNodes:[Ljava/util/List;
    .local p5, inhibitAnyPolicy:I
    :cond_212
    const/16 p0, 0x0

    .end local v5           #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #n:I
    .end local p0           #certPath:Ljava/security/cert/CertPath;
    .end local p1           #index:I
    .end local p2           #acceptablePolicies:Ljava/util/Set;
    .end local p3           #validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local p4           #policyNodes:[Ljava/util/List;
    .end local p5           #inhibitAnyPolicy:I
    :cond_214
    return-object p0

    .local v9, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v10       #_apq:Ljava/util/Set;
    .restart local v11       #_policy:Ljava/lang/String;
    .restart local v13       #_policySetIter:Ljava/util/Iterator;
    .restart local v15       #e:Ljava/util/Enumeration;
    .restart local v16       #k:I
    .local p1, _childrenIter:Ljava/util/Iterator;
    .local p2, _found:Z
    .restart local p3       #validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p4       #policyNodes:[Ljava/util/List;
    .local p5, _nodes:Ljava/util/List;
    :cond_215
    move/from16 p0, p2

    .end local p2           #_found:Z
    .local p0, _found:Z
    goto/16 :goto_142

    .end local v10           #_apq:Ljava/util/Set;
    .end local v13           #_policySetIter:Ljava/util/Iterator;
    .end local v16           #k:I
    .end local p0           #_found:Z
    .end local p1           #_childrenIter:Ljava/util/Iterator;
    .restart local v5       #certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v9, n:I
    .local v11, pols:Ljava/util/Set;
    .local p5, inhibitAnyPolicy:I
    :cond_219
    move-object/from16 p0, v15

    .end local v15           #e:Ljava/util/Enumeration;
    .local p0, e:Ljava/util/Enumeration;
    goto :goto_1ac

    .end local p0           #e:Ljava/util/Enumeration;
    .restart local v6       #e:Ljava/util/Enumeration;
    .local p2, acceptablePolicies:Ljava/util/Set;
    :cond_21c
    move-object/from16 p0, v6

    .end local v6           #e:Ljava/util/Enumeration;
    .restart local p0       #e:Ljava/util/Enumeration;
    goto :goto_1ac
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 9
    .parameter "certPath"
    .parameter "index"
    .parameter "validPolicyTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1145
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1149
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 1152
    .local v1, certPolicies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v4, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_14} :catch_19

    move-result-object v1

    .line 1160
    if-nez v1, :cond_18

    .line 1162
    const/4 p2, 0x0

    .line 1164
    :cond_18
    return-object p2

    .line 1155
    :catch_19
    move-exception v4

    move-object v3, v4

    .line 1157
    .local v3, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .registers 7
    .parameter "certPath"
    .parameter "index"
    .parameter "validPolicyTree"
    .parameter "explicitPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1131
    if-gtz p3, :cond_d

    if-nez p2, :cond_d

    .line 1133
    new-instance v0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1136
    :cond_d
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .registers 3
    .parameter "explicitPolicy"
    .parameter "cert"

    .prologue
    .line 2319
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 2321
    add-int/lit8 p0, p0, -0x1

    .line 2323
    :cond_a
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .registers 12
    .parameter "certPath"
    .parameter "index"
    .parameter "explicitPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2332
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2333
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2338
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2341
    .local v4, pc:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_b
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_14} :catch_3f

    move-result-object v4

    .line 2348
    if-eqz v4, :cond_53

    .line 2350
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 2352
    .local v5, policyConstraints:Ljava/util/Enumeration;
    :cond_1b
    :goto_1b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 2354
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 2355
    .local v2, constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    packed-switch v7, :pswitch_data_56

    goto :goto_1b

    .line 2360
    :pswitch_2f
    :try_start_2f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_49

    move-result v6

    .line 2368
    .local v6, tmpInt:I
    if-nez v6, :cond_1b

    .line 2370
    const/4 v7, 0x0

    .line 2376
    .end local v2           #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    .end local v6           #tmpInt:I
    :goto_3e
    return v7

    .line 2344
    :catch_3f
    move-exception v7

    move-object v3, v7

    .line 2346
    .local v3, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints could no be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2362
    .end local v3           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2       #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .restart local v5       #policyConstraints:Ljava/util/Enumeration;
    :catch_49
    move-exception v7

    move-object v3, v7

    .line 2364
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints requireExplicitPolicy field could no be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v2           #constraint:Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #policyConstraints:Ljava/util/Enumeration;
    :cond_53
    move v7, p2

    .line 2376
    goto :goto_3e

    .line 2355
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2f
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .registers 11
    .parameter "certPath"
    .parameter "index"
    .parameter "pathCheckers"
    .parameter "criticalExtensions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2386
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2387
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2389
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2390
    .local v3, tmpIter:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2394
    :try_start_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    .line 2396
    :catch_1e
    move-exception v4

    move-object v2, v4

    .line 2398
    .local v2, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v2, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2403
    .end local v2           #e:Ljava/security/cert/CertPathValidatorException;
    :cond_28
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_37

    .line 2405
    new-instance v4, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate has unsupported critical extension"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2408
    :cond_37
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 12
    .parameter "certPath"
    .parameter "paramsPKIX"
    .parameter "userInitialPolicySet"
    .parameter "index"
    .parameter "policyNodes"
    .parameter "validPolicyTree"
    .parameter "acceptablePolicies"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2420
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2429
    .local v2, n:I
    if-nez p5, :cond_1b

    .line 2431
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_19

    .line 2433
    new-instance p1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string p2, "Explicit policy requested but none available."

    .end local p2
    const/4 p4, 0x0

    invoke-direct {p1, p2, p4, p0, p3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local p4
    throw p1

    .line 2436
    .restart local p2
    .restart local p4
    :cond_19
    const/4 p0, 0x0

    .line 2584
    .end local p2
    .end local p3
    .end local p6
    .local p0, intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_1a
    return-object p0

    .line 2438
    .local p0, certPath:Ljava/security/cert/CertPath;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p6
    :cond_1b
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2441
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_b7

    .line 2443
    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 2445
    new-instance p1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string p2, "Explicit policy requested but none available."

    .end local p2
    const/4 p4, 0x0

    invoke-direct {p1, p2, p4, p0, p3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local p4
    throw p1

    .line 2450
    .restart local p2
    .restart local p4
    :cond_36
    new-instance p2, Ljava/util/HashSet;

    .end local p2
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 2452
    .local p2, _validPolicyNodeSet:Ljava/util/Set;
    const/4 p0, 0x0

    .local p0, j:I
    move p3, p0

    .end local p0           #j:I
    .local p3, j:I
    :goto_3d
    array-length p0, p4

    if-ge p3, p0, :cond_76

    .line 2454
    aget-object p1, p4, p3

    .line 2456
    .local p1, _nodeDepth:Ljava/util/List;
    const/4 p0, 0x0

    .local p0, k:I
    move v0, p0

    .end local p0           #k:I
    .local v0, k:I
    :goto_44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_72

    .line 2458
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2460
    .local p0, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v1, "2.5.29.32.0"

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 2462
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object p0

    .line 2463
    .local p0, _iter:Ljava/util/Iterator;
    :goto_60
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 2465
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 2456
    .end local p0           #_iter:Ljava/util/Iterator;
    :cond_6e
    add-int/lit8 p0, v0, 0x1

    .end local v0           #k:I
    .local p0, k:I
    move v0, p0

    .end local p0           #k:I
    .restart local v0       #k:I
    goto :goto_44

    .line 2452
    :cond_72
    add-int/lit8 p0, p3, 0x1

    .end local p3           #j:I
    .local p0, j:I
    move p3, p0

    .end local p0           #j:I
    .restart local p3       #j:I
    goto :goto_3d

    .line 2471
    .end local v0           #k:I
    .end local p1           #_nodeDepth:Ljava/util/List;
    :cond_76
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2472
    .local p1, _vpnsIter:Ljava/util/Iterator;
    :cond_7a
    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_91

    .line 2474
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2475
    .local p0, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object p0

    .line 2477
    .local p0, _validPolicy:Ljava/lang/String;
    invoke-interface {p6, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #_validPolicy:Ljava/lang/String;
    if-nez p0, :cond_7a

    goto :goto_7a

    .line 2484
    :cond_91
    if-eqz p5, :cond_b7

    .line 2486
    const/4 p0, 0x1

    sub-int p0, v2, p0

    .end local p1           #_vpnsIter:Ljava/util/Iterator;
    .end local p2           #_validPolicyNodeSet:Ljava/util/Set;
    .end local p3           #j:I
    .end local p6
    .local p0, j:I
    :goto_96
    if-ltz p0, :cond_b7

    .line 2488
    aget-object p3, p4, p0

    .line 2490
    .local p3, nodes:Ljava/util/List;
    const/4 p1, 0x0

    .local p1, k:I
    :goto_9b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_b4

    .line 2492
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2493
    .local p2, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result p6

    if-nez p6, :cond_b1

    .line 2495
    invoke-static {p5, p4, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2490
    :cond_b1
    add-int/lit8 p1, p1, 0x1

    goto :goto_9b

    .line 2486
    .end local p2           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b4
    add-int/lit8 p0, p0, -0x1

    goto :goto_96

    .line 2504
    .end local p0           #j:I
    .end local p1           #k:I
    .end local p3           #nodes:Ljava/util/List;
    :cond_b7
    move-object p0, p5

    .local p0, intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_1a

    .line 2521
    .local p0, certPath:Ljava/security/cert/CertPath;
    .local p1, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .local p2, userInitialPolicySet:Ljava/util/Set;
    .local p3, index:I
    .restart local p6
    :cond_ba
    new-instance p6, Ljava/util/HashSet;

    .end local p6
    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    .line 2523
    .local p6, _validPolicyNodeSet:Ljava/util/Set;
    const/4 p0, 0x0

    .local p0, j:I
    move v0, p0

    .end local p0           #j:I
    .end local p1           #paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local p3           #index:I
    .local v0, j:I
    :goto_c1
    array-length p0, p4

    if-ge v0, p0, :cond_108

    .line 2525
    aget-object p3, p4, v0

    .line 2527
    .local p3, _nodeDepth:Ljava/util/List;
    const/4 p0, 0x0

    .local p0, k:I
    move v1, p0

    .end local p0           #k:I
    .local v1, k:I
    :goto_c8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_104

    .line 2529
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2531
    .local p0, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string p1, "2.5.29.32.0"

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 2533
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object p1

    .line 2534
    .end local p0           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local p1, _iter:Ljava/util/Iterator;
    :cond_e4
    :goto_e4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_100

    .line 2536
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2537
    .local p0, _c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e4

    .line 2539
    invoke-interface {p6, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    .line 2527
    .end local p0           #_c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local p1           #_iter:Ljava/util/Iterator;
    :cond_100
    add-int/lit8 p0, v1, 0x1

    .end local v1           #k:I
    .local p0, k:I
    move v1, p0

    .end local p0           #k:I
    .restart local v1       #k:I
    goto :goto_c8

    .line 2523
    :cond_104
    add-int/lit8 p0, v0, 0x1

    .end local v0           #j:I
    .local p0, j:I
    move v0, p0

    .end local p0           #j:I
    .restart local v0       #j:I
    goto :goto_c1

    .line 2549
    .end local v1           #k:I
    .end local p3           #_nodeDepth:Ljava/util/List;
    :cond_108
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 2550
    .local p3, _vpnsIter:Ljava/util/Iterator;
    :cond_10c
    :goto_10c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_127

    .line 2552
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2553
    .local p0, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object p1

    .line 2555
    .local p1, _validPolicy:Ljava/lang/String;
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .end local p1           #_validPolicy:Ljava/lang/String;
    if-nez p1, :cond_10c

    .line 2557
    invoke-static {p5, p4, p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_10c

    .line 2564
    .end local p0           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_127
    if-eqz p5, :cond_14d

    .line 2566
    const/4 p0, 0x1

    sub-int p0, v2, p0

    .end local v0           #j:I
    .end local p2           #userInitialPolicySet:Ljava/util/Set;
    .end local p3           #_vpnsIter:Ljava/util/Iterator;
    .end local p6           #_validPolicyNodeSet:Ljava/util/Set;
    .local p0, j:I
    :goto_12c
    if-ltz p0, :cond_14d

    .line 2568
    aget-object p3, p4, p0

    .line 2570
    .local p3, nodes:Ljava/util/List;
    const/4 p1, 0x0

    .local p1, k:I
    :goto_131
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_14a

    .line 2572
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2573
    .local p2, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result p6

    if-nez p6, :cond_147

    .line 2575
    invoke-static {p5, p4, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2570
    :cond_147
    add-int/lit8 p1, p1, 0x1

    goto :goto_131

    .line 2566
    .end local p2           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_14a
    add-int/lit8 p0, p0, -0x1

    goto :goto_12c

    .line 2582
    .end local p0           #j:I
    .end local p1           #k:I
    .end local p3           #nodes:Ljava/util/List;
    :cond_14d
    move-object p0, p5

    .local p0, intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_1a
.end method
