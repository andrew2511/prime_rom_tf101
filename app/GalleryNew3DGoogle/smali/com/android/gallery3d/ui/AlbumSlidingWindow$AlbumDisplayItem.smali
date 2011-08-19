.class Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;
.super Lcom/android/gallery3d/ui/AbstractDisplayItem;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumDisplayItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/ui/AbstractDisplayItem;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContent:Lcom/android/gallery3d/ui/Texture;

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

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter
    .parameter "slotIndex"
    .parameter "item"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 297
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/AbstractDisplayItem;-><init>(Lcom/android/gallery3d/data/MediaItem;)V

    .line 298
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaType:I

    .line 301
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mSlotIndex:I

    .line 302
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/ColorTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateContent(Lcom/android/gallery3d/ui/Texture;)V

    .line 303
    return-void

    .line 298
    :cond_0
    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->onLoadBitmapDone()V

    return-void
.end method

.method private onLoadBitmapDone()V
    .locals 5

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 394
    .local v1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    .line 395
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 396
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v2

    .line 397
    .local v2, isCancelled:Z
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v4

    if-lez v4, :cond_1

    if-nez v0, :cond_0

    if-nez v2, :cond_1

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 399
    .local v3, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1100(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/gallery3d/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v3           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    .line 402
    return-void
.end method

.method private updateContent(Lcom/android/gallery3d/ui/Texture;)V
    .locals 7
    .parameter "content"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/android/gallery3d/ui/Texture;

    .line 325
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v4

    .line 326
    .local v4, width:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v0

    .line 328
    .local v0, height:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$600(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v4

    div-float v2, v5, v6

    .line 329
    .local v2, scalex:F
    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v5}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$700(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 330
    .local v3, scaley:F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 332
    .local v1, scale:F
    int-to-float v5, v4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 333
    int-to-float v5, v0

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 335
    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->setSize(II)V

    .line 336
    return-void
.end method


# virtual methods
.method public cancelLoadBitmap()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 385
    :cond_0
    return-void
.end method

.method protected onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mSlotIndex:I

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    .line 308
    .local v0, isActiveSlot:Z
    if-eqz v0, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$306(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    .line 310
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)V

    .line 312
    :cond_0
    if-eqz p1, :cond_1

    .line 313
    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    .local v1, texture:Lcom/android/gallery3d/ui/BitmapTexture;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/BitmapTexture;->setThrottled(Z)V

    .line 315
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateContent(Lcom/android/gallery3d/ui/Texture;)V

    .line 316
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentInvalidated()V

    .line 320
    .end local v1           #texture:Lcom/android/gallery3d/ui/BitmapTexture;
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
    .line 389
    .local p1, bitmap:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1300(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    return-void
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;I)Z
    .locals 10
    .parameter "canvas"
    .parameter "pass"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 340
    if-nez p2, :cond_2

    .line 341
    const/4 v6, 0x0

    .line 342
    .local v6, path:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SelectionDrawer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/android/gallery3d/ui/Texture;

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mWidth:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mHeight:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->getRotation()I

    move-result v5

    iget v7, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaType:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/ui/SelectionDrawer;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;I)V

    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$900(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mSlotIndex:I

    if-ne v0, v1, :cond_1

    move v0, v9

    .line 349
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :goto_0
    return v0

    .restart local v6       #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    move v0, v8

    .line 345
    goto :goto_0

    .line 346
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :cond_2
    if-ne p2, v9, :cond_3

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/ui/SelectionDrawer;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mHeight:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/SelectionDrawer;->drawFocus(Lcom/android/gallery3d/ui/GLCanvas;II)V

    :cond_3
    move v0, v8

    .line 349
    goto :goto_0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jc"

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    .line 372
    .local v1, job:Lcom/android/gallery3d/util/ThreadPool$Job;,"Lcom/android/gallery3d/util/ThreadPool$Job<Landroid/graphics/Bitmap;>;"
    invoke-interface {v1, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 373
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/util/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    :cond_0
    return-object v0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public startLoadBitmap()V
    .locals 5

    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1000(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v2

    if-lez v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 356
    .local v1, path:Lcom/android/gallery3d/data/Path;
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1100(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/LruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1100(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/LruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 358
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    .line 366
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    :goto_0
    return-void

    .line 361
    .restart local v1       #path:Lcom/android/gallery3d/data/Path;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    invoke-virtual {v2, p0, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 363
    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->access$1200(Lcom/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 406
    const-string v0, "AlbumDisplayItem[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumDisplayItem;->mSlotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
