.class public Lcom/android/vending/AssetScreenshotGalleryAdapter;
.super Ljava/lang/Object;
.source "AssetScreenshotGalleryAdapter.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadErrorListener;
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;
.implements Lcom/android/vending/FullImageGalleryAdapter;


# instance fields
.field private final mAsset:Lcom/android/vending/model/Asset;

.field private final mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/vending/FullImageGalleryAdapter$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloaded:Z


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetItemAdapter;)V
    .locals 2
    .parameter "assetItemAdapter"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 33
    iget-object v0, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 34
    iget-object v0, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAsset:Lcom/android/vending/model/Asset;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mListeners:Ljava/util/Set;

    .line 36
    iput-boolean v1, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mPreloaded:Z

    .line 37
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/vending/FullImageGalleryAdapter$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public clearImageLoadErrors(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAsset:Lcom/android/vending/model/Asset;

    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v1, v2, p1}, Lcom/android/vending/model/Asset;->getBitmapState(Lcom/android/vending/model/Asset$AppImageUsage;I)Lcom/android/vending/model/Asset$BitmapState;

    move-result-object v0

    .line 74
    .local v0, state:Lcom/android/vending/model/Asset$BitmapState;
    sget-object v1, Lcom/android/vending/model/Asset$BitmapState;->ERROR:Lcom/android/vending/model/Asset$BitmapState;

    if-ne v1, v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAsset:Lcom/android/vending/model/Asset;

    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    sget-object v3, Lcom/android/vending/model/Asset$BitmapState;->NONE:Lcom/android/vending/model/Asset$BitmapState;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/vending/model/Asset;->setBitmapState(Lcom/android/vending/model/Asset$AppImageUsage;ILcom/android/vending/model/Asset$BitmapState;)V

    .line 77
    :cond_0
    return-void
.end method

.method public getImageAt(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, imageResult:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAsset:Lcom/android/vending/model/Asset;

    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v3, v4, p1}, Lcom/android/vending/model/Asset;->areBitmapsLoaded(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    iget-object v3, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v3, v6, v4, p1}, Lcom/android/vending/AssetItemAdapter;->getBitmapsAt(ILcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    .line 53
    :cond_0
    :goto_0
    const-string v3, "AssetScreenshotGalleryAdapter getImageAt() - requested image %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-boolean v3, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mPreloaded:Z

    if-eqz v3, :cond_2

    .line 69
    :goto_1
    return-object v1

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v3, v6, v4, p1}, Lcom/android/vending/AssetItemAdapter;->getBitmapsAt(ILcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, bitmaps:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #imageResult:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .restart local v1       #imageResult:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 63
    .end local v0           #bitmaps:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    :cond_2
    iput-boolean v7, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mPreloaded:Z

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, usagesToPreLoad:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset$AppImageUsage;>;"
    sget-object v3, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v3, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v3, v6, v2}, Lcom/android/vending/AssetItemAdapter;->loadBitmapsForAsset(ILjava/util/List;)V

    .line 67
    const-string v3, "AssetScreenshotGalleryAdapter getImageAt() - preload requested"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getNumImages()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    return v0
.end method

.method public onImageLoadError(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 3
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 96
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v2, :cond_0

    if-ltz p3, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/FullImageGalleryAdapter$Listener;

    .line 98
    .local v1, listener:Lcom/android/vending/FullImageGalleryAdapter$Listener;
    invoke-interface {v1, p3}, Lcom/android/vending/FullImageGalleryAdapter$Listener;->onImageLoadError(I)V

    goto :goto_0

    .line 101
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/vending/FullImageGalleryAdapter$Listener;
    :cond_0
    return-void
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 3
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 88
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v2, :cond_0

    if-ltz p3, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/vending/AssetScreenshotGalleryAdapter;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/FullImageGalleryAdapter$Listener;

    .line 90
    .local v1, listener:Lcom/android/vending/FullImageGalleryAdapter$Listener;
    invoke-interface {v1, p3}, Lcom/android/vending/FullImageGalleryAdapter$Listener;->onImageLoaded(I)V

    goto :goto_0

    .line 93
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/vending/FullImageGalleryAdapter$Listener;
    :cond_0
    return-void
.end method
