.class public Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


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
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 109
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

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .registers 3
    .parameter "location"
    .parameter "pkixParams"

    .prologue
    .line 746
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isAdditionalLocationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 791
    :cond_6
    return-void
.end method

.method protected static addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .registers 7
    .parameter "cert"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 270
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 271
    .local v0, it:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 276
    .local v1, list:Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 280
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    .local v2, temp:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    goto :goto_e

    .line 285
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;
    .end local v2           #temp:Ljava/lang/String;
    :cond_35
    return-void
.end method

.method protected static addAdditionalStoresFromCRLDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .registers 11
    .parameter "crldp"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 886
    if-eqz p0, :cond_52

    .line 888
    const/4 v1, 0x0

    .line 891
    .local v1, dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_46

    move-result-object v1

    .line 898
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    array-length v7, v1

    if-ge v4, v7, :cond_52

    .line 900
    aget-object v7, v1, v4

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 902
    .local v0, dpn:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v0, :cond_4f

    .line 904
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_4f

    .line 906
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 909
    .local v3, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_26
    array-length v7, v3

    if-ge v5, v7, :cond_4f

    .line 911
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_43

    .line 913
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v6

    .line 915
    .local v6, location:Ljava/lang/String;
    invoke-static {v6, p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 909
    .end local v6           #location:Ljava/lang/String;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 893
    .end local v0           #dpn:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v3           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4           #i:I
    .end local v5           #j:I
    :catch_46
    move-exception v2

    .line 895
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution points could not be read."

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 898
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #dpn:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v4       #i:I
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 924
    .end local v0           #dpn:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v1           #dps:[Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v4           #i:I
    :cond_52
    return-void
.end method

.method protected static final findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .registers 11
    .parameter "crlSelect"
    .parameter "crlStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 412
    .local v1, crls:Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 414
    .local v4, iter:Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 415
    .local v5, lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v3, 0x0

    .line 417
    .local v3, foundValidStore:Z
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 419
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 421
    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Lcom/android/org/bouncycastle/x509/X509Store;

    if-eqz v8, :cond_30

    .line 423
    move-object v0, v6

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509Store;

    move-object v7, v0

    .line 427
    .local v7, store:Lcom/android/org/bouncycastle/x509/X509Store;
    :try_start_1d
    invoke-virtual {v7, p0}, Lcom/android/org/bouncycastle/x509/X509Store;->getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_24
    .catch Lcom/android/org/bouncycastle/util/StoreException; {:try_start_1d .. :try_end_24} :catch_26

    .line 428
    const/4 v3, 0x1

    goto :goto_b

    .line 430
    :catch_26
    move-exception v8

    move-object v2, v8

    .line 432
    .local v2, e:Lcom/android/org/bouncycastle/util/StoreException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local v5           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const-string v8, "Exception searching in X.509 CRL store."

    invoke-direct {v5, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v5       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_b

    .line 438
    .end local v2           #e:Lcom/android/org/bouncycastle/util/StoreException;
    .end local v7           #store:Lcom/android/org/bouncycastle/x509/X509Store;
    :cond_30
    move-object v0, v6

    check-cast v0, Ljava/security/cert/CertStore;

    move-object v7, v0

    .line 442
    .local v7, store:Ljava/security/cert/CertStore;
    :try_start_34
    invoke-virtual {v7, p0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3b
    .catch Ljava/security/cert/CertStoreException; {:try_start_34 .. :try_end_3b} :catch_3d

    .line 443
    const/4 v3, 0x1

    goto :goto_b

    .line 445
    :catch_3d
    move-exception v8

    move-object v2, v8

    .line 447
    .local v2, e:Ljava/security/cert/CertStoreException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local v5           #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    const-string v8, "Exception searching in X.509 CRL store."

    invoke-direct {v5, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v5       #lastException:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_b

    .line 452
    .end local v2           #e:Ljava/security/cert/CertStoreException;
    .end local v6           #obj:Ljava/lang/Object;
    .end local v7           #store:Ljava/security/cert/CertStore;
    :cond_47
    if-nez v3, :cond_4c

    if-eqz v5, :cond_4c

    .line 454
    throw v5

    .line 456
    :cond_4c
    return-object v1
.end method

.method protected static findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .registers 10
    .parameter "certSelect"
    .parameter "certStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 809
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 810
    .local v2, certs:Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 812
    .local v4, iter:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 814
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 816
    .local v5, obj:Ljava/lang/Object;
    instance-of v6, v5, Lcom/android/org/bouncycastle/x509/X509Store;

    if-eqz v6, :cond_2d

    .line 818
    move-object v0, v5

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509Store;

    move-object v1, v0

    .line 821
    .local v1, certStore:Lcom/android/org/bouncycastle/x509/X509Store;
    :try_start_1b
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/X509Store;->getMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_22
    .catch Lcom/android/org/bouncycastle/util/StoreException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_9

    .line 823
    :catch_23
    move-exception v6

    move-object v3, v6

    .line 825
    .local v3, e:Lcom/android/org/bouncycastle/util/StoreException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Problem while picking certificates from X.509 store."

    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 833
    .end local v1           #certStore:Lcom/android/org/bouncycastle/x509/X509Store;
    .end local v3           #e:Lcom/android/org/bouncycastle/util/StoreException;
    :cond_2d
    move-object v0, v5

    check-cast v0, Ljava/security/cert/CertStore;

    move-object v1, v0

    .line 837
    .local v1, certStore:Ljava/security/cert/CertStore;
    :try_start_31
    invoke-virtual {v1, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catch Ljava/security/cert/CertStoreException; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_9

    .line 839
    :catch_39
    move-exception v6

    move-object v3, v6

    .line 841
    .local v3, e:Ljava/security/cert/CertStoreException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Problem while picking certificates from certificate store."

    invoke-direct {v6, v7, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 847
    .end local v1           #certStore:Ljava/security/cert/CertStore;
    .end local v3           #e:Ljava/security/cert/CertStoreException;
    .end local v5           #obj:Ljava/lang/Object;
    :cond_43
    return-object v2
.end method

.method protected static findIssuerCerts(Ljava/security/cert/X509Certificate;Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;
    .registers 11
    .parameter "cert"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1477
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 1478
    .local v0, certSelect:Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1481
    .local v1, certs:Ljava/util/Set;
    :try_start_a
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_50

    .line 1493
    :try_start_15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    .local v6, matches:Ljava/util/List;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1496
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1497
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1499
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_3e
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_15 .. :try_end_3e} :catch_5a

    move-result-object v5

    .line 1506
    .local v5, iter:Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 1507
    .local v4, issuer:Ljava/security/cert/X509Certificate;
    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 1509
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #issuer:Ljava/security/cert/X509Certificate;
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1512
    .restart local v4       #issuer:Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 1483
    .end local v4           #issuer:Ljava/security/cert/X509Certificate;
    .end local v5           #iter:Ljava/util/Iterator;
    .end local v6           #matches:Ljava/util/List;
    :catch_50
    move-exception v7

    move-object v3, v7

    .line 1485
    .local v3, ex:Ljava/io/IOException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v7, v8, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1501
    .end local v3           #ex:Ljava/io/IOException;
    :catch_5a
    move-exception v7

    move-object v2, v7

    .line 1503
    .local v2, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Issuer certificate cannot be searched."

    invoke-direct {v7, v8, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1514
    .end local v2           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4       #issuer:Ljava/security/cert/X509Certificate;
    .restart local v5       #iter:Ljava/util/Iterator;
    .restart local v6       #matches:Ljava/util/List;
    :cond_64
    return-object v1
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXParameters;)Ljava/security/cert/TrustAnchor;
    .registers 15
    .parameter "cert"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 170
    instance-of v11, p1, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    if-eqz v11, :cond_19

    .line 172
    :try_start_4
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    move-object v6, v0

    .line 173
    .local v6, indexed:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    invoke-virtual {v6, p0}, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;->findTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v11

    .line 258
    .end local v6           #indexed:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    :goto_c
    return-object v11

    .line 174
    :catch_d
    move-exception v11

    move-object v4, v11

    .line 175
    .local v4, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v4}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 179
    .end local v4           #e:Ljava/security/cert/CertPathValidatorException;
    :cond_19
    const/4 v9, 0x0

    .line 180
    .local v9, trust:Ljava/security/cert/TrustAnchor;
    const/4 v10, 0x0

    .line 181
    .local v10, trustPublicKey:Ljava/security/PublicKey;
    const/4 v7, 0x0

    .line 183
    .local v7, invalidKeyEx:Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 184
    .local v3, certSelectX509:Ljava/security/cert/X509CertSelector;
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 188
    .local v2, certIssuer:Ljavax/security/auth/x500/X500Principal;
    :try_start_25
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_69

    .line 196
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 198
    .local v8, iter:Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9d

    if-nez v9, :cond_9d

    .line 200
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #trust:Ljava/security/cert/TrustAnchor;
    check-cast v9, Ljava/security/cert/TrustAnchor;

    .line 201
    .restart local v9       #trust:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v11

    if-eqz v11, :cond_75

    .line 203
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v11

    if-eqz v11, :cond_73

    .line 205
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 237
    :goto_5a
    if-eqz v10, :cond_34

    .line 242
    :try_start_5c
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_64

    goto :goto_34

    .line 245
    :catch_64
    move-exception v11

    move-object v5, v11

    .line 247
    .local v5, ex:Ljava/lang/Exception;
    move-object v7, v5

    .line 248
    const/4 v9, 0x0

    .line 249
    goto :goto_34

    .line 190
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v8           #iter:Ljava/util/Iterator;
    :catch_69
    move-exception v11

    move-object v5, v11

    .line 192
    .local v5, ex:Ljava/io/IOException;
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Cannot set subject search criteria for trust anchor."

    invoke-direct {v11, v12, v5}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 209
    .end local v5           #ex:Ljava/io/IOException;
    .restart local v8       #iter:Ljava/util/Iterator;
    :cond_73
    const/4 v9, 0x0

    goto :goto_5a

    .line 212
    :cond_75
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9b

    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    if-eqz v11, :cond_9b

    .line 217
    :try_start_81
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, caName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v2, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 220
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_93} :catch_97

    move-result-object v10

    goto :goto_5a

    .line 224
    :cond_95
    const/4 v9, 0x0

    goto :goto_5a

    .line 227
    .end local v1           #caName:Ljavax/security/auth/x500/X500Principal;
    :catch_97
    move-exception v11

    move-object v5, v11

    .line 229
    .local v5, ex:Ljava/lang/IllegalArgumentException;
    const/4 v9, 0x0

    .line 230
    goto :goto_5a

    .line 234
    .end local v5           #ex:Ljava/lang/IllegalArgumentException;
    :cond_9b
    const/4 v9, 0x0

    goto :goto_5a

    .line 253
    :cond_9d
    if-nez v9, :cond_a9

    if-eqz v7, :cond_a9

    .line 255
    new-instance v11, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "TrustAnchor found but certificate validation failed."

    invoke-direct {v11, v12, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_a9
    move-object v11, v9

    .line 258
    goto/16 :goto_c
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 381
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 383
    .local v0, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 385
    .local v2, info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v3

    return-object v3

    .line 387
    .end local v0           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #info:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_16
    move-exception v3

    move-object v1, v3

    .line 389
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Subject public key cannot be decoded."

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    .registers 12
    .parameter "dp"
    .parameter "issuerPrincipals"
    .parameter "selector"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 952
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v3, issuers:Ljava/util/List;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 956
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 958
    .local v2, genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_14
    array-length v6, v2

    if-ge v5, v6, :cond_65

    .line 960
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_36

    .line 964
    :try_start_20
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_36} :catch_39

    .line 958
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 967
    :catch_39
    move-exception v6

    move-object v0, v6

    .line 969
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v6, v7, v0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 982
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #genNames:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5           #j:I
    :cond_43
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v6

    if-nez v6, :cond_51

    .line 984
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 988
    :cond_51
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0
    .local v4, it:Ljava/util/Iterator;
    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 990
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 1037
    .end local v4           #it:Ljava/util/Iterator;
    :cond_65
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1038
    .restart local v4       #it:Ljava/util/Iterator;
    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 1042
    :try_start_6f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7c} :catch_7d

    goto :goto_69

    .line 1044
    :catch_7d
    move-exception v6

    move-object v1, v6

    .line 1046
    .local v1, ex:Ljava/io/IOException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Cannot decode CRL issuer information."

    invoke-direct {v6, v7, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1050
    .end local v1           #ex:Ljava/io/IOException;
    :cond_87
    return-void
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/org/bouncycastle/jce/provider/CertStatus;)V
    .registers 13
    .parameter "validDate"
    .parameter "crl"
    .parameter "cert"
    .parameter "certStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1073
    const/4 v0, 0x0

    .line 1076
    .local v0, bcCRL:Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
    :try_start_1
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;

    .end local v0           #bcCRL:Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v6, v5}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_a5

    .line 1084
    .restart local v0       #bcCRL:Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;

    .line 1085
    .local v1, crl_entry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    if-eqz v1, :cond_a4

    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1089
    :cond_3d
    const/4 v4, 0x0

    .line 1090
    .local v4, reasonCode:Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1094
    :try_start_44
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_af

    move-result-object v4

    .line 1109
    :cond_52
    :goto_52
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_90

    if-eqz v4, :cond_90

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-eqz v5, :cond_90

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_90

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_90

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_a4

    .line 1118
    :cond_90
    if-eqz v4, :cond_b9

    .line 1120
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {p3, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1127
    :goto_9d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    .line 1130
    .end local v4           #reasonCode:Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    :cond_a4
    return-void

    .line 1078
    .end local v0           #bcCRL:Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
    .end local v1           #crl_entry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    :catch_a5
    move-exception v5

    move-object v3, v5

    .line 1080
    .local v3, exception:Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Bouncy Castle X509CRLObject could not be created."

    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1099
    .end local v3           #exception:Ljava/lang/Exception;
    .restart local v0       #bcCRL:Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;
    .restart local v1       #crl_entry:Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
    .restart local v4       #reasonCode:Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    :catch_af
    move-exception v5

    move-object v2, v5

    .line 1101
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v5, v6, v2}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_52

    .line 1125
    .end local v2           #e:Ljava/lang/Exception;
    :cond_b9
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lcom/android/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_9d
.end method

.method protected static getCompleteCRLs(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;
    .registers 15
    .parameter "dp"
    .parameter "cert"
    .parameter "currentDate"
    .parameter "paramsPKIX"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1262
    new-instance v3, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1265
    .local v3, crlselect:Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    :try_start_6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1266
    .local v5, issuers:Ljava/util/Set;
    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_9d

    .line 1268
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1275
    :goto_21
    invoke-static {p0, v5, v3, p3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_24
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_24} :catch_a6

    .line 1282
    .end local v5           #issuers:Ljava/util/Set;
    :goto_24
    instance-of v7, p1, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_b1

    .line 1284
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v7, v0

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1291
    :cond_2f
    :goto_2f
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_be

    .line 1293
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 1300
    :goto_3c
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    .line 1302
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1305
    .local v2, crls:Ljava/util/Set;
    :try_start_45
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1306
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1307
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_66
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_45 .. :try_end_66} :catch_c3

    .line 1313
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 1315
    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_cd

    .line 1317
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    move-object v1, v0

    .line 1319
    .local v1, aCert:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1273
    .end local v1           #aCert:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    .end local v2           #crls:Ljava/util/Set;
    .restart local v5       #issuers:Ljava/util/Set;
    :cond_9d
    :try_start_9d
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_9d .. :try_end_a4} :catch_a6

    goto/16 :goto_21

    .line 1277
    .end local v5           #issuers:Ljava/util/Set;
    :catch_a6
    move-exception v7

    move-object v4, v7

    .line 1279
    .local v4, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Could not get issuer information from distribution point."

    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1286
    .end local v4           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_b1
    instance-of v7, p1, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_2f

    .line 1288
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    move-object v7, v0

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setAttrCertificateChecking(Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;)V

    goto/16 :goto_2f

    .line 1297
    :cond_be
    invoke-virtual {v3, p2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    goto/16 :goto_3c

    .line 1309
    .restart local v2       #crls:Ljava/util/Set;
    :catch_c3
    move-exception v7

    move-object v4, v7

    .line 1311
    .restart local v4       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Could not search for CRLs."

    invoke-direct {v7, v8, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1323
    .end local v4           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_cd
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 1325
    .local v6, xCert:Ljava/security/cert/X509Certificate;
    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1328
    .end local v6           #xCert:Ljava/security/cert/X509Certificate;
    :cond_f4
    return-object v2
.end method

.method protected static getDeltaCRLs(Ljava/util/Date;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .registers 14
    .parameter "currentDate"
    .parameter "paramsPKIX"
    .parameter "completeCRL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1147
    new-instance v2, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1149
    .local v2, deltaSelect:Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_8a

    .line 1151
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 1161
    :goto_12
    :try_start_12
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_8e

    .line 1169
    :goto_1d
    const/4 v0, 0x0

    .line 1172
    .local v0, completeCRLNumber:Ljava/math/BigInteger;
    :try_start_1e
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {p2, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 1174
    .local v3, derObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    if-eqz v3, :cond_2e

    .line 1176
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/CRLNumber;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_98

    move-result-object v0

    .line 1186
    :cond_2e
    const/4 v5, 0x0

    .line 1189
    .local v5, idp:[B
    :try_start_2f
    sget-object v9, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_a2

    move-result-object v5

    .line 1200
    if-nez v0, :cond_ac

    const/4 v9, 0x0

    :goto_38
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1203
    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPoint([B)V

    .line 1204
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPointEnabled(Z)V

    .line 1207
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 1209
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1213
    .local v8, temp:Ljava/util/Set;
    :try_start_4a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1214
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1215
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_6b
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4a .. :try_end_6b} :catch_b7

    .line 1222
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1224
    .local v7, result:Ljava/util/Set;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, it:Ljava/util/Iterator;
    :cond_74
    :goto_74
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c1

    .line 1226
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 1228
    .local v1, crl:Ljava/security/cert/X509CRL;
    invoke-static {v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 1230
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 1155
    .end local v0           #completeCRLNumber:Ljava/math/BigInteger;
    .end local v1           #crl:Ljava/security/cert/X509CRL;
    .end local v3           #derObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    .end local v5           #idp:[B
    .end local v6           #it:Ljava/util/Iterator;
    .end local v7           #result:Ljava/util/Set;
    .end local v8           #temp:Ljava/util/Set;
    :cond_8a
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    goto :goto_12

    .line 1164
    :catch_8e
    move-exception v9

    move-object v4, v9

    .line 1166
    .local v4, e:Ljava/io/IOException;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot extract issuer from CRL."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 1179
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #completeCRLNumber:Ljava/math/BigInteger;
    :catch_98
    move-exception v9

    move-object v4, v9

    .line 1181
    .local v4, e:Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "CRL number extension could not be extracted from CRL."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1191
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #derObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    .restart local v5       #idp:[B
    :catch_a2
    move-exception v9

    move-object v4, v9

    .line 1193
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Issuing distribution point extension value could not be read."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1200
    .end local v4           #e:Ljava/lang/Exception;
    :cond_ac
    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_38

    .line 1217
    .restart local v8       #temp:Ljava/util/Set;
    :catch_b7
    move-exception v9

    move-object v4, v9

    .line 1219
    .local v4, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v9, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Could not search for delta CRLs."

    invoke-direct {v9, v10, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1234
    .end local v4           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v6       #it:Ljava/util/Iterator;
    .restart local v7       #result:Ljava/util/Set;
    :cond_c1
    return-object v7
.end method

.method protected static getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;
    .registers 3
    .parameter "cert"

    .prologue
    .line 294
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    .line 296
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 300
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    check-cast p0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .end local p0
    invoke-interface {p0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p0, v0, v1

    check-cast p0, Ljavax/security/auth/x500/X500Principal;

    move-object v0, p0

    goto :goto_a
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 4
    .parameter "ext"
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 343
    .local v0, bytes:[B
    if-nez v0, :cond_8

    .line 345
    const/4 v1, 0x0

    .line 348
    :goto_7
    return-object v1

    :cond_8
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    goto :goto_7
.end method

.method protected static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .registers 2
    .parameter "crl"

    .prologue
    .line 372
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    .registers 17
    .parameter "certs"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1419
    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 1420
    .local v1, cert:Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 1421
    .local v10, pubKey:Ljava/security/PublicKey;
    instance-of v11, v10, Ljava/security/interfaces/DSAPublicKey;

    if-nez v11, :cond_10

    move-object v11, v10

    .line 1450
    :goto_f
    return-object v11

    .line 1425
    :cond_10
    move-object v0, v10

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v3, v0

    .line 1426
    .local v3, dsaPubKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v11

    if-eqz v11, :cond_1c

    move-object v11, v3

    .line 1428
    goto :goto_f

    .line 1430
    :cond_1c
    add-int/lit8 v6, p1, 0x1

    .local v6, i:I
    :goto_1e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_79

    .line 1432
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 1433
    .local v8, parentCert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 1434
    instance-of v11, v10, Ljava/security/interfaces/DSAPublicKey;

    if-nez v11, :cond_3a

    .line 1436
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    const-string v12, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v11, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1439
    :cond_3a
    move-object v0, v10

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v9, v0

    .line 1440
    .local v9, prevDSAPubKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v11

    if-nez v11, :cond_47

    .line 1430
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1444
    :cond_47
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 1445
    .local v2, dsaParams:Ljava/security/interfaces/DSAParams;
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v13

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v14

    invoke-direct {v4, v11, v12, v13, v14}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1449
    .local v4, dsaPubKeySpec:Ljava/security/spec/DSAPublicKeySpec;
    :try_start_60
    const-string v11, "DSA"

    const-string v12, "BC"

    invoke-static {v11, v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    .line 1450
    .local v7, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v7, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6b} :catch_6d

    move-result-object v11

    goto :goto_f

    .line 1452
    .end local v7           #keyFactory:Ljava/security/KeyFactory;
    :catch_6d
    move-exception v11

    move-object v5, v11

    .line 1454
    .local v5, exception:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1457
    .end local v2           #dsaParams:Ljava/security/interfaces/DSAParams;
    .end local v4           #dsaPubKeySpec:Ljava/security/spec/DSAPublicKeySpec;
    .end local v5           #exception:Ljava/lang/Exception;
    .end local v8           #parentCert:Ljava/security/cert/X509Certificate;
    .end local v9           #prevDSAPubKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_79
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    const-string v12, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v11, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private static getObject(Ljava/lang/String;[B)Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 8
    .parameter "oid"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 358
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 359
    .local v0, aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 361
    .local v2, octs:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    .end local v0           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 362
    .restart local v0       #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v3

    return-object v3

    .line 364
    .end local v0           #aIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #octs:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :catch_19
    move-exception v3

    move-object v1, v3

    .line 366
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception processing extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static final getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 8
    .parameter "qualifiers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 468
    .local v4, pq:Ljava/util/Set;
    if-nez p0, :cond_8

    .line 494
    :cond_7
    return-object v4

    .line 473
    :cond_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 474
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 476
    .local v0, aOut:Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 478
    .local v2, e:Ljava/util/Enumeration;
    :goto_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 482
    :try_start_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 484
    new-instance v5, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2f} :catch_33

    .line 491
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_16

    .line 486
    :catch_33
    move-exception v5

    move-object v3, v5

    .line 488
    .local v3, ex:Ljava/io/IOException;
    new-instance v5, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .registers 2
    .parameter "cert"

    .prologue
    .line 1055
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    .line 1057
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    .line 1061
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    check-cast p0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .end local p0
    invoke-interface {p0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a
.end method

.method protected static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .registers 2
    .parameter "cert"

    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidCertDateFromValidityModel(Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    .registers 9
    .parameter "paramsPKIX"
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1335
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    if-ne v3, v5, :cond_79

    .line 1338
    if-gtz p2, :cond_e

    .line 1340
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    .line 1391
    .end local p0
    :goto_d
    return-object v3

    .line 1345
    .restart local p0
    :cond_e
    sub-int v3, p2, v5

    if-nez v3, :cond_68

    .line 1347
    const/4 v0, 0x0

    .line 1350
    .local v0, dateOfCertgen:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
    :try_start_13
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    sub-int v4, p2, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/X509Certificate;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1351
    .local v2, extBytes:[B
    if-eqz v2, :cond_33

    .line 1353
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_32} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_32} :catch_44

    move-result-object v0

    .line 1366
    :cond_33
    if-eqz v0, :cond_57

    .line 1370
    :try_start_35
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_38
    .catch Ljava/text/ParseException; {:try_start_35 .. :try_end_38} :catch_4e

    move-result-object v3

    goto :goto_d

    .line 1356
    .end local v2           #extBytes:[B
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 1358
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1361
    .end local v1           #e:Ljava/io/IOException;
    :catch_44
    move-exception v3

    move-object v1, v3

    .line 1363
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1372
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #extBytes:[B
    :catch_4e
    move-exception v1

    .line 1374
    .local v1, e:Ljava/text/ParseException;
    new-instance v3, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1379
    .end local v1           #e:Ljava/text/ParseException;
    :cond_57
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    sub-int v4, p2, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_d

    .line 1384
    .end local v0           #dateOfCertgen:Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;
    .end local v2           #extBytes:[B
    .restart local p0
    :cond_68
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    sub-int v4, p2, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_d

    .line 1391
    .restart local p0
    :cond_79
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    goto :goto_d
.end method

.method protected static getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;
    .registers 2
    .parameter "paramsPKIX"

    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 308
    .local v0, validDate:Ljava/util/Date;
    if-nez v0, :cond_b

    .line 310
    new-instance v0, Ljava/util/Date;

    .end local v0           #validDate:Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 313
    .restart local v0       #validDate:Ljava/util/Date;
    :cond_b
    return-object v0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .registers 2
    .parameter "policySet"

    .prologue
    .line 740
    if-eqz p0, :cond_10

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .registers 3
    .parameter "crl"

    .prologue
    .line 1239
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 1241
    .local v0, critical:Ljava/util/Set;
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .parameter "cert"

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .registers 14
    .parameter "i"
    .parameter "policyNodes"
    .parameter "id_p"
    .parameter "m_idp"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, idp_found:Z
    aget-object v1, p1, p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 621
    .local v2, nodes_i:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 623
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 624
    .local v1, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 626
    const/4 v0, 0x1

    .line 627
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, v1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 632
    .end local v1           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_26
    if-nez v0, :cond_d9

    .line 634
    aget-object v0, p1, p0

    .end local v0           #idp_found:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 635
    .end local v2           #nodes_i:Ljava/util/Iterator;
    .local v8, nodes_i:Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 637
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 638
    .restart local v1       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 640
    const/4 v5, 0x0

    .line 641
    .local v5, pq:Ljava/util/Set;
    const/4 v0, 0x0

    .line 644
    .local v0, policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_48
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .end local v0           #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p4, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_bc

    move-result-object v0

    .line 652
    .restart local v0       #policies:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 653
    .local v0, e:Ljava/util/Enumeration;
    :cond_56
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 655
    const/4 v2, 0x0

    .line 659
    .local v2, pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_5d
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_64} :catch_c5

    move-result-object v2

    .line 665
    .restart local v2       #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 669
    :try_start_75
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .end local v0           #e:Ljava/util/Enumeration;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_7c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_75 .. :try_end_7c} :catch_ce

    move-result-object v5

    .line 679
    .end local v2           #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_7d
    const/4 v7, 0x0

    .line 680
    .local v7, ci:Z
    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 682
    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p4

    .end local p4
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 685
    :cond_8e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 686
    .local v4, p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string p4, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d7

    .line 688
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move v2, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 692
    .local v0, c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 693
    aget-object p0, p1, p0

    .end local p0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v8

    .line 699
    .end local v0           #c_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v4           #p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5           #pq:Ljava/util/Set;
    .end local v7           #ci:Z
    .end local v8           #nodes_i:Ljava/util/Iterator;
    .local p0, nodes_i:Ljava/util/Iterator;
    :goto_bb
    return-void

    .line 646
    .restart local v1       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v5       #pq:Ljava/util/Set;
    .restart local v8       #nodes_i:Ljava/util/Iterator;
    .local p0, i:I
    .restart local p4
    :catch_bc
    move-exception p0

    .line 648
    .local p0, e:Ljava/lang/Exception;
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1
    const-string p2, "Certificate policies cannot be decoded."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 661
    .local v0, e:Ljava/util/Enumeration;
    .local p0, i:I
    .restart local p1
    .restart local p2
    :catch_c5
    move-exception p0

    .line 663
    .local p0, ex:Ljava/lang/Exception;
    new-instance p1, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    .end local p1
    const-string p2, "Policy information cannot be decoded."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 671
    .end local v0           #e:Ljava/util/Enumeration;
    .restart local v2       #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .local p0, i:I
    .restart local p1
    .restart local p2
    :catch_ce
    move-exception p0

    .line 673
    .local p0, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance p1, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .end local p1
    const-string p2, "Policy qualifier info set could not be built."

    .end local p2
    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .end local v1           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v2           #pinfo:Lcom/android/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v5           #pq:Ljava/util/Set;
    .end local p4
    .local p0, i:I
    .restart local p1
    .restart local p2
    :cond_d7
    move-object p0, v8

    .end local v8           #nodes_i:Ljava/util/Iterator;
    .local p0, nodes_i:Ljava/util/Iterator;
    goto :goto_bb

    .local v0, idp_found:Z
    .local v2, nodes_i:Ljava/util/Iterator;
    .local p0, i:I
    .restart local p4
    :cond_d9
    move-object p0, v2

    .end local v2           #nodes_i:Ljava/util/Iterator;
    .local p0, nodes_i:Ljava/util/Iterator;
    goto :goto_bb
.end method

.method protected static prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 12
    .parameter "i"
    .parameter "policyNodes"
    .parameter "id_p"
    .parameter "validPolicyTree"

    .prologue
    .line 707
    aget-object v7, p1, p0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 708
    .local v5, nodes_i:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 710
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 711
    .local v2, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 713
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 714
    .local v6, p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 715
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 716
    const/4 v7, 0x1

    sub-int v0, p0, v7

    .local v0, k:I
    :goto_2b
    if-ltz v0, :cond_6

    .line 718
    aget-object v4, p1, v0

    .line 719
    .local v4, nodes:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, l:I
    :goto_30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_48

    .line 721
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 722
    .local v3, node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 724
    invoke-static {p3, p1, v3}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    .line 725
    if-nez p3, :cond_4b

    .line 716
    .end local v3           #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 719
    .restart local v3       #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 734
    .end local v0           #k:I
    .end local v1           #l:I
    .end local v2           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3           #node2:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v4           #nodes:Ljava/util/List;
    .end local v6           #p_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4e
    return-object p3
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z
    .registers 16
    .parameter "index"
    .parameter "policyNodes"
    .parameter "pOid"
    .parameter "pq"

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 551
    sub-int v1, p0, v11

    aget-object v10, p1, v1

    .line 553
    .local v10, policyNodeVec:Ljava/util/List;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4a

    .line 555
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 556
    .local v4, node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    .line 558
    .local v8, expectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 560
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 561
    .local v3, childExpectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 570
    .local v0, child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 571
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v11

    .line 577
    .end local v0           #child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3           #childExpectedPolicies:Ljava/util/Set;
    .end local v4           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #expectedPolicies:Ljava/util/Set;
    :goto_46
    return v1

    .line 553
    .restart local v4       #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8       #expectedPolicies:Ljava/util/Set;
    :cond_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v4           #node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #expectedPolicies:Ljava/util/Set;
    :cond_4a
    move v1, v7

    .line 577
    goto :goto_46
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V
    .registers 14
    .parameter "index"
    .parameter "policyNodes"
    .parameter "_poid"
    .parameter "_pq"

    .prologue
    .line 586
    const/4 v1, 0x1

    sub-int v1, p0, v1

    aget-object v9, p1, v1

    .line 588
    .local v9, policyNodeVec:Ljava/util/List;
    const/4 v8, 0x0

    .local v8, j:I
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_43

    .line 590
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 592
    .local v4, _node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v1, "2.5.29.32.0"

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 594
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 595
    .local v3, _childExpectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 604
    .local v0, _child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 605
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    .end local v0           #_child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3           #_childExpectedPolicies:Ljava/util/Set;
    .end local v4           #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_43
    return-void

    .line 588
    .restart local v4       #_node:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_6
.end method

.method protected static removePolicyNode(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 7
    .parameter "validPolicyTree"
    .parameter "policyNodes"
    .parameter "_node"

    .prologue
    const/4 v3, 0x0

    .line 502
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 504
    .local v0, _parent:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-nez p0, :cond_b

    move-object v2, v3

    .line 523
    :goto_a
    return-object v2

    .line 509
    :cond_b
    if-nez v0, :cond_1d

    .line 511
    const/4 v1, 0x0

    .local v1, j:I
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, p1, v1

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    move-object v2, v3

    .line 516
    goto :goto_a

    .line 520
    .end local v1           #j:I
    :cond_1d
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 521
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    move-object v2, p0

    .line 523
    goto :goto_a
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 5
    .parameter "policyNodes"
    .parameter "_node"

    .prologue
    .line 531
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v2

    aget-object v2, p0, v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 535
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 536
    .local v1, _iter:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 538
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 539
    .local v0, _child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_13

    .line 542
    .end local v0           #_child:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v1           #_iter:Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method protected static verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
    .parameter "cert"
    .parameter "publicKey"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1521
    if-nez p2, :cond_6

    .line 1523
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1529
    :goto_5
    return-void

    .line 1527
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_5
.end method
