.class final Lorg/apache/harmony/security/x509/TBSCertificate$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 4
    .parameter "x0"

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 306
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setDefault(Ljava/lang/Object;I)V

    .line 307
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    .line 308
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    .line 309
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    .line 310
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 17
    .parameter "in"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v13, 0x0

    .line 313
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    move-object p0, v0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    .line 315
    .local v14, values:[Ljava/lang/Object;
    aget-object v1, v14, v2

    if-nez v1, :cond_55

    move-object v9, v13

    .line 317
    .local v9, issuerUniqueID:[Z
    :goto_14
    aget-object v1, v14, v3

    if-nez v1, :cond_5f

    move-object v10, v13

    .line 319
    .local v10, subjectUniqueID:[Z
    :goto_19
    new-instance v1, Lorg/apache/harmony/security/x509/TBSCertificate;

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    aget-object p0, v14, v4

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v3, p0}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v4, 0x2

    aget-object v4, v14, v4

    check-cast v4, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v5, 0x3

    aget-object v5, v14, v5

    check-cast v5, Lorg/apache/harmony/security/x501/Name;

    const/4 v6, 0x4

    aget-object v6, v14, v6

    check-cast v6, Lorg/apache/harmony/security/x509/Validity;

    const/4 v7, 0x5

    aget-object v7, v14, v7

    check-cast v7, Lorg/apache/harmony/security/x501/Name;

    const/4 v8, 0x6

    aget-object v8, v14, v8

    check-cast v8, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    const/16 v11, 0x9

    aget-object v11, v14, v11

    check-cast v11, Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v12

    invoke-direct/range {v1 .. v13}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate$1;)V

    return-object v1

    .line 315
    .end local v9           #issuerUniqueID:[Z
    .end local v10           #subjectUniqueID:[Z
    :cond_55
    aget-object p0, v14, v2

    check-cast p0, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v1

    move-object v9, v1

    goto :goto_14

    .line 317
    .restart local v9       #issuerUniqueID:[Z
    :cond_5f
    aget-object p0, v14, v3

    check-cast p0, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v1

    move-object v10, v1

    goto :goto_19
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .parameter "object"
    .parameter "values"

    .prologue
    .line 335
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertificate;

    move-object v1, v0

    .line 336
    .local v1, tbs:Lorg/apache/harmony/security/x509/TBSCertificate;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->version:I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$100(Lorg/apache/harmony/security/x509/TBSCertificate;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 337
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$200(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 338
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$300(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, p2, v2

    .line 339
    const/4 v2, 0x3

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$400(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v3

    aput-object v3, p2, v2

    .line 340
    const/4 v2, 0x4

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$500(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;

    move-result-object v3

    aput-object v3, p2, v2

    .line 341
    const/4 v2, 0x5

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$600(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v3

    aput-object v3, p2, v2

    .line 342
    const/4 v2, 0x6

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$700(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v3

    aput-object v3, p2, v2

    .line 343
    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 344
    const/4 v2, 0x7

    new-instance v3, Lorg/apache/harmony/security/asn1/BitString;

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v3, p2, v2

    .line 346
    :cond_4f
    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v2

    if-eqz v2, :cond_62

    .line 347
    const/16 v2, 0x8

    new-instance v3, Lorg/apache/harmony/security/asn1/BitString;

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v3, p2, v2

    .line 349
    :cond_62
    const/16 v2, 0x9

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$1000(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v3

    aput-object v3, p2, v2

    .line 350
    return-void
.end method
