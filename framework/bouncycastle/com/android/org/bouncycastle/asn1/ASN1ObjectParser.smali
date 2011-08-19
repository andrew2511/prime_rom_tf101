.class public Lcom/android/org/bouncycastle/asn1/ASN1ObjectParser;
.super Ljava/lang/Object;
.source "ASN1ObjectParser.java"


# instance fields
.field _aIn:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method protected constructor <init>(IILjava/io/InputStream;)V
    .registers 5
    .parameter "baseTag"
    .parameter "tagNumber"
    .parameter "contentStream"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectParser;->_aIn:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 18
    return-void
.end method
