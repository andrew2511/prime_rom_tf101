.class public final Lorg/codehaus/jackson/io/IOContext;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field final _bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

.field protected _concatBuffer:[C

.field protected _encoding:Lorg/codehaus/jackson/JsonEncoding;

.field protected final _managedResource:Z

.field protected _nameCopyBuffer:[C

.field protected _readIOBuffer:[B

.field final _sourceRef:Ljava/lang/Object;

.field protected _tokenBuffer:[C

.field protected _writeIOBuffer:[B


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "br"
    .parameter "sourceRef"
    .parameter "managedResource"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 60
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B

    .line 67
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C

    .line 74
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C

    .line 82
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 92
    iput-object p1, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 93
    iput-object p2, p0, Lorg/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;

    .line 94
    iput-boolean p3, p0, Lorg/codehaus/jackson/io/IOContext;->_managedResource:Z

    .line 95
    return-void
.end method


# virtual methods
.method public allocConcatBuffer()[C
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C

    .line 161
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C

    return-object v0
.end method

.method public allocNameCopyBuffer(I)[C
    .locals 2
    .parameter "minSize"

    .prologue
    .line 166
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocNameCopyBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 170
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    return-object v0
.end method

.method public allocReadIOBuffer()[B
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocReadIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 134
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    return-object v0
.end method

.method public allocTokenBuffer()[C
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C

    .line 152
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C

    return-object v0
.end method

.method public allocWriteIOBuffer()[B
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocWriteIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B

    .line 143
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B

    return-object v0
.end method

.method public constructTextBuffer()Lorg/codehaus/jackson/util/TextBuffer;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-object v0
.end method

.method public getEncoding()Lorg/codehaus/jackson/JsonEncoding;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_encoding:Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public getSourceReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public isResourceManaged()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/codehaus/jackson/io/IOContext;->_managedResource:Z

    return v0
.end method

.method public releaseConcatBuffer([C)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 218
    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C

    if-eq p1, v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatBuffer:[C

    .line 223
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 225
    :cond_1
    return-void
.end method

.method public releaseNameCopyBuffer([C)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 229
    if-eqz p1, :cond_1

    .line 230
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    if-eq p1, v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 236
    :cond_1
    return-void
.end method

.method public releaseReadIOBuffer([B)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 179
    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    if-eq p1, v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 189
    :cond_1
    return-void
.end method

.method public releaseTokenBuffer([C)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 207
    if-eqz p1, :cond_1

    .line 208
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C

    if-eq p1, v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenBuffer:[C

    .line 212
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 214
    :cond_1
    return-void
.end method

.method public releaseWriteIOBuffer([B)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 193
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B

    if-eq p1, v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeIOBuffer:[B

    .line 201
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 203
    :cond_1
    return-void
.end method

.method public setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V
    .locals 0
    .parameter "enc"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/codehaus/jackson/io/IOContext;->_encoding:Lorg/codehaus/jackson/JsonEncoding;

    .line 100
    return-void
.end method
