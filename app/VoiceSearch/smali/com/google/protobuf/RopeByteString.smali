.class Lcom/google/protobuf/RopeByteString;
.super Lcom/google/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RopeByteString$1;,
        Lcom/google/protobuf/RopeByteString$RopeInputStream;,
        Lcom/google/protobuf/RopeByteString$RopeByteIterator;,
        Lcom/google/protobuf/RopeByteString$PieceIterator;,
        Lcom/google/protobuf/RopeByteString$Balancer;
    }
.end annotation


# static fields
.field private static final minLengthByDepth:[I


# instance fields
.field private hash:I

.field private final left:Lcom/google/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/google/protobuf/ByteString;

.field private final totalLength:I

.field private final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 69
    :goto_0
    if-lez v0, :cond_0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/2addr v2, v0

    move v4, v2

    move v2, v0

    move v0, v4

    .line 74
    goto :goto_0

    .line 78
    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    .line 80
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    sget-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 82
    sget-object v3, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v2

    .line 80
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    .line 102
    iput-object p1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    .line 103
    iput-object p2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    .line 104
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    .line 105
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    .line 106
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static concatenate(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x80

    .line 125
    instance-of v1, p0, Lcom/google/protobuf/RopeByteString;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/RopeByteString;

    move-object v1, v0

    .line 127
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_1

    move-object v1, p0

    .line 173
    :goto_1
    return-object v1

    :cond_0
    move-object v1, v6

    .line 125
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_2

    move-object v1, p1

    .line 130
    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 133
    if-ge v2, v5, :cond_3

    .line 136
    invoke-static {p0, p1}, Lcom/google/protobuf/RopeByteString;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;

    move-result-object v1

    goto :goto_1

    .line 137
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v5, :cond_4

    .line 149
    iget-object v2, v1, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-static {v2, p1}, Lcom/google/protobuf/RopeByteString;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;

    move-result-object v2

    .line 150
    new-instance v3, Lcom/google/protobuf/RopeByteString;

    iget-object v1, v1, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {v3, v1, v2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    move-object v1, v3

    .line 151
    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    iget-object v4, v1, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString;->getTreeDepth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 159
    new-instance v2, Lcom/google/protobuf/RopeByteString;

    iget-object v3, v1, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-direct {v2, v3, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    .line 160
    new-instance v3, Lcom/google/protobuf/RopeByteString;

    iget-object v1, v1, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {v3, v1, v2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    move-object v1, v3

    .line 161
    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 165
    sget-object v3, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v1, v3, v1

    if-lt v2, v1, :cond_6

    .line 167
    new-instance v1, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 169
    :cond_6
    new-instance v1, Lcom/google/protobuf/RopeByteString$Balancer;

    invoke-direct {v1, v6}, Lcom/google/protobuf/RopeByteString$Balancer;-><init>(Lcom/google/protobuf/RopeByteString$1;)V

    invoke-static {v1, p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->access$100(Lcom/google/protobuf/RopeByteString$Balancer;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private static concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    .line 187
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    .line 188
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 189
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 190
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 191
    new-instance v0, Lcom/google/protobuf/LiteralByteString;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method private equalsFragments(Lcom/google/protobuf/ByteString;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 439
    new-instance v2, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v2, p0, v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 440
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/LiteralByteString;

    .line 443
    new-instance v3, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v3, p1, v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 444
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/LiteralByteString;

    move v4, v11

    move-object v5, v0

    move v6, v11

    move v0, v11

    .line 448
    :goto_0
    invoke-virtual {v5}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .line 449
    invoke-virtual {v1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v8

    sub-int/2addr v8, v4

    .line 450
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 453
    if-nez v6, :cond_0

    invoke-virtual {v5, v1, v4, v9}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v10

    .line 456
    :goto_1
    if-nez v10, :cond_1

    move v0, v11

    .line 463
    :goto_2
    return v0

    .line 453
    :cond_0
    invoke-virtual {v1, v5, v6, v9}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v10

    goto :goto_1

    .line 460
    :cond_1
    add-int v10, v0, v9

    .line 461
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-lt v10, v0, :cond_3

    .line 462
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-ne v10, v0, :cond_2

    .line 463
    const/4 v0, 0x1

    goto :goto_2

    .line 465
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 468
    :cond_3
    if-ne v9, v7, :cond_4

    .line 470
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/LiteralByteString;

    move-object v5, v0

    move v6, v11

    .line 474
    :goto_3
    if-ne v9, v8, :cond_5

    .line 476
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/LiteralByteString;

    move v1, v11

    :goto_4
    move v4, v1

    move-object v1, v0

    move v0, v10

    .line 480
    goto :goto_0

    .line 472
    :cond_4
    add-int v0, v6, v9

    move v6, v0

    goto :goto_3

    .line 478
    :cond_5
    add-int v0, v4, v9

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    goto :goto_4
.end method

.method static newInstanceForTest(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/RopeByteString;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 206
    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .locals 3
    .parameter

    .prologue
    .line 221
    if-gez p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-le p1, v0, :cond_1

    .line 225
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 236
    :goto_0
    return v0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    goto :goto_0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 348
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 349
    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    add-int v0, p2, p4

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 343
    :goto_0
    return-void

    .line 334
    :cond_0
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 338
    :cond_1
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 339
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 340
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 425
    :goto_0
    return v0

    .line 401
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/ByteString;

    if-nez v0, :cond_1

    move v0, v2

    .line 402
    goto :goto_0

    .line 405
    :cond_1
    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 406
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 407
    goto :goto_0

    .line 409
    :cond_2
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-nez v0, :cond_3

    move v0, v3

    .line 410
    goto :goto_0

    .line 418
    :cond_3
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-eqz v0, :cond_4

    .line 419
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    .line 420
    if-eqz v0, :cond_4

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-eq v1, v0, :cond_4

    move v0, v2

    .line 421
    goto :goto_0

    .line 425
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/protobuf/RopeByteString;->equalsFragments(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getTreeDepth()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 492
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    .line 494
    if-nez v0, :cond_1

    .line 495
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    .line 496
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/RopeByteString;->partialHash(III)I

    move-result v0

    .line 497
    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x1

    .line 500
    :cond_0
    iput v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    .line 502
    :cond_1
    return v0
.end method

.method protected isBalanced()Z
    .locals 3

    .prologue
    .line 262
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidUtf8()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {v0, v3, v3, v1}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 376
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public iterator()Lcom/google/protobuf/ByteString$ByteIterator;
    .locals 2

    .prologue
    .line 725
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/protobuf/RopeByteString;Lcom/google/protobuf/RopeByteString$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 1

    .prologue
    .line 529
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 534
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    add-int v0, p2, p3

    .line 513
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v0

    .line 520
    :goto_0
    return v0

    .line 515
    :cond_0
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v0

    goto :goto_0

    .line 518
    :cond_1
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 519
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v1

    .line 520
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v0

    goto :goto_0
.end method

.method protected partialIsValidUtf8(III)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    add-int v0, p2, p3

    .line 382
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 389
    :goto_0
    return v0

    .line 384
    :cond_0
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    goto :goto_0

    .line 387
    :cond_1
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    .line 388
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 389
    iget-object v2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    goto :goto_0
.end method

.method protected peekCachedHashCode()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 282
    if-gez p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-le p2, v0, :cond_1

    .line 287
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    sub-int v0, p2, p1

    .line 291
    if-gez v0, :cond_2

    .line 292
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning index larger than ending index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2
    if-nez v0, :cond_3

    .line 300
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 323
    :goto_0
    return-object v0

    .line 301
    :cond_3
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-ne v0, v1, :cond_4

    move-object v0, p0

    .line 303
    goto :goto_0

    .line 306
    :cond_4
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_5
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p1, v0, :cond_6

    .line 311
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->substring(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 320
    new-instance v2, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 360
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 361
    return-void
.end method
