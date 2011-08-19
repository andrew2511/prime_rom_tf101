.class public final Lorg/codehaus/jackson/util/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;,
        Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    }
.end annotation


# instance fields
.field protected final mByteBuffers:[[B

.field protected final mCharBuffers:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B

    .line 35
    invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C

    .line 37
    return-void
.end method

.method private balloc(I)[B
    .locals 1
    .parameter "size"

    .prologue
    .line 89
    new-array v0, p1, [B

    return-object v0
.end method

.method private calloc(I)[C
    .locals 1
    .parameter "size"

    .prologue
    .line 94
    new-array v0, p1, [C

    return-object v0
.end method


# virtual methods
.method public allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B
    .locals 4
    .parameter "type"

    .prologue
    .line 41
    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    .line 42
    .local v1, ix:I
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B

    aget-object v0, v2, v1

    .line 43
    .local v0, buffer:[B
    if-nez v0, :cond_0

    .line 44
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->access$000(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/BufferRecycler;->balloc(I)[B

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method public allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
    .locals 1
    .parameter "type"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method public allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
    .locals 4
    .parameter "type"
    .parameter "minSize"

    .prologue
    .line 63
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result v2

    if-le v2, p2, :cond_0

    .line 64
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result p2

    .line 66
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    .line 67
    .local v1, ix:I
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C

    aget-object v0, v2, v1

    .line 68
    .local v0, buffer:[C
    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, p2, :cond_2

    .line 69
    :cond_1
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/util/BufferRecycler;->calloc(I)[C

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method public releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
    .locals 2
    .parameter "type"
    .parameter "buffer"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mByteBuffers:[[B

    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 54
    return-void
.end method

.method public releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
    .locals 2
    .parameter "type"
    .parameter "buffer"

    .prologue
    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->mCharBuffers:[[C

    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 79
    return-void
.end method
