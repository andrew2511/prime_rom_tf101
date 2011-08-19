.class final Lorg/apache/harmony/security/x509/Time$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Time;
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
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/Object;)I
    .registers 6
    .parameter "object"

    .prologue
    .line 53
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x24bce5cf000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "object"

    .prologue
    .line 61
    return-object p1
.end method
