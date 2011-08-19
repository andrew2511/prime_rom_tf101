.class public Lorg/apache/james/mime4j/MimeBoundaryInputStream;
.super Ljava/io/InputStream;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private boundary:[B

.field private eof:Z

.field private first:Z

.field private moreParts:Z

.field private parenteof:Z

.field private s:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    .line 40
    iput-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    .line 41
    iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    .line 42
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    .line 43
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 44
    iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 54
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    .line 58
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 59
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    .line 67
    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 68
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 70
    :cond_1
    return-void
.end method

.method private matchBoundary()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2d

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 149
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 150
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 151
    .local v0, b:I
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v5, v5, v2

    if-eq v0, v5, :cond_2

    .line 152
    if-eq v0, v7, :cond_0

    .line 153
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 155
    :cond_0
    sub-int v3, v2, v6

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_1

    .line 156
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    iget-object v6, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 155
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    move v5, v8

    .line 182
    .end local v0           #b:I
    .end local v3           #j:I
    :goto_2
    return v5

    .line 149
    .restart local v0       #b:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0           #b:I
    :cond_3
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 166
    .local v4, prev:I
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 167
    .local v1, curr:I
    if-ne v4, v9, :cond_4

    if-eq v1, v9, :cond_7

    :cond_4
    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 169
    :cond_5
    const/16 v5, 0xa

    if-ne v1, v5, :cond_8

    const/16 v5, 0xd

    if-ne v4, v5, :cond_8

    .line 175
    :goto_4
    if-ne v1, v7, :cond_6

    .line 176
    iput-boolean v8, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 177
    iput-boolean v6, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 180
    :cond_6
    iput-boolean v6, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    move v5, v6

    .line 182
    goto :goto_2

    :cond_7
    move v5, v8

    .line 167
    goto :goto_3

    .line 172
    :cond_8
    move v4, v1

    .line 173
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_5

    goto :goto_4
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
    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 79
    return-void
.end method

.method public consume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 111
    return-void
.end method

.method public hasMoreParts()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    return v0
.end method

.method public parentEOF()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 117
    iget-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 144
    :goto_0
    return v2

    .line 121
    :cond_0
    iget-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    if-eqz v2, :cond_1

    .line 122
    iput-boolean v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    .line 123
    invoke-direct {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 124
    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 129
    .local v0, b1:I
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 131
    .local v1, b2:I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 132
    invoke-direct {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 133
    goto :goto_0

    .line 137
    :cond_2
    if-eq v1, v3, :cond_3

    .line 138
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 141
    :cond_3
    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 142
    iget-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    move v2, v0

    .line 144
    goto :goto_0

    :cond_4
    move v2, v4

    .line 141
    goto :goto_1
.end method
