.class final Ljavax/security/cert/X509Certificate$2;
.super Ljavax/security/cert/X509Certificate;
.source "X509Certificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cert:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValidity()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_5
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_5} :catch_12

    .line 155
    return-void

    .line 150
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Ljavax/security/cert/CertificateNotYetValidException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    .end local v0           #e:Ljava/security/cert/CertificateNotYetValidException;
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 153
    .local v0, e:Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Ljavax/security/cert/CertificateExpiredException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 5
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_5} :catch_12

    .line 167
    return-void

    .line 162
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 163
    .local v0, e:Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Ljavax/security/cert/CertificateNotYetValidException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local v0           #e:Ljava/security/cert/CertificateNotYetValidException;
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, e:Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Ljavax/security/cert/CertificateExpiredException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 112
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljavax/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 125
    return-void

    .line 122
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Ljavax/security/cert/X509Certificate$2;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 136
    return-void

    .line 133
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v1, Ljavax/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
