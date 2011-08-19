.class public Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;
.super Lcom/amazon/topaz/internal/binxml/Deserializer;
.source "InputStreamDeserializer.java"


# instance fields
.field private final input:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/topaz/internal/binxml/Deserializer;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->input:Ljava/io/InputStream;

    .line 29
    return-void
.end method


# virtual methods
.method public readBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readInt()I

    move-result v1

    .line 62
    .local v1, size:I
    new-array v0, v1, [B

    .line 63
    .local v0, b:[B
    iget-object v2, p0, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 64
    sget-object v2, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readBytesEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    throw v2

    .line 66
    :cond_0
    return-object v0
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->input:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 38
    .local v0, c:I
    const/16 v3, 0xff

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 39
    .local v1, negative:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 40
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->input:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 42
    :cond_0
    if-gez v0, :cond_2

    sget-object v3, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readIntEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    throw v3

    .line 38
    .end local v1           #negative:Z
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 43
    .restart local v1       #negative:Z
    :cond_2
    and-int/lit8 v2, v0, 0x7f

    .line 44
    .local v2, value:I
    :goto_1
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_4

    .line 45
    iget-object v3, p0, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->input:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 46
    if-gez v0, :cond_3

    sget-object v3, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->readIntEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    throw v3

    .line 47
    :cond_3
    shl-int/lit8 v3, v2, 0x7

    and-int/lit8 v4, v0, 0x7f

    or-int v2, v3, v4

    goto :goto_1

    .line 49
    :cond_4
    if-eqz v1, :cond_5

    .line 50
    neg-int v2, v2

    .line 52
    :cond_5
    return v2
.end method

.method public final skipSentinel(I)V
    .locals 4
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/BinXMLSentinelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/InputStreamDeserializer;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 77
    .local v0, c:I
    if-eq v0, p1, :cond_0

    .line 78
    new-instance v1, Lcom/amazon/topaz/exception/BinXMLSentinelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/exception/BinXMLSentinelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    return-void
.end method
