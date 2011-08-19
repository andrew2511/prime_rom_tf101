.class final Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;
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
    .registers 3
    .parameter "x0"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    .line 217
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    .line 218
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 9
    .parameter "in"

    .prologue
    const/4 v6, 0x3

    .line 221
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 223
    .local v3, values:[Ljava/lang/Object;
    new-array v1, v6, [I

    .line 224
    .local v1, accuracy:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v6, :cond_44

    .line 225
    aget-object v4, v3, v2

    if-eqz v4, :cond_41

    .line 226
    aget-object v4, v3, v2

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    aput v4, v1, v2

    .line 227
    if-lez v2, :cond_41

    aget v4, v1, v2

    if-ltz v4, :cond_26

    aget v4, v1, v2

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_41

    .line 228
    :cond_26
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time-stamp accuracy value is incorrect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 232
    :cond_44
    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9
    .parameter "object"
    .parameter "values"

    .prologue
    .line 236
    check-cast p1, [I

    .end local p1
    move-object v0, p1

    check-cast v0, [I

    move-object v1, v0

    .line 237
    .local v1, accuracy:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    const/4 v3, 0x3

    if-ge v2, v3, :cond_41

    .line 238
    if-lez v2, :cond_31

    aget v3, v1, v2

    if-ltz v3, :cond_16

    aget v3, v1, v2

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_31

    .line 239
    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time-stamp accuracy value is incorrect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_31
    aget v3, v1, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 243
    :cond_41
    return-void
.end method
