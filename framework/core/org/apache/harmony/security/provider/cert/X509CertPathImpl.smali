.class public Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.super Ljava/security/cert/CertPath;
.source "X509CertPathImpl.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf; = null

.field private static final ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final PKCS7:I = 0x1

.field private static final PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final PKI_PATH:I = 0x0

.field static final encodings:Ljava/util/List; = null

.field private static final encodingsArr:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x6ee14ff003fb47acL


# instance fields
.field private final certificates:Ljava/util/List;

.field private pkcs7Encoding:[B

.field private pkiPathEncoding:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "PkiPath"

    aput-object v1, v0, v4

    const-string v1, "PKCS7"

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    .line 87
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    .line 301
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 362
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 396
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;

    new-array v1, v6, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 7
    .parameter "certs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v3, "X.509"

    invoke-direct {p0, v3}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 104
    .local v2, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_2b

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, cert:Ljava/lang/Object;
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_23

    .line 108
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "One of the provided certificates is not an X509 certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_23
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 113
    .end local v0           #cert:Ljava/lang/Object;
    :cond_2b
    return-void
.end method

.method private constructor <init>(Ljava/util/List;I[B)V
    .registers 5
    .parameter "certs"
    .parameter "type"
    .parameter "encoding"

    .prologue
    .line 125
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 126
    if-nez p2, :cond_c

    .line 127
    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 133
    :goto_9
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 134
    return-void

    .line 129
    :cond_c
    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    goto :goto_9
.end method

.method synthetic constructor <init>(Ljava/util/List;I[BLorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Ljava/io/InputStream;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 145
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect encoded form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .registers 11
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 159
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 160
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "Unsupported encoding"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    :cond_10
    :try_start_10
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 165
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-object v6, p0

    .line 183
    :goto_24
    return-object v6

    .line 168
    .restart local p0
    :cond_25
    sget-object v6, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 169
    .local v1, ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v5

    .line 170
    .local v5, sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v5, :cond_5a

    .line 171
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "Incorrect PKCS7 encoded form: missing signed data"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3b} :catch_3b

    .line 185
    .end local v1           #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v5           #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local p0
    :catch_3b
    move-exception v6

    move-object v2, v6

    .line 186
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect encoded form: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 174
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v5       #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local p0
    :cond_5a
    :try_start_5a
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, certs:Ljava/util/List;
    if-nez v0, :cond_65

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #certs:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .restart local v0       #certs:Ljava/util/List;
    :cond_65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v4, result:Ljava/util/List;
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_6b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_82

    .line 181
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v6, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 183
    :cond_82
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_8c} :catch_3b

    goto :goto_24
.end method

.method public static getInstance([B)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 199
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 200
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect encoded form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .registers 11
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 213
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 214
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "Unsupported encoding"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 217
    :cond_10
    :try_start_10
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 219
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-object v6, p0

    .line 235
    :goto_24
    return-object v6

    .line 222
    .restart local p0
    :cond_25
    sget-object v6, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 223
    .local v1, ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v5

    .line 224
    .local v5, sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v5, :cond_5a

    .line 225
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "Incorrect PKCS7 encoded form: missing signed data"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3b} :catch_3b

    .line 237
    .end local v1           #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v5           #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local p0
    :catch_3b
    move-exception v6

    move-object v2, v6

    .line 238
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect encoded form: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 227
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v5       #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local p0
    :cond_5a
    :try_start_5a
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, certs:Ljava/util/List;
    if-nez v0, :cond_65

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #certs:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .restart local v0       #certs:Ljava/util/List;
    :cond_65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v4, result:Ljava/util/List;
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_6b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_82

    .line 233
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v6, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 235
    :cond_82
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_8c} :catch_3b

    goto :goto_24
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    if-nez v1, :cond_d

    .line 260
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 262
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 263
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .registers 6
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 272
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 273
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v2, "Unsupported encoding"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_11
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 277
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getEncoded()[B

    move-result-object v1

    .line 286
    :goto_1f
    return-object v1

    .line 280
    :cond_20
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    if-nez v1, :cond_2c

    .line 281
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    .line 283
    :cond_2c
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 284
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 286
    goto :goto_1f
.end method

.method public getEncodings()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 295
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
