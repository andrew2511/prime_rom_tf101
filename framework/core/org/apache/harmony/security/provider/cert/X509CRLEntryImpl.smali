.class public Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryImpl.java"


# instance fields
.field private encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final issuer:Ljavax/security/auth/x500/X500Principal;

.field private final rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;Ljavax/security/auth/x500/X500Principal;)V
    .registers 4
    .parameter "rcert"
    .parameter "issuer"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    .line 69
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getCrlEntryExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 70
    iput-object p2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 71
    return-void
.end method


# virtual methods
.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

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

    .line 82
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    if-nez v1, :cond_d

    .line 83
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    .line 85
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 86
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 165
    :goto_6
    return-object v1

    .line 164
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 165
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_11

    move-object v1, v2

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_6
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getRevocationDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getUserCertificate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->size()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X509CRLEntryImpl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;->rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
