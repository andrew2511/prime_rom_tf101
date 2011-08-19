.class public Lcom/android/vending/adapters/ImageRequest;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;
    }
.end annotation


# instance fields
.field private final mAppImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;

.field private final mRequestedAsset:Lcom/android/vending/model/Asset;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/Asset;Landroid/os/Handler;Lcom/android/vending/model/Asset$AppImageUsage;Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;)V
    .locals 0
    .parameter "requestedAsset"
    .parameter "handler"
    .parameter "appImageUsage"
    .parameter "listener"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/vending/adapters/ImageRequest;->mRequestedAsset:Lcom/android/vending/model/Asset;

    .line 36
    iput-object p2, p0, Lcom/android/vending/adapters/ImageRequest;->mHandler:Landroid/os/Handler;

    .line 37
    iput-object p3, p0, Lcom/android/vending/adapters/ImageRequest;->mAppImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 38
    iput-object p4, p0, Lcom/android/vending/adapters/ImageRequest;->mListener:Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/adapters/ImageRequest;)Lcom/android/vending/model/Asset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/vending/adapters/ImageRequest;->mRequestedAsset:Lcom/android/vending/model/Asset;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/adapters/ImageRequest;)Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/vending/adapters/ImageRequest;->mListener:Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;

    return-object v0
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 4
    .parameter "requestManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/android/vending/api/GetImageService;

    invoke-direct {v0, p1}, Lcom/android/vending/api/GetImageService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 43
    .local v0, imageService:Lcom/android/vending/api/GetImageService;
    iget-object v1, p0, Lcom/android/vending/adapters/ImageRequest;->mRequestedAsset:Lcom/android/vending/model/Asset;

    iget-object v2, p0, Lcom/android/vending/adapters/ImageRequest;->mAppImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/api/GetImageService;->getImage(Lcom/android/vending/model/Asset;Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 44
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 45
    iget-object v1, p0, Lcom/android/vending/adapters/ImageRequest;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/adapters/ImageRequest;->mListener:Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/vending/adapters/ImageRequest;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/vending/adapters/ImageRequest$1;

    invoke-direct {v2, p0}, Lcom/android/vending/adapters/ImageRequest$1;-><init>(Lcom/android/vending/adapters/ImageRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to fetch thumbnails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/android/vending/adapters/ImageRequest;->mRequestedAsset:Lcom/android/vending/model/Asset;

    iget-object v1, p0, Lcom/android/vending/adapters/ImageRequest;->mAppImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    sget-object v2, Lcom/android/vending/model/Asset$BitmapState;->ERROR:Lcom/android/vending/model/Asset$BitmapState;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/vending/model/Asset;->setBitmapState(Lcom/android/vending/model/Asset$AppImageUsage;ILcom/android/vending/model/Asset$BitmapState;)V

    .line 59
    iget-object v0, p0, Lcom/android/vending/adapters/ImageRequest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/adapters/ImageRequest;->mListener:Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/vending/adapters/ImageRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/adapters/ImageRequest$2;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/adapters/ImageRequest$2;-><init>(Lcom/android/vending/adapters/ImageRequest;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
