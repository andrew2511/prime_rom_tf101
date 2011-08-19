.class final Lorg/apache/harmony/security/x509/PolicyConstraints$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PolicyConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/PolicyConstraints;
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
    .line 146
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;->setOptional(I)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;->setOptional(I)V

    .line 150
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 9
    .parameter "in"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 154
    .local v3, values:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 155
    .local v2, requireExplicitPolicy:Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 156
    .local v1, inhibitPolicyMapping:Ljava/math/BigInteger;
    aget-object v4, v3, v5

    if-eqz v4, :cond_1b

    .line 157
    new-instance v2, Ljava/math/BigInteger;

    .end local v2           #requireExplicitPolicy:Ljava/math/BigInteger;
    aget-object p0, v3, v5

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 159
    .restart local v2       #requireExplicitPolicy:Ljava/math/BigInteger;
    :cond_1b
    aget-object v4, v3, v6

    if-eqz v4, :cond_2a

    .line 160
    new-instance v1, Ljava/math/BigInteger;

    .end local v1           #inhibitPolicyMapping:Ljava/math/BigInteger;
    aget-object p0, v3, v6

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 162
    .restart local v1       #inhibitPolicyMapping:Ljava/math/BigInteger;
    :cond_2a
    new-instance v4, Lorg/apache/harmony/security/x509/PolicyConstraints;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v2, v1, v5, v6}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLorg/apache/harmony/security/x509/PolicyConstraints$1;)V

    return-object v4
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 169
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    move-object v1, v0

    .line 171
    .local v1, pc:Lorg/apache/harmony/security/x509/PolicyConstraints;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/PolicyConstraints;->access$100(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 172
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/PolicyConstraints;->access$200(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 173
    return-void
.end method
