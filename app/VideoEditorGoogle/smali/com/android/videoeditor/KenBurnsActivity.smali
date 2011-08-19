.class public Lcom/android/videoeditor/KenBurnsActivity;
.super Landroid/app/Activity;
.source "KenBurnsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;,
        Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;,
        Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;
    }
.end annotation


# static fields
.field private static final MAX_HEIGHT:I = 0x2d0

.field private static final MAX_HW_BITMAP_HEIGHT:I = 0x800

.field private static final MAX_HW_BITMAP_WIDTH:I = 0x800

.field private static final MAX_PAN:I = 0x3

.field private static final MAX_WIDTH:I = 0x510

.field public static final PARAM_END_RECT:Ljava/lang/String; = "end_rect"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field public static final PARAM_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field public static final PARAM_START_RECT:Ljava/lang/String; = "start_rect"

.field public static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field private static final STATE_END_RECTANGLE:Ljava/lang/String; = "end"

.field private static final STATE_START_RECTANGLE:Ljava/lang/String; = "start"

.field private static final STATE_WHICH_RECTANGLE_ID:Ljava/lang/String; = "which"

.field private static final TAG:Ljava/lang/String; = "KenBurnsActivity"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDoneButton:Landroid/view/View;

.field private final mEndRect:Landroid/graphics/Rect;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageSubsample:I

.field private mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

.field private mImageViewScale:F

.field private final mMatrixRect:Landroid/graphics/RectF;

.field private mMediaItemHeight:I

.field private mMediaItemWidth:I

.field private mPaused:Z

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mStartRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mPaused:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/KenBurnsActivity;)Lcom/android/videoeditor/widgets/ImageViewTouchBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->saveBitmapRectangle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/KenBurnsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/videoeditor/KenBurnsActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/videoeditor/KenBurnsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/videoeditor/KenBurnsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/videoeditor/KenBurnsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/videoeditor/KenBurnsActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/KenBurnsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->showBitmapRectangle()V

    return-void
.end method

.method private enableDoneButton()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mDoneButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 471
    return-void

    .line 470
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveBitmapRectangle()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 525
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 526
    .local v1, checkedRect:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 528
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    packed-switch v1, :pswitch_data_0

    .line 587
    :goto_0
    return-void

    .line 530
    :pswitch_0
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v9, v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 532
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mapRect(Landroid/graphics/RectF;)V

    .line 533
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 535
    .local v5, scale:F
    const-string v7, "KenBurnsActivity"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 536
    const-string v7, "KenBurnsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START RAW: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 542
    .local v2, left:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 543
    .local v6, top:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 544
    .local v4, right:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 546
    .local v0, bottom:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 547
    const-string v7, "KenBurnsActivity"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 548
    const-string v7, "KenBurnsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->enableDoneButton()V

    goto/16 :goto_0

    .line 557
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v4           #right:I
    .end local v5           #scale:F
    .end local v6           #top:I
    :pswitch_1
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v9, v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 559
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->mapRect(Landroid/graphics/RectF;)V

    .line 560
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 562
    .restart local v5       #scale:F
    const-string v7, "KenBurnsActivity"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 563
    const-string v7, "KenBurnsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "END RAW: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_2
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 569
    .restart local v2       #left:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 570
    .restart local v6       #top:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 571
    .restart local v4       #right:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMatrixRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 573
    .restart local v0       #bottom:I
    iget-object v7, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 574
    const-string v7, "KenBurnsActivity"

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 575
    const-string v7, "KenBurnsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "END: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_3
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->enableDoneButton()V

    goto/16 :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x7f08001a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showBitmapRectangle()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/high16 v5, 0x3f80

    .line 477
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 478
    .local v0, checkedRect:I
    packed-switch v0, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 480
    :pswitch_0
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->reset()V

    .line 482
    iget v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 484
    .local v1, scale:F
    const-string v2, "KenBurnsActivity"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const-string v2, "KenBurnsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBitmapRectangle START: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_1
    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomToOffset(FFF)V

    goto/16 :goto_0

    .line 498
    .end local v1           #scale:F
    :pswitch_1
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->reset()V

    .line 500
    iget v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 502
    .restart local v1       #scale:F
    const-string v2, "KenBurnsActivity"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    const-string v2, "KenBurnsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBitmapRectangle END: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_2
    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->zoomToOffset(FFF)V

    goto/16 :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x7f08001a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showProgress(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const v0, 0x7f080018

    .line 459
    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 451
    :goto_0
    return-void

    .line 437
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 438
    .local v0, extra:Landroid/content/Intent;
    const-string v1, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "media_item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "start_rect"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 441
    const-string v1, "end_rect"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 442
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/videoeditor/KenBurnsActivity;->setResult(ILandroid/content/Intent;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->finish()V

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x7f08001c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "state"

    .prologue
    const/16 v10, 0x800

    const/16 v9, 0x78

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    const v3, 0x7f04000b

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->setContentView(I)V

    .line 234
    invoke-virtual {p0, v8}, Lcom/android/videoeditor/KenBurnsActivity;->setFinishOnTouchOutside(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    .line 237
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    .line 238
    const-string v3, "KenBurnsActivity"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const-string v3, "KenBurnsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media item size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    const v3, 0x7f080017

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    .line 246
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    if-lt v3, v4, :cond_2

    .line 249
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    const/16 v4, 0x510

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 251
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 252
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    .line 262
    :goto_0
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    div-int/2addr v3, v4

    if-gt v3, v10, :cond_1

    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    div-int/2addr v3, v4

    if-le v3, v10, :cond_3

    .line 264
    :cond_1
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    goto :goto_0

    .line 254
    :cond_2
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    const/16 v4, 0x2d0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 256
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 257
    iget v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    goto :goto_0

    .line 267
    :cond_3
    const-string v3, "KenBurnsActivity"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    const-string v3, "KenBurnsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subsample: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageSubsample:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_4
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-lt v3, v9, :cond_5

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge v3, v9, :cond_7

    .line 274
    :cond_5
    const-string v3, "KenBurnsActivity"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 275
    const-string v3, "KenBurnsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image is too small: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_6
    const v3, 0x7f090056

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 280
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->finish()V

    .line 370
    :goto_1
    return-void

    .line 284
    :cond_7
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    invoke-virtual {v3, v1}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageViewScale:F

    .line 287
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/videoeditor/KenBurnsActivity$MyGestureListener;-><init>(Lcom/android/videoeditor/KenBurnsActivity;Lcom/android/videoeditor/KenBurnsActivity$1;)V

    invoke-direct {v3, p0, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 288
    new-instance v3, Landroid/view/ScaleGestureDetector;

    new-instance v4, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/videoeditor/KenBurnsActivity$MyScaleGestureListener;-><init>(Lcom/android/videoeditor/KenBurnsActivity;Lcom/android/videoeditor/KenBurnsActivity$1;)V

    invoke-direct {v3, p0, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 290
    const v3, 0x7f080019

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 291
    if-eqz p1, :cond_8

    .line 292
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const-string v4, "which"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 293
    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    const-string v3, "start"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    iget-object v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    const-string v3, "end"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 312
    :goto_2
    const v3, 0x7f08001c

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mDoneButton:Landroid/view/View;

    .line 313
    invoke-direct {p0}, Lcom/android/videoeditor/KenBurnsActivity;->enableDoneButton()V

    .line 316
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 318
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcom/android/videoeditor/KenBurnsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/KenBurnsActivity$1;-><init>(Lcom/android/videoeditor/KenBurnsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 354
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mImageView:Lcom/android/videoeditor/widgets/ImageViewTouchBase;

    new-instance v4, Lcom/android/videoeditor/KenBurnsActivity$2;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/KenBurnsActivity$2;-><init>(Lcom/android/videoeditor/KenBurnsActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/videoeditor/widgets/ImageViewTouchBase;->setEventListener(Lcom/android/videoeditor/widgets/ImageViewTouchBase$ImageTouchEventListener;)V

    goto/16 :goto_1

    .line 296
    :cond_8
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "start_rect"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 298
    .local v2, startRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_9

    .line 299
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    :goto_3
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "end_rect"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 305
    .local v0, endRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_a

    .line 306
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 301
    .end local v0           #endRect:Landroid/graphics/Rect;
    :cond_9
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 308
    .restart local v0       #endRect:Landroid/graphics/Rect;
    :cond_a
    iget-object v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemWidth:I

    iget v5, p0, Lcom/android/videoeditor/KenBurnsActivity;->mMediaItemHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 400
    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 406
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 408
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mPaused:Z

    .line 392
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 379
    iput-boolean v3, p0, Lcom/android/videoeditor/KenBurnsActivity;->mPaused:Z

    .line 381
    new-instance v0, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;

    invoke-virtual {p0}, Lcom/android/videoeditor/KenBurnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;-><init>(Lcom/android/videoeditor/KenBurnsActivity;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/KenBurnsActivity$ImageLoaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/videoeditor/KenBurnsActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 424
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/videoeditor/KenBurnsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 426
    .local v0, radioGroup:Landroid/widget/RadioGroup;
    const-string v1, "which"

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string v1, "start"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 428
    const-string v1, "end"

    iget-object v2, p0, Lcom/android/videoeditor/KenBurnsActivity;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 429
    return-void
.end method
