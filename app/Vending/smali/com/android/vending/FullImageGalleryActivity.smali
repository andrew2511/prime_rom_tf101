.class public Lcom/android/vending/FullImageGalleryActivity;
.super Lcom/android/vending/BaseActivity;
.source "FullImageGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/vending/FullImageGalleryAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/FullImageGalleryActivity$GestureHandler;,
        Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;
    }
.end annotation


# instance fields
.field private mAssetId:Ljava/lang/String;

.field private mCloseImageView:Landroid/view/View;

.field private mCurrentImageView:Landroid/widget/ImageView;

.field private mCurrentPosition:I

.field private mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

.field private mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHandler:Lcom/android/vending/FullImageGalleryActivity$GestureHandler;

.field private mHideCloseImageViewAnimation:Landroid/view/animation/Animation;

.field private mHideNextImageViewAnimation:Landroid/view/animation/Animation;

.field private mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

.field private mImageErrorLayout:Landroid/widget/LinearLayout;

.field private mImageLayout:Landroid/widget/FrameLayout;

.field private mLoadSpinner:Landroid/widget/LinearLayout;

.field private mNextImageView:Landroid/view/View;

.field private mPrevImageView:Landroid/view/View;

.field private mRotatedBitmap:Landroid/graphics/Bitmap;

.field private mShowCloseImageViewAnimation:Landroid/view/animation/Animation;

.field private mShowNextImageViewAnimation:Landroid/view/animation/Animation;

.field private mShowPrevImageViewAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mRotatedBitmap:Landroid/graphics/Bitmap;

    .line 408
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mNextImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mPrevImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mCloseImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/vending/FullImageGalleryActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mHideCloseImageViewAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/vending/FullImageGalleryActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/vending/FullImageGalleryActivity;)Lcom/android/vending/FullImageGalleryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/vending/FullImageGalleryActivity;Lcom/android/vending/FullImageGalleryAdapter;)Lcom/android/vending/FullImageGalleryAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/vending/FullImageGalleryActivity;->mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/vending/FullImageGalleryActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/vending/FullImageGalleryActivity;->moveCurrentPosition(I)V

    return-void
.end method

.method private displayCurrentPosition()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 311
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

    iget v5, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/android/vending/FullImageGalleryAdapter;->clearImageLoadErrors(I)V

    .line 313
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

    iget v5, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/android/vending/FullImageGalleryAdapter;->getImageAt(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 314
    .local v0, bitmap:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_4

    .line 315
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 317
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mLoadSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 323
    const/4 v3, 0x1

    .line 327
    .local v3, imageOrientation:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/vending/FullImageGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 329
    .local v1, currentOrientation:I
    if-eq v1, v3, :cond_1

    .line 330
    if-ne v3, v6, :cond_3

    const/high16 v4, -0x3d4c

    move v2, v4

    .line 332
    .local v2, degrees:F
    :goto_1
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mRotatedBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/vending/FullImageGalleryActivity;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mRotatedBitmap:Landroid/graphics/Bitmap;

    .line 335
    :cond_0
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/vending/FullImageGalleryActivity;->mRotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    .end local v2           #degrees:F
    :cond_1
    invoke-direct {p0, v6, v6}, Lcom/android/vending/FullImageGalleryActivity;->updateControls(ZZ)V

    .line 344
    const-string v4, "FullImageGalleryActivity displayCurrentPosition() - show image position %d"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    .end local v1           #currentOrientation:I
    .end local v3           #imageOrientation:I
    :goto_2
    return-void

    .line 325
    :cond_2
    const/4 v3, 0x2

    .restart local v3       #imageOrientation:I
    goto :goto_0

    .line 330
    .restart local v1       #currentOrientation:I
    :cond_3
    const/high16 v4, 0x42b4

    move v2, v4

    goto :goto_1

    .line 347
    .end local v1           #currentOrientation:I
    .end local v3           #imageOrientation:I
    :cond_4
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 348
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageErrorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mLoadSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private displayErrorAtCurrentPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 354
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageErrorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mLoadSpinner:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    invoke-direct {p0, v2, v2}, Lcom/android/vending/FullImageGalleryActivity;->updateControls(ZZ)V

    .line 358
    return-void
.end method

.method private moveCurrentPosition(I)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity;->mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

    if-eqz v1, :cond_0

    .line 285
    iget v1, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    add-int v0, v1, p1

    .line 286
    .local v0, newPosition:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity;->mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

    invoke-interface {v1}, Lcom/android/vending/FullImageGalleryAdapter;->getNumImages()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/vending/FullImageGalleryActivity;->mRotatedBitmap:Landroid/graphics/Bitmap;

    .line 288
    iput v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    .line 289
    invoke-direct {p0}, Lcom/android/vending/FullImageGalleryActivity;->displayCurrentPosition()V

    .line 292
    .end local v0           #newPosition:I
    :cond_0
    return-void
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v2, 0x4000

    .line 295
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 296
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 297
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v5, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 299
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 304
    .end local v5           #m:Landroid/graphics/Matrix;
    :goto_0
    return-object v0

    .line 300
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    move-object v0, p0

    .line 304
    goto :goto_0
.end method

.method private scheduleDismissOnScreenControls()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/FullImageGalleryActivity;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void
.end method

.method private setActivityAsInputListener(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 130
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    return-void
.end method

.method private setupDismissOnScreenControlRunnable()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/android/vending/FullImageGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/vending/FullImageGalleryActivity$1;-><init>(Lcom/android/vending/FullImageGalleryActivity;)V

    iput-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    .line 223
    return-void
.end method

.method private updateControls(ZZ)V
    .locals 11
    .parameter "showControls"
    .parameter "autoDismiss"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 157
    if-eqz p1, :cond_4

    iget v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    if-lez v6, :cond_4

    move v5, v9

    .line 158
    .local v5, showPrev:Z
    :goto_0
    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    iget-object v7, p0, Lcom/android/vending/FullImageGalleryActivity;->mGalleryAdapter:Lcom/android/vending/FullImageGalleryAdapter;

    invoke-interface {v7}, Lcom/android/vending/FullImageGalleryAdapter;->getNumImages()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_5

    move v4, v9

    .line 162
    .local v4, showNext:Z
    :goto_1
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    move v3, v9

    .line 163
    .local v3, prevIsVisible:Z
    :goto_2
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    move v2, v9

    .line 164
    .local v2, nextIsVisible:Z
    :goto_3
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mCloseImageView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    move v1, v9

    .line 166
    .local v1, closeIsVisible:Z
    :goto_4
    if-eqz v5, :cond_9

    if-nez v3, :cond_9

    .line 167
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mShowPrevImageViewAnimation:Landroid/view/animation/Animation;

    .line 168
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    :goto_5
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 177
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mShowNextImageViewAnimation:Landroid/view/animation/Animation;

    .line 178
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    :goto_6
    if-eqz p1, :cond_b

    if-nez v1, :cond_b

    .line 187
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mShowCloseImageViewAnimation:Landroid/view/animation/Animation;

    .line 188
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mCloseImageView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mCloseImageView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    :goto_7
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 197
    invoke-direct {p0}, Lcom/android/vending/FullImageGalleryActivity;->scheduleDismissOnScreenControls()V

    .line 199
    :cond_3
    return-void

    .end local v1           #closeIsVisible:Z
    .end local v2           #nextIsVisible:Z
    .end local v3           #prevIsVisible:Z
    .end local v4           #showNext:Z
    .end local v5           #showPrev:Z
    :cond_4
    move v5, v8

    .line 157
    goto :goto_0

    .restart local v5       #showPrev:Z
    :cond_5
    move v4, v8

    .line 158
    goto :goto_1

    .restart local v4       #showNext:Z
    :cond_6
    move v3, v8

    .line 162
    goto :goto_2

    .restart local v3       #prevIsVisible:Z
    :cond_7
    move v2, v8

    .line 163
    goto :goto_3

    .restart local v2       #nextIsVisible:Z
    :cond_8
    move v1, v8

    .line 164
    goto :goto_4

    .line 170
    .restart local v1       #closeIsVisible:Z
    :cond_9
    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    .line 172
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 180
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_a
    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    .line 182
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 190
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_b
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mHideCloseImageViewAnimation:Landroid/view/animation/Animation;

    .line 192
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mCloseImageView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity;->mCloseImageView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 238
    :sswitch_0
    invoke-direct {p0, v1, v1}, Lcom/android/vending/FullImageGalleryActivity;->updateControls(ZZ)V

    goto :goto_0

    .line 241
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/vending/FullImageGalleryActivity;->moveCurrentPosition(I)V

    goto :goto_0

    .line 244
    :sswitch_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/vending/FullImageGalleryActivity;->moveCurrentPosition(I)V

    goto :goto_0

    .line 247
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/vending/FullImageGalleryActivity;->finish()V

    goto :goto_0

    .line 252
    :sswitch_4
    invoke-direct {p0}, Lcom/android/vending/FullImageGalleryActivity;->displayCurrentPosition()V

    goto :goto_0

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x7f080049 -> :sswitch_4
        0x7f0800d7 -> :sswitch_0
        0x7f0800d8 -> :sswitch_0
        0x7f0800d9 -> :sswitch_0
        0x7f0800da -> :sswitch_0
        0x7f0800db -> :sswitch_2
        0x7f0800dc -> :sswitch_1
        0x7f0800dd -> :sswitch_0
        0x7f0800de -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    invoke-direct {p0}, Lcom/android/vending/FullImageGalleryActivity;->displayCurrentPosition()V

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f050001

    const/high16 v4, 0x7f05

    .line 68
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v3, 0x7f04003d

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/vending/FullImageGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 72
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "assetid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mAssetId:Ljava/lang/String;

    .line 73
    const-string v3, "full_image_gall_curr_pos"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    .line 75
    const v3, 0x7f0800d9

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mLoadSpinner:Landroid/widget/LinearLayout;

    .line 76
    const v3, 0x7f0800d7

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageLayout:Landroid/widget/FrameLayout;

    .line 77
    const v3, 0x7f0800da

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageErrorLayout:Landroid/widget/LinearLayout;

    .line 78
    const v3, 0x7f0800d8

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentImageView:Landroid/widget/ImageView;

    .line 79
    const v3, 0x7f0800dc

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mNextImageView:Landroid/view/View;

    .line 80
    const v3, 0x7f0800db

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mPrevImageView:Landroid/view/View;

    .line 81
    const v3, 0x7f0800dd

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mCloseImageView:Landroid/view/View;

    .line 84
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    .line 85
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    .line 86
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mHideCloseImageViewAnimation:Landroid/view/animation/Animation;

    .line 87
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mShowNextImageViewAnimation:Landroid/view/animation/Animation;

    .line 88
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mShowPrevImageViewAnimation:Landroid/view/animation/Animation;

    .line 89
    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mShowCloseImageViewAnimation:Landroid/view/animation/Animation;

    .line 91
    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mLoadSpinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setActivityAsInputListener(Landroid/view/View;)V

    .line 92
    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setActivityAsInputListener(Landroid/view/View;)V

    .line 93
    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mImageErrorLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setActivityAsInputListener(Landroid/view/View;)V

    .line 94
    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setActivityAsInputListener(Landroid/view/View;)V

    .line 95
    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mNextImageView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setActivityAsInputListener(Landroid/view/View;)V

    .line 96
    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mPrevImageView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setActivityAsInputListener(Landroid/view/View;)V

    .line 97
    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mCloseImageView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setActivityAsInputListener(Landroid/view/View;)V

    .line 98
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->setActivityAsInputListener(Landroid/view/View;)V

    .line 100
    invoke-direct {p0}, Lcom/android/vending/FullImageGalleryActivity;->setupDismissOnScreenControlRunnable()V

    .line 101
    new-instance v3, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;-><init>(Lcom/android/vending/FullImageGalleryActivity;Lcom/android/vending/FullImageGalleryActivity$1;)V

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mGestureHandler:Lcom/android/vending/FullImageGalleryActivity$GestureHandler;

    .line 102
    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/android/vending/FullImageGalleryActivity;->mGestureHandler:Lcom/android/vending/FullImageGalleryActivity$GestureHandler;

    invoke-direct {v3, p0, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 105
    const v3, 0x7f0800de

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 106
    .local v1, closeButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v3, p0, Lcom/android/vending/FullImageGalleryActivity;->mAssetId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 109
    new-instance v0, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;

    invoke-direct {v0, p0}, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;-><init>(Lcom/android/vending/FullImageGalleryActivity;)V

    .line 110
    .local v0, action:Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;
    invoke-virtual {v0}, Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;->tryLoadFromCacheAndDisplay()V

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/vending/FullImageGalleryActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 112
    if-nez p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->startSetupActionChain(Z)V

    .line 116
    .end local v0           #action:Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;
    :goto_1
    return-void

    .restart local v0       #action:Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;
    :cond_0
    move v3, v6

    .line 112
    goto :goto_0

    .line 114
    .end local v0           #action:Lcom/android/vending/FullImageGalleryActivity$ScreenshotGalleryAssetLoadAction;
    :cond_1
    const v3, 0x7f070039

    invoke-virtual {p0, v3}, Lcom/android/vending/FullImageGalleryActivity;->displayToast(I)V

    goto :goto_1
.end method

.method public onGalleryAdapterLoaded()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/vending/FullImageGalleryActivity;->displayCurrentPosition()V

    .line 154
    return-void
.end method

.method public onImageLoadError(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 146
    iget v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    if-ne p1, v0, :cond_0

    .line 147
    const-string v0, "onImageLoadError for %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0}, Lcom/android/vending/FullImageGalleryActivity;->displayErrorAtCurrentPosition()V

    .line 150
    :cond_0
    return-void
.end method

.method public onImageLoaded(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    iget v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mCurrentPosition:I

    if-ne p1, v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/vending/FullImageGalleryActivity;->displayCurrentPosition()V

    .line 143
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 259
    packed-switch p1, :pswitch_data_0

    .line 267
    invoke-super {p0, p1, p2}, Lcom/android/vending/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 261
    :pswitch_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/vending/FullImageGalleryActivity;->moveCurrentPosition(I)V

    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/vending/FullImageGalleryActivity;->moveCurrentPosition(I)V

    move v0, v1

    .line 265
    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mGestureHandler:Lcom/android/vending/FullImageGalleryActivity$GestureHandler;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;->setViewId(I)V

    .line 272
    iget-object v0, p0, Lcom/android/vending/FullImageGalleryActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 137
    return-void
.end method
