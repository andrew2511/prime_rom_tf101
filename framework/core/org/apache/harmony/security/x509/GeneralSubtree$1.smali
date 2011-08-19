.class final Lorg/apache/harmony/security/x509/GeneralSubtree$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "GeneralSubtree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralSubtree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 5
    .parameter "x0"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 152
    new-array v0, v2, [B

    aput-byte v1, v0, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;->setDefault(Ljava/lang/Object;I)V

    .line 153
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/GeneralSubtree$1;->setOptional(I)V

    .line 154
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x2

    .line 157
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 158
    .local v2, values:[Ljava/lang/Object;
    const/4 v1, -0x1

    .line 159
    .local v1, maximum:I
    aget-object v3, v2, v4

    if-eqz v3, :cond_14

    .line 160
    aget-object v3, v2, v4

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    .line 162
    :cond_14
    new-instance v3, Lorg/apache/harmony/security/x509/GeneralSubtree;

    const/4 v4, 0x0

    aget-object p0, v2, v4

    check-cast p0, Lorg/apache/harmony/security/x509/GeneralName;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v3, p0, v4, v1}, Lorg/apache/harmony/security/x509/GeneralSubtree;-><init>(Lorg/apache/harmony/security/x509/GeneralName;II)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 169
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    move-object v1, v0

    .line 171
    .local v1, gs:Lorg/apache/harmony/security/x509/GeneralSubtree;
    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->base:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$000(Lorg/apache/harmony/security/x509/GeneralSubtree;)Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v3

    aput-object v3, p2, v2

    .line 172
    const/4 v2, 0x1

    #getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->minimum:I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$100(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 173
    #getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$200(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_28

    .line 174
    const/4 v2, 0x2

    #getter for: Lorg/apache/harmony/security/x509/GeneralSubtree;->maximum:I
    invoke-static {v1}, Lorg/apache/harmony/security/x509/GeneralSubtree;->access$200(Lorg/apache/harmony/security/x509/GeneralSubtree;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 176
    :cond_28
    return-void
.end method
