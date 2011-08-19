.class final Lorg/apache/harmony/security/pkcs7/SignerInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignerInfo;
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
    .line 160
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 164
    .local v1, issAndSerial:[Ljava/lang/Object;
    aget-object v2, v1, v3

    aput-object v2, p2, v3

    .line 165
    aget-object v2, v1, v4

    aput-object v2, p2, v4

    .line 166
    return-void
.end method
