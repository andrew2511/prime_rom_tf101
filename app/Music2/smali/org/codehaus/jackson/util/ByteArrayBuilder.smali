.class public final Lorg/codehaus/jackson/util/ByteArrayBuilder;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# static fields
.field static final DEFAULT_BLOCK_ARRAY_SIZE:I = 0x28

.field private static final INITIAL_BLOCK_SIZE:I = 0x1f4

.field private static final MAX_BLOCK_SIZE:I = 0x40000

.field private static final NO_BYTES:[B


# instance fields
.field private _currBlock:[B

.field private _currBlockPtr:I

.field private _pastBlocks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private _pastLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "firstBlockSize"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    .line 59
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 60
    return-void
.end method

.method private _allocMoreAndAppend(B)V
    .locals 4
    .parameter "b"

    .prologue
    .line 141
    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    .line 149
    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 151
    .local v0, newSize:I
    const/high16 v1, 0x4

    if-le v0, v1, :cond_0

    .line 152
    const/high16 v0, 0x4

    .line 154
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 155
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 156
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 157
    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    aput-byte p1, v1, v2

    .line 158
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 75
    int-to-byte v0, p1

    .line 76
    .local v0, b:B
    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    aput-byte v0, v1, v2

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_allocMoreAndAppend(B)V

    goto :goto_0
.end method

.method public appendThreeBytes(I)V
    .locals 3
    .parameter "b24"

    .prologue
    .line 96
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 102
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 103
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_0
.end method

.method public appendTwoBytes(I)V
    .locals 3
    .parameter "b16"

    .prologue
    .line 85
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 87
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 90
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    .line 65
    iput v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 67
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 71
    :cond_0
    return-void
.end method

.method public toByteArray()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 113
    iget v6, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget v7, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int v5, v6, v7

    .line 115
    .local v5, totalLen:I
    if-nez v5, :cond_0

    .line 116
    sget-object v6, Lorg/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    .line 136
    :goto_0
    return-object v6

    .line 119
    :cond_0
    new-array v4, v5, [B

    .line 120
    .local v4, result:[B
    const/4 v3, 0x0

    .line 122
    .local v3, offset:I
    iget-object v6, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 123
    .local v0, block:[B
    array-length v2, v0

    .line 124
    .local v2, len:I
    invoke-static {v0, v8, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    add-int/2addr v3, v2

    .line 126
    goto :goto_1

    .line 127
    .end local v0           #block:[B
    .end local v2           #len:I
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v7, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {v6, v8, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v6, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v3, v6

    .line 129
    if-eq v3, v5, :cond_2

    .line 130
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Internal error: total len assumed to be "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", copied "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    :cond_2
    iget-object v6, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 134
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    :cond_3
    move-object v6, v4

    .line 136
    goto :goto_0
.end method
