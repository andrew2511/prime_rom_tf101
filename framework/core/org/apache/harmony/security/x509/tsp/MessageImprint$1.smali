.class final Lorg/apache/harmony/security/x509/tsp/MessageImprint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "MessageImprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/MessageImprint;
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
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .parameter "in"

    .prologue
    .line 52
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 53
    .local v1, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    check-cast p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v3, p0, v2}, Lorg/apache/harmony/security/x509/tsp/MessageImprint;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 59
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    move-object v1, v0

    .line 60
    .local v1, mi:Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/tsp/MessageImprint;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->access$000(Lorg/apache/harmony/security/x509/tsp/MessageImprint;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    aput-object v3, p2, v2

    .line 61
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/tsp/MessageImprint;->hashedMessage:[B
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->access$100(Lorg/apache/harmony/security/x509/tsp/MessageImprint;)[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 62
    return-void
.end method
