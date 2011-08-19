.class final Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TimeStampReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
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
    .line 161
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 164
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setDefault(Ljava/lang/Object;I)V

    .line 165
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    .line 166
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    .line 167
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    .line 168
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 13
    .parameter "in"

    .prologue
    .line 171
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 173
    .local v10, values:[Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v1, v10, v1

    if-nez v1, :cond_38

    const/4 v1, 0x0

    move-object v4, v1

    .line 175
    .local v4, objID:Ljava/lang/String;
    :goto_f
    const/4 v1, 0x3

    aget-object v1, v10, v1

    if-nez v1, :cond_45

    const/4 v1, 0x0

    move-object v5, v1

    .line 178
    .local v5, nonce:Ljava/math/BigInteger;
    :goto_16
    const/4 v1, 0x5

    aget-object v1, v10, v1

    if-nez v1, :cond_53

    .line 179
    new-instance v1, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v10, v3

    check-cast v3, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    const/4 v6, 0x4

    aget-object v6, v10, v6

    check-cast v6, Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq$1;)V

    .line 189
    :goto_37
    return-object v1

    .line 173
    .end local v4           #objID:Ljava/lang/String;
    .end local v5           #nonce:Ljava/math/BigInteger;
    :cond_38
    const/4 v1, 0x2

    aget-object p0, v10, v1

    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_f

    .line 175
    .restart local v4       #objID:Ljava/lang/String;
    :cond_45
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x3

    aget-object p0, v10, v2

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v1

    goto :goto_16

    .line 189
    .restart local v5       #nonce:Ljava/math/BigInteger;
    :cond_53
    new-instance v1, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v10, v3

    check-cast v3, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    const/4 v6, 0x4

    aget-object v6, v10, v6

    check-cast v6, Ljava/lang/Boolean;

    const/4 v7, 0x5

    aget-object v7, v10, v7

    check-cast v7, Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq$1;)V

    goto :goto_37
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 202
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    move-object v1, v0

    .line 203
    .local v1, req:Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$100(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 204
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$200(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    move-result-object v3

    aput-object v3, p2, v2

    .line 205
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$300(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3e

    move-object v3, v4

    :goto_1f
    aput-object v3, p2, v2

    .line 207
    const/4 v2, 0x3

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$400(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_47

    move-object v3, v4

    :goto_29
    aput-object v3, p2, v2

    .line 208
    const/4 v2, 0x4

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$500(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_50

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_34
    aput-object v3, p2, v2

    .line 209
    const/4 v2, 0x5

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$600(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v3

    aput-object v3, p2, v2

    .line 210
    return-void

    .line 205
    :cond_3e
    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$300(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_1f

    .line 207
    :cond_47
    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$400(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_29

    .line 208
    :cond_50
    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$500(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_34
.end method
