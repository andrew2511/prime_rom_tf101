.class Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;
.super Ljava/lang/Object;
.source "LiteralByteString.java"

# interfaces
.implements Lcom/google/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/LiteralByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralByteIterator"
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/google/protobuf/LiteralByteString;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/LiteralByteString;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->this$0:Lcom/google/protobuf/LiteralByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    .line 264
    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->limit:I

    .line 265
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/LiteralByteString;Lcom/google/protobuf/LiteralByteString$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lcom/google/protobuf/LiteralByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    iget v1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->this$0:Lcom/google/protobuf/LiteralByteString;

    iget-object v0, v0, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    iget v1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
