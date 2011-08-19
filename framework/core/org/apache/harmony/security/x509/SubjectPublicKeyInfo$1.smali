.class final Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SubjectPublicKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
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
    .line 166
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    .line 169
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 170
    .local v7, values:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    const/4 v2, 0x0

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    aget-object p0, v7, v4

    check-cast p0, Lorg/apache/harmony/security/asn1/BitString;

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-object p0, v7, v4

    check-cast p0, Lorg/apache/harmony/security/asn1/BitString;

    iget v4, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[BLorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;)V

    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9
    .parameter "object"
    .parameter "values"

    .prologue
    .line 179
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-object v1, v0

    .line 181
    .local v1, spki:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->access$100(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, p2, v2

    .line 182
    const/4 v2, 0x1

    new-instance v3, Lorg/apache/harmony/security/asn1/BitString;

    #getter for: Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B
    invoke-static {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->access$200(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)[B

    move-result-object v4

    #getter for: Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->access$300(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    aput-object v3, p2, v2

    .line 183
    return-void
.end method
