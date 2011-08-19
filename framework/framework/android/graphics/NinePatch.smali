.class public Landroid/graphics/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mChunk:[B

.field private mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;

.field private mSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .registers 5
    .parameter "bitmap"
    .parameter "chunk"
    .parameter "srcName"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/NinePatch;->mRect:Landroid/graphics/RectF;

    .line 53
    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    iput-object p2, p0, Landroid/graphics/NinePatch;->mChunk:[B

    .line 55
    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0, p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk(I[B)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .registers 4
    .parameter "patch"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/NinePatch;->mRect:Landroid/graphics/RectF;

    .line 63
    iget-object v0, p1, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    iget-object v0, p1, Landroid/graphics/NinePatch;->mChunk:[B

    iput-object v0, p0, Landroid/graphics/NinePatch;->mChunk:[B

    .line 65
    iget-object v0, p1, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_23

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    .line 69
    :cond_23
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/NinePatch;->mChunk:[B

    invoke-static {v0, v1}, Landroid/graphics/NinePatch;->validateNinePatchChunk(I[B)V

    .line 70
    return-void
.end method

.method public static native isNinePatchChunk([B)Z
.end method

.method private static native nativeDraw(ILandroid/graphics/Rect;I[BIII)V
.end method

.method private static native nativeDraw(ILandroid/graphics/RectF;I[BIII)V
.end method

.method private static native nativeGetTransparentRegion(I[BLandroid/graphics/Rect;)I
.end method

.method private static native validateNinePatchChunk(I[B)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10
    .parameter "canvas"
    .parameter "location"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_27

    .line 101
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iget-object v1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    iget v1, v1, Landroid/graphics/Paint;->mNativePaint:I

    move v4, v1

    :goto_19
    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/Rect;I[BIII)V

    .line 109
    :goto_23
    return-void

    .line 101
    :cond_24
    const/4 v1, 0x0

    move v4, v1

    goto :goto_19

    .line 106
    :cond_27
    iget-object v0, p0, Landroid/graphics/NinePatch;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 107
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iget-object v2, p0, Landroid/graphics/NinePatch;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_23
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 11
    .parameter "canvas"
    .parameter "location"
    .parameter "paint"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_23

    .line 120
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/NinePatch;->mChunk:[B

    if-eqz p3, :cond_20

    iget v1, p3, Landroid/graphics/Paint;->mNativePaint:I

    move v4, v1

    :goto_15
    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/Rect;I[BIII)V

    .line 127
    :goto_1f
    return-void

    .line 120
    :cond_20
    const/4 v1, 0x0

    move v4, v1

    goto :goto_15

    .line 124
    :cond_23
    iget-object v0, p0, Landroid/graphics/NinePatch;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 125
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iget-object v2, p0, Landroid/graphics/NinePatch;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1f
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 10
    .parameter "canvas"
    .parameter "location"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_27

    .line 84
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iget-object v1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    iget v1, v1, Landroid/graphics/Paint;->mNativePaint:I

    move v4, v1

    :goto_19
    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/RectF;I[BIII)V

    .line 91
    :goto_23
    return-void

    .line 84
    :cond_24
    const/4 v1, 0x0

    move v4, v1

    goto :goto_19

    .line 89
    :cond_27
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/graphics/NinePatch;->mChunk:[B

    iget-object v2, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_23
.end method

.method public getDensity()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .registers 5
    .parameter "location"

    .prologue
    .line 150
    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    iget-object v2, p0, Landroid/graphics/NinePatch;->mChunk:[B

    invoke-static {v1, v2, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(I[BLandroid/graphics/Rect;)I

    move-result v0

    .line 151
    .local v0, r:I
    if-eqz v0, :cond_14

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(I)V

    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final hasAlpha()Z
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 73
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    .line 74
    return-void
.end method
