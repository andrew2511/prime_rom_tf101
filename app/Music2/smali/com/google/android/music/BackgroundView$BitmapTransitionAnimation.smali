.class Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;
.super Landroid/view/animation/Animation;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/BackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapTransitionAnimation"
.end annotation


# instance fields
.field private inBitmap:Landroid/graphics/Bitmap;

.field private newBitmap:Landroid/graphics/Bitmap;

.field private outBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/android/music/BackgroundView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/BackgroundView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter "in"
    .parameter "out"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 188
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->initBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->outBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v8, 0x437f

    const/4 v1, 0x0

    .line 218
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->newBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 221
    .local v5, p:Landroid/graphics/Paint;
    const v2, 0xffffff

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v2, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->newBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->newBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 224
    mul-float v2, p1, v8

    float-to-int v6, v2

    .line 225
    .local v6, inAlpha:I
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    iget-object v2, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    mul-float/2addr v2, v8

    float-to-int v7, v2

    .line 229
    .local v7, outAlpha:I
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    iget-object v2, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->outBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    iget-object v1, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->this$0:Lcom/google/android/music/BackgroundView;

    iget-object v2, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->newBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/google/android/music/BackgroundView;->access$100(Lcom/google/android/music/BackgroundView;Landroid/graphics/Bitmap;)V

    .line 233
    return-void
.end method

.method public initBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "in"
    .parameter "out"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->inBitmap:Landroid/graphics/Bitmap;

    .line 196
    iput-object p2, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->outBitmap:Landroid/graphics/Bitmap;

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 199
    .local v1, inWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 201
    .local v0, inHeight:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 202
    .local v3, outWidth:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 204
    .local v2, outHeight:I
    if-ne v1, v3, :cond_0

    if-eq v0, v2, :cond_1

    .line 205
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The 2 bitmaps must be of equal size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_1
    if-eq v1, v0, :cond_2

    .line 210
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Expected a square bitmap"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->newBitmap:Landroid/graphics/Bitmap;

    .line 214
    return-void
.end method
