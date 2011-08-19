.class public Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.super Lcom/android/gallery3d/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# instance fields
.field private mBackup:Landroid/graphics/Bitmap;

.field private mDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mLargeListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private mThumbListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter "activity"
    .parameter "view"
    .parameter "item"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 77
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    .line 85
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    .line 57
    invoke-static {p3}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 58
    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 60
    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 61
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 75
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onDecodeLargeComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/BitmapRegionDecoder;

    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 100
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v4, :cond_0

    .line 114
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 102
    .local v3, width:I
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 103
    .local v0, height:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v4, 0x280

    invoke-static {v3, v0, v4}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 106
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBackup:Landroid/graphics/Bitmap;

    .line 108
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBackup:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v4, v3, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .line 109
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 110
    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageInvalidated(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0           #height:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #width:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 112
    .local v2, t:Ljava/lang/Throwable;
    const-string v4, "SinglePhotoDataAdapter"

    const-string v5, "fail to decode large"

    invoke-static {v4, v5, v2}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBackup:Landroid/graphics/Bitmap;

    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBackup:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBackup:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBackup:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBackup:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .line 121
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    .line 122
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageInvalidated(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode thumb"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method public getImageRotation()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public getNextImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 143
    .local v0, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 144
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 145
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 148
    :cond_0
    return-void
.end method

.method public previous()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    if-nez v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 176
    return-void
.end method
