.class final Ljavax/crypto/EncryptedPrivateKeyInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EncryptedPrivateKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/EncryptedPrivateKeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 10
    .parameter "object"
    .parameter "values"

    .prologue
    .line 500
    move-object v0, p1

    check-cast v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    move-object v3, v0

    .line 503
    .local v3, epki:Ljavax/crypto/EncryptedPrivateKeyInfo;
    :try_start_4
    #getter for: Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;
    invoke-static {v3}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$000(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;

    move-result-object v4

    if-nez v4, :cond_23

    invoke-static {}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$100()[B

    move-result-object v4

    move-object v1, v4

    .line 505
    .local v1, algParmsEncoded:[B
    :goto_f
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #getter for: Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;
    invoke-static {v3}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$200(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    aput-object v5, p2, v4

    .line 506
    const/4 v4, 0x1

    #getter for: Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B
    invoke-static {v3}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$300(Ljavax/crypto/EncryptedPrivateKeyInfo;)[B

    move-result-object v5

    aput-object v5, p2, v4

    .line 510
    return-void

    .line 503
    .end local v1           #algParmsEncoded:[B
    :cond_23
    #getter for: Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;
    invoke-static {v3}, Ljavax/crypto/EncryptedPrivateKeyInfo;->access$000(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/AlgorithmParameters;->getEncoded()[B
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2a} :catch_2d

    move-result-object v4

    move-object v1, v4

    goto :goto_f

    .line 507
    :catch_2d
    move-exception v4

    move-object v2, v4

    .line 508
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
