.class final Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final PRECALCULATED_HEAD:[B

.field private final SIGNERS_INFO:[B


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 374
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;->PRECALCULATED_HEAD:[B

    .line 381
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;->SIGNERS_INFO:[B

    return-void

    .line 374
    nop

    :array_16
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x31t
        0x0t
        0x30t
        0x3t
        0x6t
        0x1t
        0x0t
    .end array-data

    .line 381
    nop

    :array_20
    .array-data 0x1
        0x31t
        0x0t
    .end array-data
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid use of encoder for PKCS#7 SignedData object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 5
    .parameter "object"
    .parameter "values"

    .prologue
    .line 384
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;->PRECALCULATED_HEAD:[B

    aput-object v1, p2, v0

    .line 385
    const/4 v0, 0x1

    aput-object p1, p2, v0

    .line 386
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;->SIGNERS_INFO:[B

    aput-object v1, p2, v0

    .line 387
    return-void
.end method
