.class final Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TSTInfo;
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
    .line 256
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 258
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    .line 259
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setDefault(Ljava/lang/Object;I)V

    .line 260
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    .line 261
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    .line 262
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    .line 263
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 15
    .parameter "in"

    .prologue
    const/4 v2, 0x7

    .line 266
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v12, v0

    .line 268
    .local v12, values:[Ljava/lang/Object;
    aget-object v1, v12, v2

    if-nez v1, :cond_57

    const/4 v1, 0x0

    move-object v9, v1

    .line 271
    .local v9, nonce:Ljava/math/BigInteger;
    :goto_f
    new-instance v1, Lorg/apache/harmony/security/x509/tsp/TSTInfo;

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    aget-object p0, v12, v3

    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v12, v4

    check-cast v4, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x3

    aget-object p0, v12, v6

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v5, p0}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v6, 0x4

    aget-object v6, v12, v6

    check-cast v6, Ljava/util/Date;

    const/4 v7, 0x5

    aget-object p0, v12, v7

    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    move-object v7, v0

    const/4 v8, 0x6

    aget-object v8, v12, v8

    check-cast v8, Ljava/lang/Boolean;

    const/16 v10, 0x8

    aget-object v10, v12, v10

    check-cast v10, Lorg/apache/harmony/security/x509/GeneralName;

    const/16 v11, 0x9

    aget-object v11, v12, v11

    check-cast v11, Lorg/apache/harmony/security/x509/Extensions;

    invoke-direct/range {v1 .. v11}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;-><init>(ILjava/lang/String;Lorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/math/BigInteger;Ljava/util/Date;[ILjava/lang/Boolean;Ljava/math/BigInteger;Lorg/apache/harmony/security/x509/GeneralName;Lorg/apache/harmony/security/x509/Extensions;)V

    return-object v1

    .line 268
    .end local v9           #nonce:Ljava/math/BigInteger;
    :cond_57
    new-instance v1, Ljava/math/BigInteger;

    aget-object p0, v12, v2

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>([B)V

    move-object v9, v1

    goto :goto_f
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 285
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;

    move-object v1, v0

    .line 287
    .local v1, info:Lorg/apache/harmony/security/x509/tsp/TSTInfo;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$000(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 288
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$100(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v3

    aput-object v3, p2, v2

    .line 289
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    move-result-object v3

    aput-object v3, p2, v2

    .line 290
    const/4 v2, 0x3

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$300(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 291
    const/4 v2, 0x4

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$400(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/util/Date;

    move-result-object v3

    aput-object v3, p2, v2

    .line 292
    const/4 v2, 0x5

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$500(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)[I

    move-result-object v3

    aput-object v3, p2, v2

    .line 293
    const/4 v2, 0x6

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$600(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p2, v2

    .line 294
    const/4 v2, 0x7

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$700(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_5c

    const/4 v3, 0x0

    :goto_49
    aput-object v3, p2, v2

    .line 295
    const/16 v2, 0x8

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$800(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v3

    aput-object v3, p2, v2

    .line 296
    const/16 v2, 0x9

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$900(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v3

    aput-object v3, p2, v2

    .line 297
    return-void

    .line 294
    :cond_5c
    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$700(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_49
.end method
