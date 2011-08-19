.class public Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;
.super Ljava/lang/Object;
.source "BEROctetStringParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectParser;)V
    .registers 3
    .parameter "parser"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectParser;->_aIn:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .parameter "parser"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 17
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 37
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 39
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 41
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method
