.class final Lorg/apache/harmony/security/x509/Extension$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extension;
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
    .line 423
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 425
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;->setDefault(Ljava/lang/Object;I)V

    .line 426
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 429
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 431
    .local v10, values:[Ljava/lang/Object;
    aget-object p0, v10, v2

    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    move-object v9, v0

    .line 432
    .local v9, oid:[I
    aget-object p0, v10, v1

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, v2

    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v4, v0

    .line 433
    .local v4, extnValue:[B
    aget-object p0, v10, v1

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, v3

    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v5, v0

    .line 435
    .local v5, rawExtnValue:[B
    const/4 v7, 0x0

    .line 437
    .local v7, decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    #calls: Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z
    invoke-static {v9, v1}, Lorg/apache/harmony/security/x509/Extension;->access$000([I[I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 438
    new-instance v7, Lorg/apache/harmony/security/x509/KeyUsage;

    .end local v7           #decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    invoke-direct {v7, v4}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    .line 443
    .restart local v7       #decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    :cond_3d
    :goto_3d
    new-instance v1, Lorg/apache/harmony/security/x509/Extension;

    aget-object p0, v10, v2

    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    move-object v2, v0

    aget-object p0, v10, v3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension$1;)V

    return-object v1

    .line 439
    :cond_58
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    #calls: Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z
    invoke-static {v9, v1}, Lorg/apache/harmony/security/x509/Extension;->access$000([I[I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 440
    new-instance v7, Lorg/apache/harmony/security/x509/BasicConstraints;

    .end local v7           #decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    invoke-direct {v7, v4}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    .restart local v7       #decodedExtValue:Lorg/apache/harmony/security/x509/ExtensionValue;
    goto :goto_3d
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 451
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    move-object v1, v0

    .line 453
    .local v1, ext:Lorg/apache/harmony/security/x509/Extension;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/Extension;->extnID:[I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/Extension;->access$200(Lorg/apache/harmony/security/x509/Extension;)[I

    move-result-object v3

    aput-object v3, p2, v2

    .line 454
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/Extension;->critical:Z
    invoke-static {v1}, Lorg/apache/harmony/security/x509/Extension;->access$300(Lorg/apache/harmony/security/x509/Extension;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_14
    aput-object v3, p2, v2

    .line 455
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/x509/Extension;->extnValue:[B
    invoke-static {v1}, Lorg/apache/harmony/security/x509/Extension;->access$400(Lorg/apache/harmony/security/x509/Extension;)[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 456
    return-void

    .line 454
    :cond_1e
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_14
.end method
