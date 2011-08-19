.class public Ljava/io/CharArrayWriter;
.super Ljava/io/Writer;
.source "CharArrayWriter.java"


# instance fields
.field protected buf:[C

.field protected count:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 49
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 50
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "initialSize"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 65
    if-gez p1, :cond_d

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_d
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    .line 69
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private expand(I)V
    .registers 7
    .parameter "i"

    .prologue
    const/4 v4, 0x0

    .line 82
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v2, p1

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    if-gt v2, v3, :cond_a

    .line 90
    :goto_9
    return-void

    .line 86
    :cond_a
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 87
    .local v0, newLen:I
    new-array v1, v0, [C

    .line 88
    .local v1, newbuf:[C
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    goto :goto_9
.end method


# virtual methods
.method public append(C)Ljava/io/CharArrayWriter;
    .registers 2
    .parameter "c"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 255
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;
    .registers 4
    .parameter "csq"

    .prologue
    .line 270
    if-nez p1, :cond_4

    .line 271
    const-string p1, "null"

    .line 273
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    .line 274
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;
    .registers 7
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 302
    if-nez p1, :cond_4

    .line 303
    const-string p1, "null"

    .line 305
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, output:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    .line 307
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public size()I
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    monitor-exit v0

    return v1

    .line 121
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public toCharArray()[C
    .registers 7

    .prologue
    .line 132
    iget-object v1, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_3
    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    new-array v0, v2, [C

    .line 134
    .local v0, result:[C
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    monitor-exit v1

    return-object v0

    .line 136
    .end local v0           #result:[C
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 148
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v1

    .line 150
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public write(I)V
    .registers 6
    .parameter "oneChar"

    .prologue
    .line 187
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 189
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8
    .parameter "str"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 206
    if-nez p1, :cond_a

    .line 207
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "str == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_a
    or-int v0, p2, p3

    if-ltz v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_1b

    .line 216
    :cond_15
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 219
    :cond_1b
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_1e
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 221
    add-int v1, p2, p3

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 222
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 223
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw v1
.end method

.method public write([CII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 169
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 170
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_7
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    .line 172
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/CharArrayWriter;->count:I

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public writeTo(Ljava/io/Writer;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Ljava/io/CharArrayWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 241
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
