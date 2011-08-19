.class public abstract Lcom/android/gallery3d/ui/AbstractDisplayItem;
.super Lcom/android/gallery3d/ui/DisplayItem;
.source "AbstractDisplayItem.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageRequested:Z

.field protected final mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mRecycling:Z

.field private mRotation:I

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/ui/DisplayItem;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    .line 34
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mRecycling:Z

    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 43
    if-nez p1, :cond_0

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mRotation:I

    .line 45
    :cond_1
    return-void
.end method

.method private inState(I)Z
    .locals 1
    .parameter "states"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelImageRequest()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 88
    iget v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 89
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    .line 90
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AbstractDisplayItem;->cancelLoadBitmap()V

    .line 92
    :cond_0
    return-void
.end method

.method protected abstract cancelLoadBitmap()V
.end method

.method public getIdentity()J
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mRotation:I

    return v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AbstractDisplayItem;->inState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBitmapAvailable(Landroid/graphics/Bitmap;)V
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AbstractDisplayItem;->inState(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mRecycling:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AbstractDisplayItem;->cancelImageRequest()V

    goto :goto_0
.end method

.method public requestImage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 80
    iget v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    .line 82
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AbstractDisplayItem;->startLoadBitmap()V

    .line 84
    :cond_0
    return-void
.end method

.method protected abstract startLoadBitmap()V
.end method

.method protected updateImage(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "isCancelled"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mRecycling:Z

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    .line 54
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AbstractDisplayItem;->requestImage()V

    goto :goto_0

    .line 61
    :cond_2
    iput-object p1, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    if-nez p1, :cond_3

    const/16 v0, 0x10

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AbstractDisplayItem;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x2

    goto :goto_1
.end method
