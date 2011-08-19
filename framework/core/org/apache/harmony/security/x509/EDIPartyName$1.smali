.class final Lorg/apache/harmony/security/x509/EDIPartyName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EDIPartyName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/EDIPartyName;
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
    .line 119
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/EDIPartyName$1;->setOptional(I)V

    .line 122
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 8
    .parameter "in"

    .prologue
    .line 125
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 126
    .local v1, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/EDIPartyName;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Lorg/apache/harmony/security/x509/EDIPartyName;-><init>(Ljava/lang/String;Ljava/lang/String;[BLorg/apache/harmony/security/x509/EDIPartyName$1;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 131
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/EDIPartyName;

    move-object v1, v0

    .line 132
    .local v1, epn:Lorg/apache/harmony/security/x509/EDIPartyName;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/EDIPartyName;->nameAssigner:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/EDIPartyName;->access$100(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    .line 133
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/EDIPartyName;->partyName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/EDIPartyName;->access$200(Lorg/apache/harmony/security/x509/EDIPartyName;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    .line 134
    return-void
.end method
