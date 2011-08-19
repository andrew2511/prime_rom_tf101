.class public Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuotedPrintableInputStream"


# instance fields
.field byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 46
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 47
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 50
    iput-object p1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    .line 51
    return-void
.end method

.method private asciiCharToNumericValue(B)B
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 210
    if-lt p1, v1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 211
    sub-int v0, p1, v1

    int-to-byte v0, v0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    if-lt p1, v2, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    .line 213
    sub-int v0, p1, v2

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 214
    :cond_1
    if-lt p1, v3, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    .line 215
    sub-int v0, p1, v3

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 221
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0xd

    const/16 v7, 0x3d

    const/4 v6, 0x0

    const-string v8, "QuotedPrintableInputStream"

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, msdChar:B
    :goto_0
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_0

    .line 125
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 126
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->populatePushbackQueue()V

    .line 127
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 202
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 133
    .local v0, b:B
    iget-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    packed-switch v4, :pswitch_data_0

    .line 196
    const-string v4, "QuotedPrintableInputStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 198
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 135
    :pswitch_0
    if-eq v0, v7, :cond_2

    .line 136
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v4, 0x1

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 143
    :pswitch_1
    if-ne v0, v9, :cond_3

    .line 144
    const/4 v4, 0x2

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 146
    :cond_3
    if-lt v0, v10, :cond_4

    const/16 v4, 0x39

    if-le v0, v4, :cond_6

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x46

    if-le v0, v4, :cond_6

    :cond_5
    const/16 v4, 0x61

    if-lt v0, v4, :cond_7

    const/16 v4, 0x66

    if-gt v0, v4, :cond_7

    .line 148
    :cond_6
    const/4 v4, 0x3

    iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 149
    move v3, v0

    .line 150
    goto :goto_0

    .line 151
    :cond_7
    if-ne v0, v7, :cond_8

    .line 156
    const-string v4, "QuotedPrintableInputStream"

    const-string v4, "Malformed MIME; got =="

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v7}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 160
    :cond_8
    const-string v4, "QuotedPrintableInputStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 162
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v7}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 163
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 167
    :pswitch_2
    const/16 v4, 0xa

    if-ne v0, v4, :cond_9

    .line 168
    iput-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    .line 171
    :cond_9
    const-string v4, "QuotedPrintableInputStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed MIME; expected 10, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 173
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v7}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 174
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v9}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 175
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 180
    :pswitch_3
    if-lt v0, v10, :cond_a

    const/16 v4, 0x39

    if-le v0, v4, :cond_c

    :cond_a
    const/16 v4, 0x41

    if-lt v0, v4, :cond_b

    const/16 v4, 0x46

    if-le v0, v4, :cond_c

    :cond_b
    const/16 v4, 0x61

    if-lt v0, v4, :cond_d

    const/16 v4, 0x66

    if-gt v0, v4, :cond_d

    .line 182
    :cond_c
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v2

    .line 183
    .local v2, msd:B
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v1

    .line 184
    .local v1, low:B
    iput-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 185
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 188
    .end local v1           #low:B
    .end local v2           #msd:B
    :cond_d
    const-string v4, "QuotedPrintableInputStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B

    .line 190
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v7}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 191
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 192
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populatePushbackQueue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 100
    .local v0, i:I
    :sswitch_0
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 92
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 93
    .restart local v0       #i:I
    sparse-switch v0, :sswitch_data_0

    .line 108
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 96
    :sswitch_1
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V

    goto :goto_0

    .line 104
    :sswitch_2
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V

    .line 105
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
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
    .line 59
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 60
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->fillBuffer()V

    .line 64
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, -0x1

    .line 71
    :goto_0
    return v1

    .line 67
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 68
    .local v0, val:B
    if-ltz v0, :cond_1

    move v1, v0

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    and-int/lit16 v1, v0, 0xff

    goto :goto_0
.end method
