.class public Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field private attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 31
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 33
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 35
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    .registers 5
    .parameter "selector"

    .prologue
    .line 205
    if-nez p0, :cond_a

    .line 207
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot create from null selector"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_a
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 211
    .local v0, cs:Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 212
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 215
    :try_start_1d
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_3a

    .line 222
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    .line 223
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 224
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 225
    return-object v0

    .line 217
    :catch_3a
    move-exception v2

    move-object v1, v2

    .line 220
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 230
    invoke-static {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    move-result-object v0

    .line 231
    .local v0, sel:Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 232
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 233
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 234
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 235
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 236
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 237
    return-object v0
.end method

.method public getAttrCertificateChecking()Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getIssuingDistributionPoint()[B
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 11
    .parameter "obj"

    .prologue
    const/4 v8, 0x0

    .line 94
    instance-of v6, p1, Ljava/security/cert/X509CRL;

    if-nez v6, :cond_7

    move v6, v8

    .line 160
    .end local p1
    :goto_6
    return v6

    .line 98
    .restart local p1
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v2, v0

    .line 99
    .local v2, crl:Ljava/security/cert/X509CRL;
    const/4 v3, 0x0

    .line 102
    .local v3, dci:Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_start_c
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 104
    .local v1, bytes:[B
    if-eqz v1, :cond_20

    .line 106
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_2a

    move-result-object v3

    .line 114
    :cond_20
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 116
    if-nez v3, :cond_2e

    move v6, v8

    .line 118
    goto :goto_6

    .line 110
    .end local v1           #bytes:[B
    :catch_2a
    move-exception v6

    move-object v4, v6

    .local v4, e:Ljava/lang/Exception;
    move v6, v8

    .line 112
    goto :goto_6

    .line 121
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #bytes:[B
    :cond_2e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 123
    if-eqz v3, :cond_38

    move v6, v8

    .line 125
    goto :goto_6

    .line 128
    :cond_38
    if-eqz v3, :cond_4d

    .line 131
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v6, :cond_4d

    .line 133
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4d

    move v6, v8

    .line 135
    goto :goto_6

    .line 139
    :cond_4d
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v6, :cond_6d

    .line 141
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 144
    .local v5, idp:[B
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v6, :cond_63

    .line 146
    if-eqz v5, :cond_6d

    move v6, v8

    .line 148
    goto :goto_6

    .line 153
    :cond_63
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_6d

    move v6, v8

    .line 155
    goto :goto_6

    .line 160
    .end local v5           #idp:[B
    :cond_6d
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1
    invoke-super {p0, p1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v6

    goto :goto_6
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .registers 3
    .parameter "crl"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttrCertificateChecking(Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;)V
    .registers 2
    .parameter "attrCert"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 79
    return-void
.end method

.method public setCompleteCRLEnabled(Z)V
    .registers 2
    .parameter "completeCRLEnabled"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 263
    return-void
.end method

.method public setDeltaCRLIndicatorEnabled(Z)V
    .registers 2
    .parameter "deltaCRLIndicator"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 193
    return-void
.end method

.method public setIssuingDistributionPoint([B)V
    .registers 3
    .parameter "issuingDistributionPoint"

    .prologue
    .line 328
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 329
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .registers 2
    .parameter "issuingDistributionPointEnabled"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 63
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .parameter "maxBaseCRLNumber"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 289
    return-void
.end method
