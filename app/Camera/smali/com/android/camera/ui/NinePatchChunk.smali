.class Lcom/android/camera/ui/NinePatchChunk;
.super Ljava/lang/Object;
.source "NinePatchChunk.java"


# instance fields
.field public mColor:[I

.field public mDivX:[I

.field public mDivY:[I

.field public mPaddings:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-void
.end method

.method private static checkDivCount(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 28
    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid nine-patch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    return-void
.end method

.method public static deserialize([B)Lcom/android/camera/ui/NinePatchChunk;
    .locals 5
    .parameter "data"

    .prologue
    .line 34
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 38
    .local v2, wasSerialized:B
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 64
    :goto_0
    return-object v3

    .line 40
    :cond_0
    new-instance v1, Lcom/android/camera/ui/NinePatchChunk;

    invoke-direct {v1}, Lcom/android/camera/ui/NinePatchChunk;-><init>()V

    .line 41
    .local v1, chunk:Lcom/android/camera/ui/NinePatchChunk;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mDivX:[I

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mDivY:[I

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mColor:[I

    .line 45
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mDivX:[I

    array-length v3, v3

    invoke-static {v3}, Lcom/android/camera/ui/NinePatchChunk;->checkDivCount(I)V

    .line 46
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mDivY:[I

    array-length v3, v3

    invoke-static {v3}, Lcom/android/camera/ui/NinePatchChunk;->checkDivCount(I)V

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 52
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 53
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 54
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 55
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 60
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mDivX:[I

    invoke-static {v3, v0}, Lcom/android/camera/ui/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    .line 61
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mDivY:[I

    invoke-static {v3, v0}, Lcom/android/camera/ui/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    .line 62
    iget-object v3, v1, Lcom/android/camera/ui/NinePatchChunk;->mColor:[I

    invoke-static {v3, v0}, Lcom/android/camera/ui/NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    move-object v3, v1

    .line 64
    goto :goto_0
.end method

.method private static readIntArray([ILjava/nio/ByteBuffer;)V
    .locals 3
    .parameter "data"
    .parameter "buffer"

    .prologue
    .line 22
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p0

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p0, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
