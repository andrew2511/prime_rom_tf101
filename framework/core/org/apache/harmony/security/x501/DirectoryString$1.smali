.class final Lorg/apache/harmony/security/x501/DirectoryString$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "DirectoryString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/DirectoryString;
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
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "object"

    .prologue
    .line 63
    return-object p1
.end method
