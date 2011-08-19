.class final Lorg/apache/harmony/security/x509/Validity$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Validity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Validity;
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
    .line 94
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .parameter "in"

    .prologue
    .line 97
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 98
    .local v1, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/Validity;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    check-cast p0, Ljava/util/Date;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Date;

    invoke-direct {v3, p0, v2}, Lorg/apache/harmony/security/x509/Validity;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 103
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Validity;

    move-object v1, v0

    .line 105
    .local v1, validity:Lorg/apache/harmony/security/x509/Validity;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/Validity;->access$000(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;

    move-result-object v3

    aput-object v3, p2, v2

    .line 106
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/Validity;->access$100(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;

    move-result-object v3

    aput-object v3, p2, v2

    .line 107
    return-void
.end method
