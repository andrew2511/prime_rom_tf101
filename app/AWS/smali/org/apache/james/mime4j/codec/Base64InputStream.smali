.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BASE64_DECODE:[I = null

.field private static final BASE64_PAD:B = 0x3dt

.field private static final ENCODED_BUFFER_SIZE:I = 0x600

.field private static final EOF:I = -0x1

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private closed:Z

.field private final encoded:[B

.field private eof:Z

.field private final in:Ljava/io/InputStream;

.field private position:I

.field private final q:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private final singleByte:[B

.field private size:I

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 31
    const-class v1, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    .line 32
    const-class v1, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    .line 36
    new-array v1, v3, [I

    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    .line 39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 40
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 41
    .restart local v0       #i:I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 42
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    aput v0, v1, v2

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 43
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .parameter "in"
    .parameter "strict"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    .line 54
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    .line 56
    const/16 v0, 0x600

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 57
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 58
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 60
    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    .line 73
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    .line 74
    return-void
.end method

.method private decodePad(II[BII)I
    .locals 6
    .parameter "data"
    .parameter "sextets"
    .parameter "buffer"
    .parameter "index"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 230
    iput-boolean v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 232
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 235
    ushr-int/lit8 v4, p1, 0x4

    int-to-byte v0, v4

    .line 236
    .local v0, b:B
    if-ge p4, p5, :cond_0

    .line 237
    add-int/lit8 v3, p4, 0x1

    .end local p4
    .local v3, index:I
    aput-byte v0, p3, p4

    move p4, v3

    .line 262
    .end local v0           #b:B
    .end local v3           #index:I
    .restart local p4
    :goto_0
    return p4

    .line 239
    .restart local v0       #b:B
    :cond_0
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 241
    .end local v0           #b:B
    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_4

    .line 244
    ushr-int/lit8 v4, p1, 0xa

    int-to-byte v1, v4

    .line 245
    .local v1, b1:B
    ushr-int/lit8 v4, p1, 0x2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 247
    .local v2, b2:B
    sub-int v4, p5, v5

    if-ge p4, v4, :cond_2

    .line 248
    add-int/lit8 v3, p4, 0x1

    .end local p4
    .restart local v3       #index:I
    aput-byte v1, p3, p4

    .line 249
    add-int/lit8 p4, v3, 0x1

    .end local v3           #index:I
    .restart local p4
    aput-byte v2, p3, v3

    goto :goto_0

    .line 250
    :cond_2
    if-ge p4, p5, :cond_3

    .line 251
    add-int/lit8 v3, p4, 0x1

    .end local p4
    .restart local v3       #index:I
    aput-byte v1, p3, p4

    .line 252
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move p4, v3

    .end local v3           #index:I
    .restart local p4
    goto :goto_0

    .line 254
    :cond_3
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 255
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 259
    .end local v1           #b1:B
    .end local v2           #b2:B
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpecedPad(I)V

    goto :goto_0
.end method

.method private handleUnexpecedPad(I)V
    .locals 3
    .parameter "sextets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected padding character"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected padding character; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method private handleUnexpectedEof(I)V
    .locals 3
    .parameter "sextets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of file; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method private read0([BII)I
    .locals 17
    .parameter "buffer"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    move/from16 v6, p2

    .line 136
    .local v6, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v14

    .local v14, qCount:I
    move v15, v14

    .end local v14           #qCount:I
    .local v15, qCount:I
    move v12, v6

    .line 137
    .end local v6           #index:I
    .local v12, index:I
    :goto_0
    add-int/lit8 v14, v15, -0x1

    .end local v15           #qCount:I
    .restart local v14       #qCount:I
    if-lez v15, :cond_0

    move v0, v12

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 138
    add-int/lit8 v6, v12, 0x1

    .end local v12           #index:I
    .restart local v6       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v2

    aput-byte v2, p1, v12

    move v15, v14

    .end local v14           #qCount:I
    .restart local v15       #qCount:I
    move v12, v6

    .end local v6           #index:I
    .restart local v12       #index:I
    goto :goto_0

    .line 143
    .end local v15           #qCount:I
    .restart local v14       #qCount:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    move v2, v0

    if-eqz v2, :cond_2

    .line 144
    move v0, v12

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    const/4 v2, -0x1

    :goto_1
    move v6, v12

    .line 225
    .end local v12           #index:I
    .restart local v6       #index:I
    :goto_2
    return v2

    .line 144
    .end local v6           #index:I
    .restart local v12       #index:I
    :cond_1
    sub-int v2, v12, p2

    goto :goto_1

    .line 148
    :cond_2
    const/4 v3, 0x0

    .line 149
    .local v3, data:I
    const/4 v4, 0x0

    .local v4, sextets:I
    move v6, v12

    .line 151
    .end local v12           #index:I
    .restart local v6       #index:I
    :cond_3
    move v0, v6

    move/from16 v1, p3

    if-ge v0, v1, :cond_10

    .line 154
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    move v5, v0

    if-ne v2, v5, :cond_a

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object v5, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object v8, v0

    array-length v8, v8

    invoke-virtual {v2, v5, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 156
    .local v13, n:I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_7

    .line 157
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 159
    if-eqz v4, :cond_5

    .line 161
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpectedEof(I)V

    .line 164
    :cond_5
    move v0, v6

    move/from16 v1, p2

    if-ne v0, v1, :cond_6

    const/4 v2, -0x1

    goto :goto_2

    :cond_6
    sub-int v2, v6, p2

    goto :goto_2

    .line 165
    :cond_7
    if-lez v13, :cond_8

    .line 166
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 167
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    goto :goto_3

    .line 169
    :cond_8
    sget-boolean v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-eqz v13, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 183
    .end local v13           #n:I
    .local v16, value:I
    :cond_9
    sget-object v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    aget v11, v2, v16

    .line 184
    .local v11, decoded:I
    if-gez v11, :cond_b

    .line 175
    .end local v11           #decoded:I
    .end local v16           #value:I
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    move v5, v0

    if-ge v2, v5, :cond_3

    move v0, v6

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move v5, v0

    add-int/lit8 v7, v5, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    aget-byte v2, v2, v5

    move v0, v2

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 178
    .restart local v16       #value:I
    const/16 v2, 0x3d

    move/from16 v0, v16

    move v1, v2

    if-ne v0, v1, :cond_9

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    .line 179
    invoke-direct/range {v2 .. v7}, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodePad(II[BII)I

    move-result v6

    .line 180
    sub-int v2, v6, p2

    goto/16 :goto_2

    .line 187
    .restart local v11       #decoded:I
    :cond_b
    shl-int/lit8 v2, v3, 0x6

    or-int v3, v2, v11

    .line 188
    add-int/lit8 v4, v4, 0x1

    .line 190
    const/4 v2, 0x4

    if-ne v4, v2, :cond_a

    .line 191
    const/4 v4, 0x0

    .line 193
    ushr-int/lit8 v2, v3, 0x10

    int-to-byte v8, v2

    .line 194
    .local v8, b1:B
    ushr-int/lit8 v2, v3, 0x8

    int-to-byte v9, v2

    .line 195
    .local v9, b2:B
    int-to-byte v10, v3

    .line 197
    .local v10, b3:B
    const/4 v2, 0x2

    sub-int v2, p3, v2

    if-ge v6, v2, :cond_c

    .line 198
    add-int/lit8 v12, v6, 0x1

    .end local v6           #index:I
    .restart local v12       #index:I
    aput-byte v8, p1, v6

    .line 199
    add-int/lit8 v6, v12, 0x1

    .end local v12           #index:I
    .restart local v6       #index:I
    aput-byte v9, p1, v12

    .line 200
    add-int/lit8 v12, v6, 0x1

    .end local v6           #index:I
    .restart local v12       #index:I
    aput-byte v10, p1, v6

    move v6, v12

    .end local v12           #index:I
    .restart local v6       #index:I
    goto :goto_4

    .line 202
    :cond_c
    const/4 v2, 0x1

    sub-int v2, p3, v2

    if-ge v6, v2, :cond_d

    .line 203
    add-int/lit8 v12, v6, 0x1

    .end local v6           #index:I
    .restart local v12       #index:I
    aput-byte v8, p1, v6

    .line 204
    add-int/lit8 v6, v12, 0x1

    .end local v12           #index:I
    .restart local v6       #index:I
    aput-byte v9, p1, v12

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    move-object v2, v0

    invoke-virtual {v2, v10}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 216
    :goto_5
    sget-boolean v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_f

    move v0, v6

    move/from16 v1, p3

    if-eq v0, v1, :cond_f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 206
    :cond_d
    move v0, v6

    move/from16 v1, p3

    if-ge v0, v1, :cond_e

    .line 207
    add-int/lit8 v12, v6, 0x1

    .end local v6           #index:I
    .restart local v12       #index:I
    aput-byte v8, p1, v6

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    move-object v2, v0

    invoke-virtual {v2, v9}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    move-object v2, v0

    invoke-virtual {v2, v10}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move v6, v12

    .end local v12           #index:I
    .restart local v6       #index:I
    goto :goto_5

    .line 211
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    move-object v2, v0

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    move-object v2, v0

    invoke-virtual {v2, v9}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    move-object v2, v0

    invoke-virtual {v2, v10}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_5

    .line 217
    :cond_f
    sub-int v2, p3, p2

    goto/16 :goto_2

    .line 223
    .end local v8           #b1:B
    .end local v9           #b2:B
    .end local v10           #b3:B
    .end local v11           #decoded:I
    .end local v16           #value:I
    :cond_10
    sget-boolean v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_11

    if-eqz v4, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 224
    :cond_11
    sget-boolean v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_12

    move v0, v6

    move/from16 v1, p3

    if-eq v0, v1, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 225
    :cond_12
    sub-int v2, p3, p2

    goto/16 :goto_2
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
    .line 124
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    goto :goto_0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 78
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Base64InputStream has been closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    .line 83
    .local v0, bytes:I
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 87
    :goto_0
    return v1

    .line 86
    :cond_1
    if-ne v0, v4, :cond_0

    .line 87
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-nez p1, :cond_1

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 99
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    move v0, v1

    .line 102
    :goto_0
    return v0

    :cond_2
    array-length v0, p1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez p1, :cond_1

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 116
    :cond_3
    if-nez p3, :cond_4

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_4
    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_0
.end method
