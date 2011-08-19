.class public Lorg/apache/http/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private contentLength:J

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;J)V
    .locals 3
    .parameter "in"
    .parameter "contentLength"

    .prologue
    const-wide/16 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 65
    iput-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    cmp-long v0, p2, v1

    if-gez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 92
    iput-wide p2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    .line 93
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 103
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v1, :cond_1

    .line 105
    const/16 v1, 0x800

    :try_start_0
    new-array v0, v1, [B

    .line 106
    .local v0, buffer:[B
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    .line 111
    iput-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    .line 114
    .end local v0           #buffer:[B
    :cond_1
    return-void

    .line 111
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 129
    const/4 v0, -0x1

    .line 132
    :goto_0
    return v0

    .line 131
    :cond_1
    iget-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    .line 132
    iget-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 153
    const/4 v1, -0x1

    .line 161
    :goto_0
    return v1

    .line 156
    :cond_1
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 157
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int p3, v1

    .line 159
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 160
    .local v0, count:I
    iget-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    move v1, v0

    .line 161
    goto :goto_0
.end method

.method public skip(J)J
    .locals 12
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 185
    cmp-long v6, p1, v10

    if-gtz v6, :cond_0

    move-wide v6, v10

    .line 202
    :goto_0
    return-wide v6

    .line 188
    :cond_0
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 191
    .local v0, buffer:[B
    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v8, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v6, v8

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 193
    .local v4, remaining:J
    const-wide/16 v1, 0x0

    .line 194
    .local v1, count:J
    :goto_1
    cmp-long v6, v4, v10

    if-lez v6, :cond_1

    .line 195
    const/4 v6, 0x0

    const-wide/16 v7, 0x800

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p0, v0, v6, v7}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v3

    .line 196
    .local v3, l:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .end local v3           #l:I
    :cond_1
    move-wide v6, v1

    .line 202
    goto :goto_0

    .line 199
    .restart local v3       #l:I
    :cond_2
    int-to-long v6, v3

    add-long/2addr v1, v6

    .line 200
    int-to-long v6, v3

    sub-long/2addr v4, v6

    .line 201
    goto :goto_1
.end method
