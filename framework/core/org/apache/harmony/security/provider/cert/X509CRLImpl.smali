.class public Lorg/apache/harmony/security/provider/cert/X509CRLImpl;
.super Ljava/security/cert/X509CRL;
.source "X509CRLImpl.java"


# instance fields
.field private final crl:Lorg/apache/harmony/security/x509/CertificateList;

.field private encoding:[B

.field private entries:Ljava/util/ArrayList;

.field private entriesRetrieved:Z

.field private entriesSize:I

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private isIndirectCRL:Z

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private nonIndirectEntriesSize:I

.field private nullSigAlgParams:Z

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgOID:Ljava/lang/String;

.field private sigAlgParams:[B

.field private signature:[B

.field private final tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

.field private tbsCertListEncoding:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 115
    :try_start_3
    sget-object v1, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/CertificateList;

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    .line 116
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    .line 117
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_1e

    .line 121
    return-void

    .line 118
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/CertificateList;)V
    .registers 3
    .parameter "crl"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    .line 102
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/CertificateList;->getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 104
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/CertificateList;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    .line 131
    return-void
.end method

.method private retrieveEntries()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 202
    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    .line 203
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/TBSCertList;->getRevokedCertificates()Ljava/util/List;

    move-result-object v4

    .line 204
    .local v4, rcerts:Ljava/util/List;
    if-nez v4, :cond_c

    .line 227
    :cond_b
    return-void

    .line 207
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    .line 208
    new-instance v5, Ljava/util/ArrayList;

    iget v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, rcertIssuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-ge v0, v5, :cond_b

    .line 212
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    .line 214
    .local v2, rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 215
    .local v1, iss:Ljavax/security/auth/x500/X500Principal;
    if-eqz v1, :cond_32

    .line 218
    move-object v3, v1

    .line 219
    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->isIndirectCRL:Z

    .line 223
    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nonIndirectEntriesSize:I

    .line 225
    :cond_32
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;

    invoke-direct {v6, v2, v3}, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;-><init>(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 477
    const/4 v0, 0x0

    .line 479
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getEncoded()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    if-nez v1, :cond_d

    .line 143
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    .line 145
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 146
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v2, 0x0

    .line 487
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 491
    :goto_6
    return-object v1

    .line 490
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 491
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_11

    move-object v1, v2

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_6
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_10

    .line 164
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 166
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_10

    .line 175
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 177
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 466
    const/4 v0, 0x0

    .line 468
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 6
    .parameter "serialNumber"

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-boolean v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v2, :cond_8

    .line 295
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    .line 297
    :cond_8
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v2, :cond_e

    move-object v2, v3

    .line 306
    :goto_d
    return-object v2

    .line 300
    :cond_e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    iget v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nonIndirectEntriesSize:I

    if-ge v1, v2, :cond_2a

    .line 301
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    .line 302
    .local v0, entry:Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object v2, v0

    .line 303
    goto :goto_d

    .line 300
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .end local v0           #entry:Ljava/security/cert/X509CRLEntry;
    :cond_2a
    move-object v2, v3

    .line 306
    goto :goto_d
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .registers 9
    .parameter "certificate"

    .prologue
    const/4 v6, 0x0

    .line 239
    if-nez p1, :cond_9

    .line 240
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 242
    :cond_9
    iget-boolean v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v5, :cond_10

    .line 243
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    .line 245
    :cond_10
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v5, :cond_16

    move-object v5, v6

    .line 284
    :goto_15
    return-object v5

    .line 248
    :cond_16
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 249
    .local v4, serialN:Ljava/math/BigInteger;
    iget-boolean v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->isIndirectCRL:Z

    if-eqz v5, :cond_59

    .line 251
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 252
    .local v0, certIssuer:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 254
    const/4 v0, 0x0

    .line 256
    :cond_2d
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2e
    iget v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-ge v2, v5, :cond_75

    .line 257
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    .line 259
    .local v1, entry:Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 261
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 263
    .local v3, iss:Ljavax/security/auth/x500/X500Principal;
    if-eqz v0, :cond_52

    .line 266
    invoke-virtual {v0, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    move-object v5, v1

    .line 267
    goto :goto_15

    .line 269
    :cond_52
    if-nez v3, :cond_56

    move-object v5, v1

    .line 271
    goto :goto_15

    .line 256
    .end local v3           #iss:Ljavax/security/auth/x500/X500Principal;
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 277
    .end local v0           #certIssuer:Ljavax/security/auth/x500/X500Principal;
    .end local v1           #entry:Ljava/security/cert/X509CRLEntry;
    .end local v2           #i:I
    :cond_59
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5a
    iget v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-ge v2, v5, :cond_75

    .line 278
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    .line 279
    .restart local v1       #entry:Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    move-object v5, v1

    .line 280
    goto :goto_15

    .line 277
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .end local v1           #entry:Ljava/security/cert/X509CRLEntry;
    :cond_75
    move-object v5, v6

    .line 284
    goto :goto_15
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v0, :cond_7

    .line 315
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    .line 317
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_c
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 356
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 359
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 362
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 371
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 374
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 377
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nullSigAlgParams:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 395
    :goto_6
    return-object v0

    .line 388
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    if-nez v0, :cond_20

    .line 389
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    .line 390
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    if-nez v0, :cond_20

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nullSigAlgParams:Z

    move-object v0, v1

    .line 392
    goto :goto_6

    .line 395
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    goto :goto_6
.end method

.method public getSignature()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    if-nez v1, :cond_d

    .line 343
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    .line 345
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 346
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    return-object v0
.end method

.method public getTBSCertList()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    if-nez v1, :cond_d

    .line 329
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    .line 331
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 332
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getThisUpdate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 500
    const/4 v0, 0x0

    .line 502
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_5
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 4
    .parameter "cert"

    .prologue
    const/4 v1, 0x0

    .line 442
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_7

    move v0, v1

    .line 445
    .end local p1
    :goto_6
    return v0

    .restart local p1
    :cond_7
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_6

    :cond_11
    move v0, v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/CertificateList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 407
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 408
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    .line 409
    .local v1, tbsEncoding:[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 410
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 411
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Signature was not verified"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_2a
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 425
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 426
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    .line 427
    .local v1, tbsEncoding:[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 428
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 429
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Signature was not verified"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_2a
    return-void
.end method
