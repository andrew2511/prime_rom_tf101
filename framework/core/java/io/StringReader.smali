.class public Ljava/io/StringReader;
.super Ljava/io/Reader;
.source "StringReader.java"


# instance fields
.field private count:I

.field private markpos:I

.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/StringReader;->markpos:I

    .line 47
    iput-object p1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringReader;->count:I

    .line 49
    return-void
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "StringReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_e
    return-void
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public mark(I)V
    .registers 4
    .parameter "readLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    if-gez p1, :cond_8

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_8
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_b
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 92
    iget v1, p0, Ljava/io/StringReader;->pos:I

    iput v1, p0, Ljava/io/StringReader;->markpos:I

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v1
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 127
    iget v1, p0, Ljava/io/StringReader;->pos:I

    iget v2, p0, Ljava/io/StringReader;->count:I

    if-eq v1, v2, :cond_1b

    .line 128
    iget-object v1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v2, p0, Ljava/io/StringReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/StringReader;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    monitor-exit v0

    move v0, v1

    .line 130
    :goto_1a
    return v0

    :cond_1b
    const/4 v1, -0x1

    monitor-exit v0

    move v0, v1

    goto :goto_1a

    .line 131
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public read([CII)I
    .registers 9
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 159
    array-length v3, p1

    invoke-static {v3, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 160
    if-nez p3, :cond_10

    .line 161
    const/4 v3, 0x0

    monitor-exit v2

    move v2, v3

    .line 170
    :goto_f
    return v2

    .line 163
    :cond_10
    iget v3, p0, Ljava/io/StringReader;->pos:I

    iget v4, p0, Ljava/io/StringReader;->count:I

    if-ne v3, v4, :cond_1a

    .line 164
    const/4 v3, -0x1

    monitor-exit v2

    move v2, v3

    goto :goto_f

    .line 166
    :cond_1a
    iget v3, p0, Ljava/io/StringReader;->pos:I

    add-int/2addr v3, p3

    iget v4, p0, Ljava/io/StringReader;->count:I

    if-le v3, v4, :cond_34

    iget v3, p0, Ljava/io/StringReader;->count:I

    move v0, v3

    .line 167
    .local v0, end:I
    :goto_24
    iget-object v3, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v4, p0, Ljava/io/StringReader;->pos:I

    invoke-virtual {v3, v4, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 168
    iget v3, p0, Ljava/io/StringReader;->pos:I

    sub-int v1, v0, v3

    .line 169
    .local v1, read:I
    iput v0, p0, Ljava/io/StringReader;->pos:I

    .line 170
    monitor-exit v2

    move v2, v1

    goto :goto_f

    .line 166
    .end local v0           #end:I
    .end local v1           #read:I
    :cond_34
    iget v3, p0, Ljava/io/StringReader;->pos:I

    add-int/2addr v3, p3

    move v0, v3

    goto :goto_24

    .line 171
    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 188
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 189
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 207
    iget v1, p0, Ljava/io/StringReader;->markpos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    iget v1, p0, Ljava/io/StringReader;->markpos:I

    :goto_d
    iput v1, p0, Ljava/io/StringReader;->pos:I

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 207
    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 208
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public skip(J)J
    .registers 8
    .parameter "charCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v2, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->checkNotClosed()V

    .line 236
    iget v3, p0, Ljava/io/StringReader;->pos:I

    neg-int v1, v3

    .line 237
    .local v1, minSkip:I
    iget v3, p0, Ljava/io/StringReader;->count:I

    iget v4, p0, Ljava/io/StringReader;->pos:I

    sub-int v0, v3, v4

    .line 239
    .local v0, maxSkip:I
    if-eqz v0, :cond_16

    int-to-long v3, v0

    cmp-long v3, p1, v3

    if-lez v3, :cond_20

    .line 240
    :cond_16
    int-to-long p1, v0

    .line 245
    :cond_17
    :goto_17
    iget v3, p0, Ljava/io/StringReader;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, p0, Ljava/io/StringReader;->pos:I

    .line 246
    monitor-exit v2

    return-wide p1

    .line 241
    :cond_20
    int-to-long v3, v1

    cmp-long v3, p1, v3

    if-gez v3, :cond_17

    .line 242
    int-to-long p1, v1

    goto :goto_17

    .line 247
    .end local v0           #maxSkip:I
    .end local v1           #minSkip:I
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v3
.end method
