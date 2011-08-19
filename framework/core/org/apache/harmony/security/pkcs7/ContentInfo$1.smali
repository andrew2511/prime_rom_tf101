.class final Lorg/apache/harmony/security/pkcs7/ContentInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/ContentInfo;
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
    .line 116
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;->setOptional(I)V

    .line 119
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 139
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 140
    .local v2, values:[Ljava/lang/Object;
    aget-object p0, v2, v5

    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    move-object v1, v0

    .line 141
    .local v1, oid:[I
    sget-object v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 142
    aget-object v3, v2, v7

    if-eqz v3, :cond_37

    .line 143
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aget-object p0, v2, v7

    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v1, v4, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V

    .line 156
    :goto_36
    return-object v3

    .line 147
    :cond_37
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object p0, v2, v5

    check-cast p0, [I

    check-cast p0, [I

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, p0, v6, v4, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V

    goto :goto_36

    .line 151
    :cond_47
    sget-object v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 152
    new-instance v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object p0, v2, v5

    check-cast p0, [I

    check-cast p0, [I

    sget-object v5, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aget-object v3, v2, v7

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, p0, v3, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V

    move-object v3, v4

    goto :goto_36

    .line 156
    :cond_6c
    new-instance v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object p0, v2, v5

    check-cast p0, [I

    check-cast p0, [I

    aget-object v3, v2, v7

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, p0, v3, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V

    move-object v3, v4

    goto :goto_36
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 122
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-object v1, v0

    .line 123
    .local v1, ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$000(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I

    move-result-object v3

    aput-object v3, p2, v2

    .line 124
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 125
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$000(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I

    move-result-object v2

    sget-object v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 126
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 127
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, p2, v4

    .line 136
    :cond_32
    :goto_32
    return-void

    .line 130
    :cond_33
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/harmony/security/pkcs7/SignedData;

    if-eqz v2, :cond_48

    .line 131
    sget-object v2, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, p2, v4

    goto :goto_32

    .line 133
    :cond_48
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v4

    goto :goto_32
.end method
