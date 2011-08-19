.class public Lcom/google/android/music/menu/MenuBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MenuBackgroundDrawable.java"


# static fields
.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "MenuBackground"


# instance fields
.field private mBottomEdge:Landroid/graphics/Bitmap;

.field private mBottomTick:Landroid/graphics/Bitmap;

.field private mCenter:Landroid/graphics/Bitmap;

.field private mLeftEdge:Landroid/graphics/Bitmap;

.field private mLeftTick:Landroid/graphics/Bitmap;

.field private mLowerLeft:Landroid/graphics/Bitmap;

.field private mLowerRight:Landroid/graphics/Bitmap;

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mRightEdge:Landroid/graphics/Bitmap;

.field private mRightTick:Landroid/graphics/Bitmap;

.field private mTickDirection:I

.field private mTickX:I

.field private mTickY:I

.field private mTopEdge:Landroid/graphics/Bitmap;

.field private mTopTick:Landroid/graphics/Bitmap;

.field private mUpperLeft:Landroid/graphics/Bitmap;

.field private mUpperRight:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "r"

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->init(Landroid/content/res/Resources;)V

    .line 23
    iput v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    .line 24
    iput v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    .line 25
    return-void
.end method

.method private assemble(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 189
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .local v6, srcRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .local v1, dstRect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLeftEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 193
    .local v3, innerLeft:I
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v4, v7, v8

    .line 194
    .local v4, innerRight:I
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTopEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 195
    .local v5, innerTop:I
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v2, v7, v8

    .line 197
    .local v2, innerBottom:I
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 198
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v1, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 199
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperLeft:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 201
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTopEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTopEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 202
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTopEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1, v3, v11, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTopEdge:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 205
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperRight:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperRight:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 206
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperRight:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v1, v4, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperRight:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 209
    iget v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    if-ltz v7, :cond_0

    .line 211
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 212
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    add-int/2addr v8, v5

    invoke-virtual {v1, v4, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 216
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightTick:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightTick:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 217
    iget v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    add-int/2addr v7, v5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    add-int/2addr v9, v5

    iget-object v10, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightTick:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightTick:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 222
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    iget v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    add-int/2addr v7, v5

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightTick:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4, v7, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    :goto_0
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerRight:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerRight:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 234
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerRight:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 237
    iget v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    if-ltz v7, :cond_1

    .line 239
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    iget v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    add-int/2addr v7, v3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 244
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomTick:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerRight:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 245
    iget v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    add-int/2addr v8, v3

    iget-object v9, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomTick:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v7, v2, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomTick:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 250
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 251
    iget v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    add-int/2addr v7, v3

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomTick:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v7, v2, v4, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 260
    :goto_1
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v2, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerLeft:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 264
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLeftEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLeftEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    invoke-virtual {v1, v11, v5, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 266
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLeftEdge:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 268
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 269
    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mCenter:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 271
    return-void

    .line 227
    :cond_0
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    iget v7, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4, v5, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 255
    :cond_1
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v2, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    iget-object v7, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 48
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 50
    .local v7, value:Landroid/util/TypedValue;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 52
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 57
    .local v0, bitmapPadding:Landroid/graphics/Rect;
    const v8, 0x7f0201a4

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 58
    .local v2, is:Ljava/io/InputStream;
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperLeft:Landroid/graphics/Bitmap;

    .line 60
    const v8, 0x7f0201a5

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 61
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mUpperRight:Landroid/graphics/Bitmap;

    .line 63
    const v8, 0x7f0201a2

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 64
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerLeft:Landroid/graphics/Bitmap;

    .line 66
    const v8, 0x7f0201a3

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 67
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLowerRight:Landroid/graphics/Bitmap;

    .line 69
    const v8, 0x7f0201a9

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 70
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTopEdge:Landroid/graphics/Bitmap;

    .line 71
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 73
    .local v6, topPadding:I
    const v8, 0x7f0201a7

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 74
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLeftEdge:Landroid/graphics/Bitmap;

    .line 75
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 77
    .local v3, leftPadding:I
    const v8, 0x7f0201a8

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 78
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    .line 79
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 81
    .local v5, rightPadding:I
    const v8, 0x7f0201a6

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 82
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    .line 83
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 85
    .local v1, bottomPadding:I
    const v8, 0x7f0201aa

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 86
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mCenter:Landroid/graphics/Bitmap;

    .line 88
    const v8, 0x7f0201ae

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 89
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTopTick:Landroid/graphics/Bitmap;

    .line 91
    const v8, 0x7f0201ac

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 92
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLeftTick:Landroid/graphics/Bitmap;

    .line 94
    const v8, 0x7f0201ad

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 95
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightTick:Landroid/graphics/Bitmap;

    .line 97
    const v8, 0x7f0201ab

    invoke-virtual {p1, v8, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    .line 98
    invoke-static {p1, v7, v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomTick:Landroid/graphics/Bitmap;

    .line 100
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v6, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    .line 101
    return-void
.end method


# virtual methods
.method public clearTickMark()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    .line 44
    iput v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    .line 45
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->assemble(Landroid/graphics/Canvas;)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBottomEdgeThickness()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBottomTickHeight()I
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomTick:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBottomTickWidth()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mBottomTick:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getLeftEdgeThickness()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mLeftEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRightEdgeThickness()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRightTickHeight()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightTick:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRightTickWidth()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mRightTick:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTopEdgeThickness()I
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTopEdge:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/music/menu/MenuBackgroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 124
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1
    .parameter "bottom"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 149
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1
    .parameter "left"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 145
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1
    .parameter "right"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 153
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 141
    return-void
.end method

.method public setTickMarkBottom(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 33
    iput p1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    .line 35
    return-void
.end method

.method public setTickMarkRight(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    .line 29
    iput p1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    .line 30
    return-void
.end method

.method public setTickMarkTop(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickX:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/menu/MenuBackgroundDrawable;->mTickY:I

    .line 40
    return-void
.end method
