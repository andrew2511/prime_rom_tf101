.class public Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryObject.java"


# instance fields
.field private c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field private certificateIssuer:Ljavax/security/auth/x500/X500Principal;

.field private hashValue:I

.field private isHashValueSet:Z

.field private isIndirect:Z

.field private previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 49
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->loadCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V
    .registers 5
    .parameter "c"
    .parameter "isIndirect"
    .parameter "previousCertificateIssuer"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 75
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    .line 76
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->loadCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 78
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .parameter "critical"

    .prologue
    .line 130
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 132
    .local v2, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_31

    .line 134
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 135
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 137
    .local v0, e:Ljava/util/Enumeration;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 139
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 140
    .local v3, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 142
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_11

    .line 144
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_2f
    move-object v5, v4

    .line 151
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v4           #set:Ljava/util/Set;
    :goto_30
    return-object v5

    :cond_31
    const/4 v5, 0x0

    goto :goto_30
.end method

.method private loadCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isIndirect:Z

    if-nez v4, :cond_7

    move-object v4, v6

    .line 119
    :goto_6
    return-object v4

    .line 98
    :cond_7
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 99
    .local v1, ext:[B
    if-nez v1, :cond_16

    .line 101
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_6

    .line 106
    :cond_16
    :try_start_16
    invoke-static {v1}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 108
    .local v3, names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    array-length v4, v3

    if-ge v2, v4, :cond_4a

    .line 110
    aget-object v4, v3, v2

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_47

    .line 112
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_42} :catch_43

    goto :goto_6

    .line 117
    .end local v2           #i:I
    .end local v3           #names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_43
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/IOException;
    move-object v4, v6

    .line 119
    goto :goto_6

    .line 108
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v3       #names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_4a
    move-object v4, v6

    .line 115
    goto :goto_6
.end method


# virtual methods
.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->certificateIssuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getEncoded(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 210
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 212
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 8
    .parameter "oid"

    .prologue
    .line 166
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 168
    .local v2, exts:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3b

    .line 170
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 172
    .local v1, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_3b

    .line 176
    :try_start_13
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1c

    move-result-object v3

    .line 185
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :goto_1b
    return-object v3

    .line 178
    .restart local v1       #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :catch_1c
    move-exception v3

    move-object v0, v3

    .line 180
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getRevocationDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 88
    .local v0, extns:Ljava/util/Set;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    if-nez v0, :cond_d

    .line 196
    invoke-super {p0}, Ljava/security/cert/X509CRLEntry;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->isHashValueSet:Z

    .line 200
    :cond_d
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->hashValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, nl:Ljava/lang/String;
    const-string v9, "      userCertificate: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v9, "       revocationDate: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v9, "       certificateIssuer: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/X509CRLEntryObject;->c:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v5

    .line 242
    .local v5, extensions:Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v5, :cond_10a

    .line 244
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 245
    .local v2, e:Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 247
    const-string v9, "   crlEntryExtensions:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    .end local p0
    :goto_59
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 251
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    .line 252
    .local v8, oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    move-result-object v4

    .line 253
    .local v4, ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v9

    if-eqz v9, :cond_105

    .line 255
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 256
    .local v7, octs:[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 257
    .local v1, dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    const-string v9, "                       critical("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :try_start_8f
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 262
    new-instance v9, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;-><init>(Lcom/android/org/bouncycastle/asn1/DEREnumerated;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ab} :catch_ac

    goto :goto_59

    .line 274
    :catch_ac
    move-exception v9

    move-object v3, v9

    .line 276
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const-string v9, " value = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "*****"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_59

    .line 264
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_c5
    :try_start_c5
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e7

    .line 266
    const-string v9, "Certificate issuer: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v10, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_59

    .line 270
    :cond_e7
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v9, " value = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_103} :catch_ac

    goto/16 :goto_59

    .line 282
    .end local v1           #dIn:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v7           #octs:[B
    :cond_105
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_59

    .line 288
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #ext:Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v8           #oid:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    :cond_10a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
