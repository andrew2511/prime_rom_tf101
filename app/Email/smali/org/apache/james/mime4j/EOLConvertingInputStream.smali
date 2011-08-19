.class public Lorg/apache/james/mime4j/EOLConvertingInputStream;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# instance fields
.field private flags:I

.field private in:Ljava/io/PushbackInputStream;

.field private previous:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 56
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "flags"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    .line 69
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 70
    iput p2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    .line 71
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 80
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    const/4 v4, -0x1

    const/16 v3, 0xa

    .line 86
    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 88
    .local v0, b:I
    if-ne v0, v4, :cond_0

    move v2, v4

    .line 107
    :goto_0
    return v2

    .line 92
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    if-ne v0, v5, :cond_3

    .line 93
    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 94
    .local v1, c:I
    if-eq v1, v4, :cond_1

    .line 95
    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 97
    :cond_1
    if-eq v1, v3, :cond_2

    .line 98
    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 105
    .end local v1           #c:I
    :cond_2
    :goto_1
    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    move v2, v0

    .line 107
    goto :goto_0

    .line 100
    :cond_3
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_2

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    if-eq v2, v5, :cond_2

    .line 101
    const/16 v0, 0xd

    .line 102
    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1
.end method
