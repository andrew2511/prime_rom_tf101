.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;
.super Ljava/security/cert/CertPath;
.source "PKIXCertPath.java"


# static fields
.field static final certPathEncodings:Ljava/util/List;


# instance fields
.field private certificates:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, encodings:Ljava/util/List;
    const-string v1, "PkiPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "PEM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "PKCS7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 15
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v9, "X.509"

    invoke-direct {p0, v9}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 172
    :try_start_5
    const-string v9, "PkiPath"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 174
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 175
    .local v2, derInStream:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 176
    .local v3, derObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    instance-of v9, v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v9, :cond_41

    .line 178
    new-instance v9, Ljava/security/cert/CertificateException;

    const-string v10, "input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath"

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_22} :catch_22
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_22} :catch_78

    .line 207
    .end local v2           #derInStream:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #derObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    :catch_22
    move-exception v9

    move-object v7, v9

    .line 209
    .local v7, ex:Ljava/io/IOException;
    :goto_24
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException throw while decoding CertPath:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 180
    .end local v7           #ex:Ljava/io/IOException;
    .restart local v2       #derInStream:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v3       #derObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    :cond_41
    :try_start_41
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v3           #derObject:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 181
    .local v4, e:Ljava/util/Enumeration;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 182
    const-string v9, "X.509"

    const-string v10, "BC"

    invoke-static {v9, v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 183
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    :goto_56
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_cd

    .line 185
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 186
    .local v5, element:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const-string v9, "DER"

    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 187
    .local v6, encoded:[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    const/4 v10, 0x0

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_77} :catch_22
    .catch Ljava/security/NoSuchProviderException; {:try_start_41 .. :try_end_77} :catch_78

    goto :goto_56

    .line 211
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v2           #derInStream:Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #e:Ljava/util/Enumeration;
    .end local v5           #element:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v6           #encoded:[B
    :catch_78
    move-exception v9

    move-object v7, v9

    .line 213
    .local v7, ex:Ljava/security/NoSuchProviderException;
    :goto_7a
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BouncyCastle provider not found while trying to get a CertificateFactory:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 191
    .end local v7           #ex:Ljava/security/NoSuchProviderException;
    :cond_97
    :try_start_97
    const-string v9, "PKCS7"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a7

    const-string v9, "PEM"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 193
    :cond_a7
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_ac} :catch_22
    .catch Ljava/security/NoSuchProviderException; {:try_start_97 .. :try_end_ac} :catch_78

    .line 194
    .end local p1
    .local v8, inStream:Ljava/io/InputStream;
    :try_start_ac
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 195
    const-string v9, "X.509"

    const-string v10, "BC"

    invoke-static {v9, v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 197
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    :goto_bb
    invoke-virtual {v1, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .local v0, cert:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_cc

    .line 199
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_c6} :catch_c7
    .catch Ljava/security/NoSuchProviderException; {:try_start_ac .. :try_end_c6} :catch_ef

    goto :goto_bb

    .line 207
    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_c7
    move-exception v9

    move-object v7, v9

    move-object p1, v8

    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    goto/16 :goto_24

    .end local p1
    .restart local v0       #cert:Ljava/security/cert/Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    .restart local v8       #inStream:Ljava/io/InputStream;
    :cond_cc
    move-object p1, v8

    .line 216
    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_cd
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 217
    return-void

    .line 204
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :cond_d6
    :try_start_d6
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_ef} :catch_22
    .catch Ljava/security/NoSuchProviderException; {:try_start_d6 .. :try_end_ef} :catch_78

    .line 211
    .end local p1
    .restart local v8       #inStream:Ljava/io/InputStream;
    :catch_ef
    move-exception v9

    move-object v7, v9

    move-object p1, v8

    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    goto :goto_7a
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter "certificates"

    .prologue
    .line 155
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 157
    return-void
.end method

.method private sortCerts(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .parameter "certs"

    .prologue
    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_9

    move-object v10, p1

    .line 150
    .end local p0
    :goto_8
    return-object v10

    .line 71
    .restart local p0
    :cond_9
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 72
    .local v4, issuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v6, 0x1

    .line 74
    .local v6, okay:Z
    const/4 v3, 0x1

    .local v3, i:I
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_3a

    .line 76
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 78
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 80
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 84
    :cond_39
    const/4 v6, 0x0

    .line 89
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    :cond_3a
    if-eqz v6, :cond_3e

    move-object v10, p1

    .line 91
    goto :goto_8

    .line 95
    :cond_3e
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v8, retList:Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v7, orig:Ljava/util/List;
    const/4 v3, 0x0

    :goto_4d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_84

    .line 100
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 101
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 103
    .local v2, found:Z
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    .line 105
    .local v9, subject:Ljavax/security/auth/x500/X500Principal;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v5, v10, :cond_76

    .line 107
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 108
    .local v0, c:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_81

    .line 110
    const/4 v2, 0x1

    .line 115
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    :cond_76
    if-nez v2, :cond_7e

    .line 117
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 105
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 123
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v2           #found:Z
    .end local v5           #j:I
    .end local v9           #subject:Ljavax/security/auth/x500/X500Principal;
    :cond_84
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_8e

    move-object v10, v7

    .line 125
    goto/16 :goto_8

    .line 128
    :cond_8e
    const/4 v3, 0x0

    :goto_8f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_c2

    .line 130
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 132
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_a0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_bc

    .line 134
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 135
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 137
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 132
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    :cond_bf
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 145
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    .end local v5           #j:I
    :cond_c2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_cb

    move-object v10, v7

    .line 147
    goto/16 :goto_8

    :cond_cb
    move-object v10, v8

    .line 150
    goto/16 :goto_8
.end method

.method private toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 6
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 353
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 355
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 357
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while encoding certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 6
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 366
    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 368
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 370
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .registers 3

    .prologue
    .line 337
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->getEncodings()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    .local v1, iter:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, enc:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 248
    check-cast v0, Ljava/lang/String;

    .end local v0           #enc:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    .line 251
    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .registers 12
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 267
    const-string v1, "PkiPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 269
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 271
    .local v9, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    .line 272
    .local v8, iter:Ljava/util/ListIterator;
    :goto_1a
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 274
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1a

    .line 277
    :cond_2e
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    .line 297
    .end local v8           #iter:Ljava/util/ListIterator;
    :goto_37
    return-object v1

    .line 279
    .end local v9           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_38
    const-string v1, "PKCS7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 281
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, v1, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 283
    .local v3, encInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 284
    .restart local v9       #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4d
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v7, v1, :cond_67

    .line 286
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 284
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 289
    :cond_67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v9}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 297
    .local v0, sd:Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    goto :goto_37

    .line 325
    .end local v0           #sd:Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;
    .end local v3           #encInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7           #i:I
    .end local v9           #v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8d
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported encoding: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 229
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
