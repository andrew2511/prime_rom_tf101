.class Lcom/google/protobuf/RopeByteString$RopeByteIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Lcom/google/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RopeByteIterator"
.end annotation


# instance fields
.field private bytes:Lcom/google/protobuf/ByteString$ByteIterator;

.field bytesRemaining:I

.field private final pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;

.field final synthetic this$0:Lcom/google/protobuf/RopeByteString;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/RopeByteString;)V
    .locals 2
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->this$0:Lcom/google/protobuf/RopeByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Lcom/google/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;

    .line 736
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/LiteralByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/protobuf/ByteString$ByteIterator;

    .line 737
    invoke-virtual {p1}, Lcom/google/protobuf/RopeByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    .line 738
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/RopeByteString;Lcom/google/protobuf/RopeByteString$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    if-lez v0, :cond_0

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
    .line 745
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/LiteralByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/protobuf/ByteString$ByteIterator;

    .line 752
    :cond_0
    iget v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytesRemaining:I

    .line 753
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;->bytes:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 757
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
