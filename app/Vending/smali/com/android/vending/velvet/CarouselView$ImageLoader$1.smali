.class Lcom/android/vending/velvet/CarouselView$ImageLoader$1;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Lcom/android/vending/api/GetImageService$GetImageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/velvet/CarouselView$ImageLoader;-><init>(Lcom/android/vending/velvet/CarouselView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

.field final synthetic val$this$0:Lcom/android/vending/velvet/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/vending/velvet/CarouselView$ImageLoader;Lcom/android/vending/velvet/CarouselView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iput-object p2, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->val$this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetImageResponse(Lcom/android/vending/model/GetImageRequest;Lcom/android/vending/model/GetImageResponse;)V
    .locals 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/android/vending/model/GetImageRequest;->getAssetId()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, assetId:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    iget-object v0, v5, Lcom/android/vending/velvet/CarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    .local v0, arr$:[Lcom/android/vending/velvet/CarouselView$Thumbnail;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 361
    .local v4, thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    iget-boolean v5, v4, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-eqz v5, :cond_1

    .line 360
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :cond_1
    iget-object v5, v4, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    iget-object v5, v4, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    .line 372
    iget-boolean v5, v4, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mIsOffScreen:Z

    if-nez v5, :cond_2

    .line 375
    iget-object v5, v4, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mAssetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    invoke-virtual {p2}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mStrongBitmapRef:Landroid/graphics/Bitmap;

    .line 378
    :cond_2
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ImageLoader;->this$0:Lcom/android/vending/velvet/CarouselView;

    invoke-static {v5}, Lcom/android/vending/velvet/CarouselView;->access$000(Lcom/android/vending/velvet/CarouselView;)Lcom/android/vending/BaseActivity;

    move-result-object v5

    new-instance v6, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;

    invoke-direct {v6, p0}, Lcom/android/vending/velvet/CarouselView$ImageLoader$1$1;-><init>(Lcom/android/vending/velvet/CarouselView$ImageLoader$1;)V

    invoke-virtual {v5, v6}, Lcom/android/vending/BaseActivity;->postOnHandler(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 385
    .end local v4           #thumbnail:Lcom/android/vending/velvet/CarouselView$Thumbnail;
    :cond_3
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 386
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    iget-object v5, v5, Lcom/android/vending/velvet/CarouselView$ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 387
    iget-object v5, p0, Lcom/android/vending/velvet/CarouselView$ImageLoader$1;->this$1:Lcom/android/vending/velvet/CarouselView$ImageLoader;

    invoke-virtual {v5}, Lcom/android/vending/velvet/CarouselView$ImageLoader;->loadNextBatch()V

    .line 389
    :cond_4
    return-void
.end method
