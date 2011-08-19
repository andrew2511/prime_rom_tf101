.class public Lcom/google/android/finsky/layout/MinTimeThumbnailListener;
.super Lcom/google/android/finsky/layout/HidingThumbnailListener;
.source "MinTimeThumbnailListener.java"


# instance fields
.field private mEndTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mMinTime:J

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;ZJ)V
    .locals 2
    .parameter "imageView"
    .parameter "fadeIn"
    .parameter "minTime"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/HidingThumbnailListener;-><init>(Landroid/widget/ImageView;Z)V

    .line 23
    iput-wide p3, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->mMinTime:J

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->mHandler:Landroid/os/Handler;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->mStartTime:J

    .line 26
    return-void
.end method

.method static synthetic access$001(Lcom/google/android/finsky/layout/MinTimeThumbnailListener;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/HidingThumbnailListener;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 8
    .parameter "bitmapContainer"

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->mEndTime:J

    .line 31
    iget-wide v2, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->mMinTime:J

    iget-wide v4, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->mEndTime:J

    iget-wide v6, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->mStartTime:J

    sub-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 32
    .local v0, delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/HidingThumbnailListener;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/finsky/layout/MinTimeThumbnailListener$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/layout/MinTimeThumbnailListener$1;-><init>(Lcom/google/android/finsky/layout/MinTimeThumbnailListener;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
