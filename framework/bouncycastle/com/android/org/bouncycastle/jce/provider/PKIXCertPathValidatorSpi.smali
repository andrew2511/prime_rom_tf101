.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# static fields
.field private static final SERIAL_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_96

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    new-instance v2, Ljava/math/BigInteger;

    new-array v3, v6, [B

    fill-array-data v3, :array_a2

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v2, v1, v5

    const/4 v2, 0x2

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_ae

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_ba

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_c6

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_d2

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_de

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_ea

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_f6

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v6, [B

    fill-array-data v4, :array_102

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SERIAL_BLACKLIST:Ljava/util/Set;

    return-void

    :array_96
    .array-data 0x1
        0x7t
        0x7at
        0x59t
        0xbct
        0xd5t
        0x34t
        0x59t
        0x60t
        0x1ct
        0xa6t
        0x90t
        0x72t
        0x67t
        0xa6t
        0xddt
        0x1ct
    .end array-data

    :array_a2
    .array-data 0x1
        0x4t
        0x7et
        0xcbt
        0xe9t
        0xfct
        0xa5t
        0x5ft
        0x7bt
        0xd0t
        0x9et
        0xaet
        0x36t
        0xe1t
        0xct
        0xaet
        0x1et
    .end array-data

    :array_ae
    .array-data 0x1
        0xd8t
        0xf3t
        0x5ft
        0x4et
        0xb7t
        0x87t
        0x2bt
        0x2dt
        0xabt
        0x6t
        0x92t
        0xe3t
        0x15t
        0x38t
        0x2ft
        0xb0t
    .end array-data

    :array_ba
    .array-data 0x1
        0xb0t
        0xb7t
        0x13t
        0x3et
        0xd0t
        0x96t
        0xf9t
        0xb5t
        0x6ft
        0xaet
        0x91t
        0xc8t
        0x74t
        0xbdt
        0x3at
        0xc0t
    .end array-data

    :array_c6
    .array-data 0x1
        0x92t
        0x39t
        0xd5t
        0x34t
        0x8ft
        0x40t
        0xd1t
        0x69t
        0x5at
        0x74t
        0x54t
        0x70t
        0xe1t
        0xf2t
        0x3ft
        0x43t
    .end array-data

    :array_d2
    .array-data 0x1
        0xe9t
        0x2t
        0x8bt
        0x95t
        0x78t
        0xe4t
        0x15t
        0xdct
        0x1at
        0x71t
        0xat
        0x2bt
        0x88t
        0x15t
        0x44t
        0x47t
    .end array-data

    :array_de
    .array-data 0x1
        0xd7t
        0x55t
        0x8ft
        0xdat
        0xf5t
        0xf1t
        0x10t
        0x5bt
        0xb2t
        0x13t
        0x28t
        0x2bt
        0x70t
        0x77t
        0x29t
        0xa3t
    .end array-data

    :array_ea
    .array-data 0x1
        0xf5t
        0xc8t
        0x6at
        0xf3t
        0x61t
        0x62t
        0xf1t
        0x3at
        0x64t
        0xf5t
        0x4ft
        0x6dt
        0xc9t
        0x58t
        0x7ct
        0x6t
    .end array-data

    :array_f6
    .array-data 0x1
        0x39t
        0x2at
        0x43t
        0x4ft
        0xet
        0x7t
        0xdft
        0x1ft
        0x8at
        0xa3t
        0x5t
        0xdet
        0x34t
        0xe0t
        0xc2t
        0x29t
    .end array-data

    :array_102
    .array-data 0x1
        0x3et
        0x75t
        0xcet
        0xd4t
        0x6bt
        0x69t
        0x30t
        0x21t
        0x21t
        0x88t
        0x30t
        0xaet
        0x86t
        0xa8t
        0x2at
        0x71t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 55
    .parameter "certPath"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/security/cert/PKIXParameters;

    move v6, v0

    if-nez v6, :cond_2c

    .line 70
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parameters must be a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instance."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    :cond_2c
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    move v6, v0

    if-eqz v6, :cond_54

    .line 78
    move-object/from16 v0, p2

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;

    move-object/from16 v38, v0

    .line 87
    .local v38, indexedParams:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    :goto_39
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move v6, v0

    if-eqz v6, :cond_57

    .line 89
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-object/from16 v23, v0

    .line 95
    .end local p2
    .local v23, paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :goto_46
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_5e

    .line 97
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 82
    .end local v23           #paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v38           #indexedParams:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    .restart local p2
    :cond_54
    const/16 v38, 0x0

    .restart local v38       #indexedParams:Lorg/apache/harmony/xnet/provider/jsse/IndexedPKIXParameters;
    goto :goto_39

    .line 93
    :cond_57
    check-cast p2, Ljava/security/cert/PKIXParameters;

    .end local p2
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v23

    .restart local v23       #paramsPKIX:Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    goto :goto_46

    .line 108
    :cond_5e
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v31

    .line 109
    .local v31, certs:Ljava/util/List;
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v43

    .line 111
    .local v43, n:I
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 113
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Certification path is empty."

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 117
    :cond_7c
    const/4 v6, 0x0

    move-object/from16 v0, v31

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/security/cert/X509Certificate;

    .line 119
    .local v29, cert:Ljava/security/cert/X509Certificate;
    if-eqz v29, :cond_d8

    .line 120
    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v47

    .line 121
    .local v47, serial:Ljava/math/BigInteger;
    if-eqz v47, :cond_d8

    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SERIAL_BLACKLIST:Ljava/util/Set;

    move-object v0, v6

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Certificate revocation of serial 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    move-object/from16 v0, v47

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 124
    .local v42, message:Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v0, v6

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    new-instance v34, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 126
    .local v34, e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 140
    .end local v34           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v42           #message:Ljava/lang/String;
    .end local v47           #serial:Ljava/math/BigInteger;
    :cond_d8
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v24

    .line 149
    .local v24, userInitialPolicySet:Ljava/util/Set;
    :try_start_dc
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, v31

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/X509Certificate;

    if-eqz v38, :cond_108

    move-object/from16 v6, v38

    :goto_ef
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/security/cert/PKIXParameters;)Ljava/security/cert/TrustAnchor;
    :try_end_f5
    .catch Lcom/android/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_dc .. :try_end_f5} :catch_10b

    move-result-object v48

    .line 158
    .local v48, trust:Ljava/security/cert/TrustAnchor;
    if-nez v48, :cond_125

    .line 160
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Trust anchor for certification path not found."

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .end local v48           #trust:Ljava/security/cert/TrustAnchor;
    :cond_108
    move-object/from16 v6, v23

    .line 149
    goto :goto_ef

    .line 153
    :catch_10b
    move-exception v6

    move-object/from16 v34, v6

    .line 155
    .restart local v34       #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 167
    .end local v34           #e:Lcom/android/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v48       #trust:Ljava/security/cert/TrustAnchor;
    :cond_125
    const/4 v11, 0x0

    .line 178
    .local v11, index:I
    add-int/lit8 v6, v43, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 179
    .local v20, policyNodes:[Ljava/util/List;
    const/16 v40, 0x0

    .local v40, j:I
    :goto_12f
    move-object/from16 v0, v20

    array-length v0, v0

    move v6, v0

    move/from16 v0, v40

    move v1, v6

    if-ge v0, v1, :cond_142

    .line 181
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v20, v40

    .line 179
    add-int/lit8 v40, v40, 0x1

    goto :goto_12f

    .line 184
    :cond_142
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v8, policySet:Ljava/util/Set;
    const-string v6, "2.5.29.32.0"

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v5, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const-string v11, "2.5.29.32.0"

    .end local v11           #index:I
    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 191
    .local v5, validPolicyTree:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v6, 0x0

    aget-object v6, v20, v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v44, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct/range {v44 .. v44}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 201
    .local v44, nameConstraintValidator:Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 203
    .local v18, acceptablePolicies:Ljava/util/Set;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_1d3

    .line 205
    const/16 v36, 0x0

    .line 217
    .local v36, explicitPolicy:I
    :goto_178
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isAnyPolicyInhibited()Z

    move-result v6

    if-eqz v6, :cond_1d6

    .line 219
    const/16 v21, 0x0

    .line 231
    .local v21, inhibitAnyPolicy:I
    :goto_180
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->isPolicyMappingInhibited()Z

    move-result v6

    if-eqz v6, :cond_1d9

    .line 233
    const/16 v46, 0x0

    .line 246
    .local v46, policyMapping:I
    :goto_188
    invoke-virtual/range {v48 .. v48}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v15

    .line 249
    .local v15, sign:Ljava/security/cert/X509Certificate;
    if-eqz v15, :cond_1dc

    .line 251
    :try_start_18e
    invoke-static {v15}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    .line 252
    .local v14, workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_195
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18e .. :try_end_195} :catch_1ea

    move-result-object v12

    .line 266
    .local v12, workingPublicKey:Ljava/security/PublicKey;
    :goto_196
    const/16 v49, 0x0

    .line 269
    .local v49, workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_198
    invoke-static {v12}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_19b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_198 .. :try_end_19b} :catch_1fd

    move-result-object v49

    .line 276
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v50

    .line 277
    .local v50, workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v51

    .line 282
    .local v51, workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    move/from16 v41, v43

    .line 288
    .local v41, maxPathLength:I
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v6

    if-eqz v6, :cond_20e

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v31

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20e

    .line 291
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Target certificate in certification path does not match targetConstraints."

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 209
    .end local v12           #workingPublicKey:Ljava/security/PublicKey;
    .end local v14           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .end local v15           #sign:Ljava/security/cert/X509Certificate;
    .end local v21           #inhibitAnyPolicy:I
    .end local v36           #explicitPolicy:I
    .end local v41           #maxPathLength:I
    .end local v46           #policyMapping:I
    .end local v49           #workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v50           #workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .end local v51           #workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .restart local v8       #policySet:Ljava/util/Set;
    :cond_1d3
    add-int/lit8 v36, v43, 0x1

    .restart local v36       #explicitPolicy:I
    goto :goto_178

    .line 223
    :cond_1d6
    add-int/lit8 v21, v43, 0x1

    .restart local v21       #inhibitAnyPolicy:I
    goto :goto_180

    .line 237
    :cond_1d9
    add-int/lit8 v46, v43, 0x1

    .restart local v46       #policyMapping:I
    goto :goto_188

    .line 256
    .restart local v15       #sign:Ljava/security/cert/X509Certificate;
    :cond_1dc
    :try_start_1dc
    new-instance v14, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v48 .. v48}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v14       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v48 .. v48}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_1e8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1dc .. :try_end_1e8} :catch_1ea

    move-result-object v12

    .restart local v12       #workingPublicKey:Ljava/security/PublicKey;
    goto :goto_196

    .line 260
    .end local v12           #workingPublicKey:Ljava/security/PublicKey;
    .end local v14           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    :catch_1ea
    move-exception v6

    move-object/from16 v35, v6

    .line 262
    .local v35, ex:Ljava/lang/IllegalArgumentException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Subject of trust anchor could not be (re)encoded."

    const/4 v8, -0x1

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 271
    .end local v35           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v8       #policySet:Ljava/util/Set;
    .restart local v12       #workingPublicKey:Ljava/security/PublicKey;
    .restart local v14       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .restart local v49       #workingAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_1fd
    move-exception v34

    .line 273
    .local v34, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v6, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v8, -0x1

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 298
    .end local v34           #e:Ljava/security/cert/CertPathValidatorException;
    .restart local v8       #policySet:Ljava/util/Set;
    .restart local v41       #maxPathLength:I
    .restart local v50       #workingPublicKeyAlgorithm:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v51       #workingPublicKeyParameters:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :cond_20e
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v45

    .line 299
    .local v45, pathCheckers:Ljava/util/List;
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .line 300
    .local v30, certIter:Ljava/util/Iterator;
    :goto_216
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22a

    .line 302
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_216

    .line 305
    :cond_22a
    const/16 v29, 0x0

    .line 307
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v11, v6, v7

    .restart local v11       #index:I
    :goto_233
    if-ltz v11, :cond_3a4

    .line 314
    sub-int v37, v43, v11

    .line 322
    .local v37, i:I
    move-object/from16 v0, v31

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29           #cert:Ljava/security/cert/X509Certificate;
    check-cast v29, Ljava/security/cert/X509Certificate;

    .line 323
    .restart local v29       #cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v11, v6, :cond_292

    const/4 v6, 0x1

    move v13, v6

    .local v13, verificationAlreadyPerformed:Z
    :goto_24a
    move-object/from16 v9, p1

    move-object/from16 v10, v23

    .line 329
    invoke-static/range {v9 .. v15}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    .line 332
    move-object/from16 v0, p1

    move v1, v11

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    move-object/from16 v16, p1

    move/from16 v17, v11

    move-object/from16 v19, v5

    .line 334
    invoke-static/range {v16 .. v21}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 337
    move-object/from16 v0, p1

    move v1, v11

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 339
    move-object/from16 v0, p1

    move v1, v11

    move-object v2, v5

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 345
    move/from16 v0, v37

    move/from16 v1, v43

    if-eq v0, v1, :cond_388

    .line 347
    if-eqz v29, :cond_295

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_295

    .line 349
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Version 1 certificates can\'t be used as CA ones."

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 323
    .end local v13           #verificationAlreadyPerformed:Z
    .restart local v8       #policySet:Ljava/util/Set;
    :cond_292
    const/4 v6, 0x0

    move v13, v6

    goto :goto_24a

    .line 353
    .restart local v13       #verificationAlreadyPerformed:Z
    :cond_295
    move-object/from16 v0, p1

    move v1, v11

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 355
    move-object/from16 v0, p1

    move v1, v11

    move-object/from16 v2, v20

    move-object v3, v5

    move/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 358
    move-object/from16 v0, p1

    move v1, v11

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 361
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v36

    .line 362
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v46

    .line 363
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v21

    .line 368
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v36

    .line 369
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v46

    .line 372
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v21

    .line 375
    move-object/from16 v0, p1

    move v1, v11

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 378
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v41

    .line 381
    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v41

    .line 384
    move-object/from16 v0, p1

    move v1, v11

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 386
    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v32

    .line 387
    .local v32, criticalExtensions:Ljava/util/Set;
    if-eqz v32, :cond_38c

    .line 389
    new-instance v33, Ljava/util/HashSet;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 392
    .end local v32           #criticalExtensions:Ljava/util/Set;
    .local v33, criticalExtensions:Ljava/util/Set;
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 393
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 394
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 395
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 396
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 397
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 398
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 399
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 400
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 401
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v32, v33

    .line 409
    .end local v33           #criticalExtensions:Ljava/util/Set;
    .restart local v32       #criticalExtensions:Ljava/util/Set;
    :goto_364
    move-object/from16 v0, p1

    move v1, v11

    move-object/from16 v2, v32

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 412
    move-object/from16 v15, v29

    .line 415
    invoke-static {v15}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    .line 420
    :try_start_374
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    :try_end_37b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_374 .. :try_end_37b} :catch_392

    move-result-object v12

    .line 427
    invoke-static {v12}, Lcom/android/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v49

    .line 429
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v50

    .line 431
    invoke-virtual/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v51

    .line 307
    .end local v32           #criticalExtensions:Ljava/util/Set;
    :cond_388
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_233

    .line 405
    .restart local v32       #criticalExtensions:Ljava/util/Set;
    :cond_38c
    new-instance v32, Ljava/util/HashSet;

    .end local v32           #criticalExtensions:Ljava/util/Set;
    invoke-direct/range {v32 .. v32}, Ljava/util/HashSet;-><init>()V

    .restart local v32       #criticalExtensions:Ljava/util/Set;
    goto :goto_364

    .line 422
    :catch_392
    move-exception v6

    move-object/from16 v34, v6

    .line 424
    .restart local v34       #e:Ljava/security/cert/CertPathValidatorException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Next working key could not be retrieved."

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v34

    move-object/from16 v3, p1

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 439
    .end local v13           #verificationAlreadyPerformed:Z
    .end local v32           #criticalExtensions:Ljava/util/Set;
    .end local v34           #e:Ljava/security/cert/CertPathValidatorException;
    .end local v37           #i:I
    :cond_3a4
    move/from16 v0, v36

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v36

    .line 441
    add-int/lit8 v6, v11, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v36

    .line 450
    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v32

    .line 452
    .restart local v32       #criticalExtensions:Ljava/util/Set;
    if-eqz v32, :cond_44e

    .line 454
    new-instance v33, Ljava/util/HashSet;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 456
    .end local v32           #criticalExtensions:Ljava/util/Set;
    .restart local v33       #criticalExtensions:Ljava/util/Set;
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 457
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 458
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 459
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 460
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 461
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 462
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 463
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 464
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 465
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 466
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v32, v33

    .line 473
    .end local v33           #criticalExtensions:Ljava/util/Set;
    .restart local v32       #criticalExtensions:Ljava/util/Set;
    :goto_420
    add-int/lit8 v6, v11, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v45

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 475
    add-int/lit8 v25, v11, 0x1

    move-object/from16 v22, p1

    move-object/from16 v26, v20

    move-object/from16 v27, v5

    move-object/from16 v28, v18

    invoke-static/range {v22 .. v28}, Lcom/android/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v39

    .line 478
    .local v39, intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-gtz v36, :cond_43e

    if-eqz v39, :cond_454

    .line 480
    :cond_43e
    new-instance v6, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object v0, v6

    move-object/from16 v1, v48

    move-object/from16 v2, v39

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v6

    .line 470
    .end local v39           #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_44e
    new-instance v32, Ljava/util/HashSet;

    .end local v32           #criticalExtensions:Ljava/util/Set;
    invoke-direct/range {v32 .. v32}, Ljava/util/HashSet;-><init>()V

    .restart local v32       #criticalExtensions:Ljava/util/Set;
    goto :goto_420

    .line 483
    .restart local v39       #intersection:Lcom/android/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_454
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Path processing failed on policy."

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6
.end method
