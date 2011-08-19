.class public abstract Lcom/amazon/topaz/internal/binxml/Deserializer;
.super Ljava/lang/Object;
.source "Deserializer.java"


# static fields
.field protected static final readBytesEOF:Lcom/amazon/topaz/exception/EndOfFileException;

.field protected static final readIntEOF:Lcom/amazon/topaz/exception/EndOfFileException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/amazon/topaz/exception/EndOfFileException;

    const-string v1, "readInt"

    invoke-direct {v0, v1}, Lcom/amazon/topaz/exception/EndOfFileException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/binxml/Deserializer;->readIntEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    .line 20
    new-instance v0, Lcom/amazon/topaz/exception/EndOfFileException;

    const-string v1, "readBytes"

    invoke-direct {v0, v1}, Lcom/amazon/topaz/exception/EndOfFileException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/topaz/internal/binxml/Deserializer;->readBytesEOF:Lcom/amazon/topaz/exception/EndOfFileException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract readBytes()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation
.end method

.method public abstract readInt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation
.end method

.method public readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readBytes()[B

    move-result-object v1

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->ENCODING_UTF8:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final readVector()[I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/BinXMLSentinelException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/EndOfFileException;
        }
    .end annotation

    .prologue
    .line 82
    const/16 v7, 0x76

    invoke-virtual {p0, v7}, Lcom/amazon/topaz/internal/binxml/Deserializer;->skipSentinel(I)V

    .line 83
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v5

    .line 84
    .local v5, size:I
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v1

    .line 85
    .local v1, ftype:I
    shr-int/lit8 v7, v1, 0x1

    and-int/lit8 v0, v7, 0x7

    .line 86
    .local v0, differencing:I
    const/4 v4, 0x0

    .line 87
    .local v4, offset:I
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v4

    .line 90
    :cond_0
    new-array v6, v5, [I

    .line 91
    .local v6, values:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v7

    aput v7, v6, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    if-eqz v4, :cond_2

    .line 95
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 96
    aget v7, v6, v2

    sub-int/2addr v7, v4

    aput v7, v6, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_2
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 100
    const/4 v2, 0x1

    :goto_3
    if-ge v2, v5, :cond_3

    .line 101
    aget v7, v6, v2

    const/4 v8, 0x1

    sub-int v8, v2, v8

    aget v8, v6, v8

    add-int/2addr v7, v8

    aput v7, v6, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 99
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 104
    :cond_4
    return-object v6
.end method

.method public abstract skipSentinel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/BinXMLSentinelException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
