.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V
    .registers 3
    .parameter "issuer"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .registers 6
    .parameter "principal"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 4
    .parameter "principal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    .line 43
    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .registers 8

    .prologue
    .line 54
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_3c

    .line 56
    iget-object p0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    .line 63
    .local v3, name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :goto_e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 65
    .local v4, names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v2, l:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    array-length v5, v4

    if-eq v1, v5, :cond_4b

    .line 69
    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_39

    .line 73
    :try_start_25
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    aget-object v6, v4, v1

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_39} :catch_41

    .line 67
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 60
    .end local v1           #i:I
    .end local v2           #l:Ljava/util/List;
    .end local v3           #name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v4           #names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .restart local p0
    :cond_3c
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .restart local v3       #name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    goto :goto_e

    .line 76
    .end local p0
    .restart local v1       #i:I
    .restart local v2       #l:Ljava/util/List;
    .restart local v4       #names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_41
    move-exception v5

    move-object v0, v5

    .line 78
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "badly formed Name object"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    .end local v0           #e:Ljava/io/IOException;
    :cond_4b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 8
    .parameter "subject"
    .parameter "targets"

    .prologue
    .line 110
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 112
    .local v2, names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_5
    array-length v3, v2

    if-eq v1, v3, :cond_2c

    .line 114
    aget-object v0, v2, v1

    .line 116
    .local v0, gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_29

    .line 120
    :try_start_11
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v3, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_28

    move-result v3

    if-eqz v3, :cond_29

    .line 122
    const/4 v3, 0x1

    .line 131
    .end local v0           #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :goto_27
    return v3

    .line 125
    .restart local v0       #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_28
    move-exception v3

    .line 112
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 131
    .end local v0           #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_2c
    const/4 v3, 0x0

    goto :goto_27
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 177
    if-ne p1, p0, :cond_4

    .line 179
    const/4 v2, 0x1

    .line 189
    :goto_3
    return v2

    .line 182
    :cond_4
    instance-of v2, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    if-nez v2, :cond_a

    .line 184
    const/4 v2, 0x0

    goto :goto_3

    .line 187
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-object v1, v0

    .line 189
    .local v1, other:Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v3, v1, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .registers 5

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, p:[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    array-length v3, v2

    if-eq v0, v3, :cond_1b

    .line 99
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_18

    .line 101
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 105
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/Principal;

    check-cast p0, [Ljava/security/Principal;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 199
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    .line 201
    const/4 v0, 0x0

    .line 204
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_5
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 10
    .parameter "cert"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_8

    move v4, v6

    .line 172
    :goto_7
    return v4

    .line 146
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 148
    .local v3, x509Cert:Ljava/security/cert/X509Certificate;
    iget-object v4, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v4, v4, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v4, :cond_58

    .line 150
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    .line 151
    .local v1, issuer:Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 153
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_46

    move v4, v7

    goto :goto_7

    :cond_46
    move v4, v6

    goto :goto_7

    .line 157
    :cond_48
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    .line 158
    .local v2, name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_68

    move v4, v7

    .line 160
    goto :goto_7

    .line 165
    .end local v1           #issuer:Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    .end local v2           #name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_58
    iget-object v2, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 166
    .restart local v2       #name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v4

    if-eqz v4, :cond_68

    move v4, v7

    .line 168
    goto :goto_7

    :cond_68
    move v4, v6

    .line 172
    goto :goto_7
.end method
