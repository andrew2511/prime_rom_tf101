.class Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 3
    .parameter "parser"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 18
    return-void
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 73
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v2, :cond_20

    .line 75
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v2, :cond_b

    move v2, v3

    .line 105
    :goto_a
    return v2

    .line 80
    :cond_b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 82
    .local v1, s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_17

    move v2, v3

    .line 84
    goto :goto_a

    .line 87
    :cond_17
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 88
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 93
    .end local v1           #s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 95
    .local v0, b:I
    if-ltz v0, :cond_2a

    move v2, v0

    .line 97
    goto :goto_a

    .line 100
    :cond_2a
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 102
    .restart local v1       #s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_39

    .line 104
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    move v2, v3

    .line 105
    goto :goto_a

    .line 108
    :cond_39
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_20
.end method

.method public read([BII)I
    .registers 12
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 22
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v4, :cond_20

    .line 24
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v4, :cond_b

    move v4, v7

    .line 62
    :goto_a
    return v4

    .line 29
    :cond_b
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 31
    .local v2, s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v2, :cond_17

    move v4, v7

    .line 33
    goto :goto_a

    .line 36
    :cond_17
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 37
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 40
    .end local v2           #s:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_20
    const/4 v3, 0x0

    .line 44
    .local v3, totalRead:I
    :cond_21
    :goto_21
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v5, p2, v3

    sub-int v6, p3, v3

    invoke-virtual {v4, p1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 46
    .local v1, numRead:I
    if-ltz v1, :cond_32

    .line 48
    add-int/2addr v3, v1

    .line 50
    if-ne v3, p3, :cond_21

    move v4, v3

    .line 52
    goto :goto_a

    .line 57
    :cond_32
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 59
    .local v0, aos:Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_46

    .line 61
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 62
    const/4 v4, 0x1

    if-ge v3, v4, :cond_44

    move v4, v7

    goto :goto_a

    :cond_44
    move v4, v3

    goto :goto_a

    .line 65
    :cond_46
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_21
.end method
