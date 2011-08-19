.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# instance fields
.field protected lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_b

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_b
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mark(I)V
    .registers 3
    .parameter "readLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 124
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    const/4 v2, 0x1

    :try_start_5
    new-array v0, v2, [C

    .line 126
    .local v0, charArray:[C
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-eq v2, v4, :cond_15

    .line 127
    const/4 v2, 0x0

    aget-char v2, v0, v2

    monitor-exit v1

    move v1, v2

    .line 129
    :goto_14
    return v1

    :cond_15
    monitor-exit v1

    move v1, v4

    goto :goto_14

    .line 130
    .end local v0           #charArray:[C
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    .line 265
    .local v1, length:I
    new-array v0, v1, [C

    .line 266
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 267
    if-lez v1, :cond_14

    .line 268
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 270
    :cond_14
    return v1
.end method

.method public read([C)I
    .registers 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 15
    .parameter "charCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gez v7, :cond_1f

    .line 226
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "charCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 228
    :cond_1f
    iget-object v7, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 229
    const-wide/16 v2, 0x0

    .line 230
    .local v2, skipped:J
    const-wide/16 v8, 0x200

    cmp-long v8, p1, v8

    if-gez v8, :cond_3d

    long-to-int v8, p1

    move v6, v8

    .line 231
    .local v6, toRead:I
    :goto_2c
    :try_start_2c
    new-array v0, v6, [C

    .line 232
    .local v0, charsSkipped:[C
    :cond_2e
    :goto_2e
    cmp-long v8, v2, p1

    if-gez v8, :cond_53

    .line 233
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 234
    .local v1, read:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_41

    .line 235
    monitor-exit v7

    move-wide v4, v2

    .line 245
    .end local v1           #read:I
    .end local v2           #skipped:J
    .local v4, skipped:J
    :goto_3c
    return-wide v4

    .line 230
    .end local v0           #charsSkipped:[C
    .end local v4           #skipped:J
    .end local v6           #toRead:I
    .restart local v2       #skipped:J
    :cond_3d
    const/16 v8, 0x200

    move v6, v8

    goto :goto_2c

    .line 237
    .restart local v0       #charsSkipped:[C
    .restart local v1       #read:I
    .restart local v6       #toRead:I
    :cond_41
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 238
    if-ge v1, v6, :cond_48

    .line 239
    monitor-exit v7

    move-wide v4, v2

    .end local v2           #skipped:J
    .restart local v4       #skipped:J
    goto :goto_3c

    .line 241
    .end local v4           #skipped:J
    .restart local v2       #skipped:J
    :cond_48
    sub-long v8, p1, v2

    int-to-long v10, v6

    cmp-long v8, v8, v10

    if-gez v8, :cond_2e

    .line 242
    sub-long v8, p1, v2

    long-to-int v6, v8

    goto :goto_2e

    .line 245
    .end local v1           #read:I
    :cond_53
    monitor-exit v7

    move-wide v4, v2

    .end local v2           #skipped:J
    .restart local v4       #skipped:J
    goto :goto_3c

    .line 246
    .end local v0           #charsSkipped:[C
    .end local v4           #skipped:J
    .restart local v2       #skipped:J
    :catchall_56
    move-exception v8

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_56

    throw v8
.end method
