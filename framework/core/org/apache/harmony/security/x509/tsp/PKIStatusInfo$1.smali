.class final Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PKIStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
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
    .line 97
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    .line 100
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    .line 101
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"

    .prologue
    const/4 v6, 0x2

    .line 120
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 122
    .local v4, values:[Ljava/lang/Object;
    const/4 v2, -0x1

    .line 123
    .local v2, failInfoValue:I
    aget-object v5, v4, v6

    if-eqz v5, :cond_1f

    .line 124
    aget-object p0, v4, v6

    check-cast p0, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v1

    .line 125
    .local v1, failInfoBoolArray:[Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    array-length v5, v1

    if-ge v3, v5, :cond_1f

    .line 126
    aget-boolean v5, v1, v3

    if-eqz v5, :cond_39

    .line 127
    move v2, v3

    .line 132
    .end local v1           #failInfoBoolArray:[Z
    .end local v3           #i:I
    :cond_1f
    new-instance v5, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v6

    const/4 v7, 0x1

    aget-object p0, v4, v7

    check-cast p0, Ljava/util/List;

    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v7

    invoke-direct {v5, v6, p0, v7}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;-><init>(Lorg/apache/harmony/security/x509/tsp/PKIStatus;Ljava/util/List;Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;)V

    return-object v5

    .line 125
    .restart local v1       #failInfoBoolArray:[Z
    .restart local v3       #i:I
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 11
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 104
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    move-object v2, v0

    .line 105
    .local v2, psi:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    const/4 v3, 0x0

    #getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$000(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getStatus()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    aput-object v4, p2, v3

    .line 107
    #getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;
    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$100(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v6

    .line 108
    #getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 110
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getMaxValue()I

    move-result v3

    new-array v1, v3, [Z

    .line 112
    .local v1, failInfoBoolArray:[Z
    #getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getValue()I

    move-result v3

    aput-boolean v6, v1, v3

    .line 113
    new-instance v3, Lorg/apache/harmony/security/asn1/BitString;

    invoke-direct {v3, v1}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v3, p2, v7

    .line 117
    .end local v1           #failInfoBoolArray:[Z
    :goto_3d
    return-void

    .line 115
    :cond_3e
    const/4 v3, 0x0

    aput-object v3, p2, v7

    goto :goto_3d
.end method
