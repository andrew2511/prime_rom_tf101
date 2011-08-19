.class Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
.super Lcom/android/gallery3d/ui/AbstractDisplayItem;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryDisplayItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/ui/AbstractDisplayItem;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContent:Lcom/android/gallery3d/ui/Texture;

.field private final mCoverIndex:I

.field private final mDataVersion:J

.field private mFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaType:I

.field private final mSlotIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;IILcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter
    .parameter "slotIndex"
    .parameter "coverIndex"
    .parameter "item"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 349
    invoke-direct {p0, p4}, Lcom/android/gallery3d/ui/AbstractDisplayItem;-><init>(Lcom/android/gallery3d/data/MediaItem;)V

    .line 350
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    .line 351
    iput p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    .line 352
    invoke-virtual {p4}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mMediaType:I

    .line 353
    invoke-virtual {p4}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mDataVersion:J

    .line 354
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/ColorTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->updateContent(Lcom/android/gallery3d/ui/Texture;)V

    .line 355
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->onLoadBitmapDone()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mDataVersion:J

    return-wide v0
.end method

.method private onLoadBitmapDone()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 424
    .local v0, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 425
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    .line 426
    return-void
.end method

.method private updateContent(Lcom/android/gallery3d/ui/Texture;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mContent:Lcom/android/gallery3d/ui/Texture;

    .line 374
    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v2

    .line 375
    .local v2, width:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v0

    .line 377
    .local v0, height:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$700(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 379
    .local v1, scale:F
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 380
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 382
    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->setSize(II)V

    .line 383
    return-void
.end method


# virtual methods
.method public cancelLoadBitmap()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 415
    return-void
.end method

.method protected onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$406(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    .line 361
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)V

    .line 363
    :cond_0
    if-eqz p1, :cond_1

    .line 364
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 365
    .local v0, texture:Lcom/android/gallery3d/ui/BitmapTexture;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;->setThrottled(Z)V

    .line 366
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->updateContent(Lcom/android/gallery3d/ui/Texture;)V

    .line 367
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentInvalidated()V

    .line 369
    .end local v0           #texture:Lcom/android/gallery3d/ui/BitmapTexture;
    :cond_1
    return-void
.end method

.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 3
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
    .line 419
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    return-void
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;I)Z
    .locals 15
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 387
    const/4 v8, 0x0

    .line 388
    .local v8, sourceType:I
    const/4 v12, 0x0

    .line 389
    .local v12, cacheFlag:I
    const/4 v13, 0x0

    .line 390
    .local v13, cacheStatus:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v14, v0, v1

    .line 391
    .local v14, set:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    iget-object v6, v14, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->setPath:Lcom/android/gallery3d/data/Path;

    .line 392
    .local v6, path:Lcom/android/gallery3d/data/Path;
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    if-nez v0, :cond_0

    .line 393
    iget v8, v14, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->sourceType:I

    .line 394
    iget v12, v14, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 395
    iget v13, v14, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SelectionDrawer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mContent:Lcom/android/gallery3d/ui/Texture;

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mWidth:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mHeight:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->getRotation()I

    move-result v5

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    iget v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mMediaType:I

    const/4 v1, 0x2

    if-ne v12, v1, :cond_1

    const/4 v1, 0x1

    move v10, v1

    :goto_0
    const/4 v1, 0x2

    if-ne v12, v1, :cond_2

    const/4 v1, 0x3

    if-eq v13, v1, :cond_2

    const/4 v1, 0x1

    move v11, v1

    :goto_1
    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/gallery3d/ui/SelectionDrawer;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;IIIZZ)V

    .line 403
    const/4 v0, 0x0

    return v0

    .line 398
    :cond_1
    const/4 v1, 0x0

    move v10, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v11, v1

    goto :goto_1
.end method

.method public startLoadBitmap()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 410
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 430
    const-string v0, "GalleryDisplayItem(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
