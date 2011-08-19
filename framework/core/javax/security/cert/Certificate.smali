.class public abstract Ljavax/security/cert/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 56
    if-ne p1, p0, :cond_5

    .line 57
    const/4 v3, 0x1

    .line 66
    :goto_4
    return v3

    .line 59
    :cond_5
    instance-of v3, p1, Ljavax/security/cert/Certificate;

    if-nez v3, :cond_b

    move v3, v5

    .line 60
    goto :goto_4

    .line 62
    :cond_b
    move-object v0, p1

    check-cast v0, Ljavax/security/cert/Certificate;

    move-object v2, v0

    .line 64
    .local v2, object:Ljavax/security/cert/Certificate;
    :try_start_f
    invoke-virtual {p0}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1a
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_f .. :try_end_1a} :catch_1c

    move-result v3

    goto :goto_4

    .line 65
    :catch_1c
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljavax/security/cert/CertificateEncodingException;
    move v3, v5

    .line 66
    goto :goto_4
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, res:I
    :try_start_1
    invoke-virtual {p0}, Ljavax/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 82
    .local v0, array:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_10

    .line 83
    aget-byte v3, v0, v1
    :try_end_b
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_b} :catch_f

    add-int/2addr v2, v3

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 85
    .end local v0           #array:[B
    .end local v1           #i:I
    :catch_f
    move-exception v3

    .line 87
    :cond_10
    return v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method
