.class public Lcom/android/org/bouncycastle/asn1/DERExternalParser;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DEREncodable;


# instance fields
.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .parameter "parser"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 16
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 28
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERExternal;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_16

    return-object v1

    .line 30
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 32
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 34
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 36
    .local v0, ioe:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method
