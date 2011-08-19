.class public Ljava/io/OutputStreamWriter;
.super Ljava/io/Writer;
.source "OutputStreamWriter.java"


# instance fields
.field private bytes:Ljava/nio/ByteBuffer;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 56
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .parameter "out"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 45
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 77
    if-nez p2, :cond_13

    .line 78
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 80
    :cond_13
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 82
    :try_start_15
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_2e

    .line 86
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 87
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 88
    return-void

    .line 83
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .parameter "out"
    .parameter "cs"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 45
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 102
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 103
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 104
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 105
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V
    .registers 4
    .parameter "out"
    .parameter "enc"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 45
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 121
    iput-object p1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 122
    iput-object p2, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 123
    return-void
.end method

.method private checkStatus()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_c

    .line 174
    new-instance v0, Ljava/io/IOException;

    const-string v1, "OutputStreamWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_c
    return-void
.end method

.method private convert(Ljava/nio/CharBuffer;)V
    .registers 6
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 223
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 225
    .local v0, result:Ljava/nio/charset/CoderResult;
    :goto_9
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 226
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_19
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 229
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 230
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 231
    goto :goto_9

    .line 235
    :cond_2b
    return-void
.end method


# virtual methods
.method checkError()Z
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->checkError()Z

    move-result v0

    return v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v1, :cond_21

    .line 140
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 141
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 142
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 143
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 147
    :cond_21
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_3
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 163
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, position:I
    if-lez v0, :cond_24

    .line 164
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 165
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 166
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 168
    :cond_24
    iget-object v2, p0, Ljava/io/OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    .end local v0           #position:I
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_6

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/io/OutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->getHistoricalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public write(I)V
    .registers 7
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_3
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 252
    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    int-to-char v4, p1

    aput-char v4, v2, v3

    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 253
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    .end local v0           #chars:Ljava/nio/CharBuffer;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public write(Ljava/lang/String;II)V
    .registers 8
    .parameter "str"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    if-gez p3, :cond_e

    .line 281
    :try_start_5
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v2

    .line 292
    :catchall_b
    move-exception v2

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v2

    .line 283
    :cond_e
    if-nez p1, :cond_18

    .line 284
    :try_start_10
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "str == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_18
    or-int v2, p2, p3

    if-ltz v2, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_29

    .line 287
    :cond_23
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v2

    .line 289
    :cond_29
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 290
    add-int v2, p3, p2

    invoke-static {p1, p2, v2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 291
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 292
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_b

    .line 293
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v1, p0, Ljava/io/OutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_3
    invoke-direct {p0}, Ljava/io/OutputStreamWriter;->checkStatus()V

    .line 216
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 217
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 218
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-direct {p0, v0}, Ljava/io/OutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    .end local v0           #chars:Ljava/nio/CharBuffer;
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v2
.end method
