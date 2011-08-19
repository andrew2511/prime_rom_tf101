.class public Lcom/google/android/music/BackgroundView;
.super Landroid/view/View;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/BackgroundView$BackgroundWorker;,
        Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_START_WINDOW:J = 0x1f4L

.field private static final DELAY_TRANSITION_MS:I = 0x3e8

.field private static final DELAY_TRANSITION_MSG_TYPE:I = 0x1

.field public static final TRANSITION_DURATION:J = 0x3e8L


# instance fields
.field final mAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

.field private mBGRunnable:Ljava/lang/Runnable;

.field private mBitmapHeight:I

.field private mBitmapMatrix:Landroid/graphics/Matrix;

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapSetTime:J

.field private mBitmapWidth:I

.field private mCurrentAlbumId:J

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private final mDefaultBackground:Landroid/graphics/Bitmap;

.field private mDelayTransitionHandler:Lcom/google/android/music/Worker;

.field private mHeight:I

.field private mInitMessage:Landroid/os/Message;

.field private mPossibleAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v3, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 39
    iput-object v3, p0, Lcom/google/android/music/BackgroundView;->mPossibleAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/BackgroundView;->mBitmapSetTime:J

    .line 42
    iput v2, p0, Lcom/google/android/music/BackgroundView;->mBitmapWidth:I

    .line 43
    iput v2, p0, Lcom/google/android/music/BackgroundView;->mBitmapHeight:I

    .line 44
    iput v2, p0, Lcom/google/android/music/BackgroundView;->mWidth:I

    .line 45
    iput v2, p0, Lcom/google/android/music/BackgroundView;->mHeight:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentAlbumId:J

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mBitmapMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    invoke-direct {v0, p0, v3, v3}, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;-><init>(Lcom/google/android/music/BackgroundView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    .line 236
    new-instance v0, Lcom/google/android/music/BackgroundView$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/BackgroundView$1;-><init>(Lcom/google/android/music/BackgroundView;)V

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mBGRunnable:Ljava/lang/Runnable;

    .line 67
    invoke-static {p1}, Lcom/google/android/music/utils/BackgroundUtils;->getDefaultBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/android/music/BackgroundView;->resize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mDefaultBackground:Landroid/graphics/Bitmap;

    .line 70
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mDefaultBackground:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/BackgroundView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/music/BackgroundView;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/BackgroundView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentAlbumId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/android/music/BackgroundView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/google/android/music/BackgroundView;->mCurrentAlbumId:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/music/BackgroundView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mDefaultBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/BackgroundView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/music/BackgroundView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/music/BackgroundView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mBGRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/BackgroundView;Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;)Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/music/BackgroundView;->mPossibleAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/android/music/BackgroundView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/google/android/music/BackgroundView;->mBitmapSetTime:J

    return-wide p1
.end method

.method private calculateScaleMatrix(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 154
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/music/BackgroundView;->mBitmapWidth:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/music/BackgroundView;->mBitmapHeight:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/music/BackgroundView;->mWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/google/android/music/BackgroundView;->mHeight:I

    if-eq v0, p2, :cond_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 163
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/BackgroundView;->mBitmapWidth:I

    .line 164
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/BackgroundView;->mBitmapHeight:I

    .line 165
    iput p1, p0, Lcom/google/android/music/BackgroundView;->mWidth:I

    .line 166
    iput p2, p0, Lcom/google/android/music/BackgroundView;->mHeight:I

    .line 167
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mBitmapMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p1

    iget v2, p0, Lcom/google/android/music/BackgroundView;->mBitmapWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    iget v3, p0, Lcom/google/android/music/BackgroundView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method

.method private static final resize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "b"
    .parameter "size"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 89
    .local v1, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 90
    .local v0, height:I
    if-eq v1, v0, :cond_0

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected a square bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    if-ne v1, p1, :cond_1

    move-object v2, p0

    .line 97
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {p0}, Lcom/google/android/music/BackgroundView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/music/BackgroundView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/BackgroundView;->calculateScaleMatrix(II)V

    .line 174
    return-void
.end method


# virtual methods
.method public cancelTransition()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/android/music/BackgroundView;->clearAnimation()V

    .line 120
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mInitMessage:Landroid/os/Message;

    .line 124
    return-void
.end method

.method public getRepresentativeAlbumId()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentAlbumId:J

    return-wide v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 259
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/google/android/music/BackgroundView$BackgroundWorker;

    const-string v1, "BackgroundHandler"

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/BackgroundView$BackgroundWorker;-><init>(Lcom/google/android/music/BackgroundView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mInitMessage:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/BackgroundView;->mInitMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->sendMessage(Landroid/os/Message;)Z

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mInitMessage:Landroid/os/Message;

    .line 266
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/music/BackgroundView;->clearAnimation()V

    .line 249
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mBGRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/BackgroundView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    invoke-virtual {v0}, Lcom/google/android/music/Worker;->quit()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    .line 254
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/music/BackgroundView;->mBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/google/android/music/BackgroundView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 179
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/BackgroundView;->calculateScaleMatrix(II)V

    goto :goto_0
.end method

.method public restoreInstanceFromConfiguration(Ljava/lang/Object;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    move-object v1, v0

    .line 83
    .local v1, config:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/BackgroundView;->mCurrentAlbumId:J

    .line 84
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/google/android/music/BackgroundView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public saveInstanceConfiguration()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public setRepresentativeAlbum(JZ)V
    .locals 4
    .parameter "albumId"
    .parameter "fromScroll"

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    if-nez v1, :cond_0

    .line 106
    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mInitMessage:Landroid/os/Message;

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/BackgroundView;->cancelTransition()V

    .line 111
    if-eqz p3, :cond_1

    .line 112
    iget-object v1, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/BackgroundView;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    invoke-virtual {v1, v0}, Lcom/google/android/music/Worker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 6
    .parameter "visibility"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/music/BackgroundView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 135
    :cond_0
    if-nez p1, :cond_1

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/BackgroundView;->mBitmapSetTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mPossibleAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    invoke-static {v0}, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->access$000(Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/BackgroundView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 138
    iget-object v0, p0, Lcom/google/android/music/BackgroundView;->mPossibleAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    invoke-virtual {p0, v0}, Lcom/google/android/music/BackgroundView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
