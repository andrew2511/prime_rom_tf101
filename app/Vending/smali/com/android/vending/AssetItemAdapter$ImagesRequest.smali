.class public Lcom/android/vending/AssetItemAdapter$ImagesRequest;
.super Ljava/lang/Object;
.source "AssetItemAdapter.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImagesRequest"
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mRequestedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/AssetItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p2, requestedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p3, requestedParameters:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    iput-object p1, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-object p2, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedAssets:Ljava/util/List;

    .line 866
    iput-object p3, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedParameters:Ljava/util/List;

    .line 867
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mAccount:Ljava/lang/String;

    .line 868
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 11
    .parameter "requestManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 871
    new-instance v3, Lcom/android/vending/api/GetImageService;

    invoke-direct {v3, p1}, Lcom/android/vending/api/GetImageService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 872
    .local v3, imageService:Lcom/android/vending/api/GetImageService;
    iget-object v9, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedAssets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 873
    .local v5, numAssets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 874
    iget-object v9, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedAssets:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 875
    .local v0, asset:Lcom/android/vending/model/Asset;
    iget-object v9, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedParameters:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;

    .line 876
    .local v7, parameters:Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
    invoke-virtual {v7}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getImageUsage()Lcom/android/vending/model/Asset$AppImageUsage;

    move-result-object v8

    .line 877
    .local v8, usage:Lcom/android/vending/model/Asset$AppImageUsage;
    invoke-virtual {v7}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getImageId()I

    move-result v2

    .line 878
    .local v2, imageId:I
    iget-object v9, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->this$0:Lcom/android/vending/AssetItemAdapter;

    invoke-static {v9, v8}, Lcom/android/vending/AssetItemAdapter;->access$200(Lcom/android/vending/AssetItemAdapter;Lcom/android/vending/model/Asset$AppImageUsage;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-ne v2, v10, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v9

    move v6, v9

    .line 880
    .local v6, numImages:I
    :goto_1
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v6, :cond_2

    .line 881
    if-ne v2, v10, :cond_1

    move v9, v4

    :goto_3
    invoke-virtual {v3, v0, v8, v9}, Lcom/android/vending/api/GetImageService;->getImage(Lcom/android/vending/model/Asset;Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 880
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 878
    .end local v4           #j:I
    .end local v6           #numImages:I
    :cond_0
    const/4 v9, 0x1

    move v6, v9

    goto :goto_1

    .restart local v4       #j:I
    .restart local v6       #numImages:I
    :cond_1
    move v9, v2

    .line 881
    goto :goto_3

    .line 873
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 885
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v2           #imageId:I
    .end local v4           #j:I
    .end local v6           #numImages:I
    .end local v7           #parameters:Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
    .end local v8           #usage:Lcom/android/vending/model/Asset$AppImageUsage;
    :cond_3
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 886
    iget-object v9, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->this$0:Lcom/android/vending/AssetItemAdapter;

    iget-object v10, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedParameters:Ljava/util/List;

    invoke-virtual {v9, v10}, Lcom/android/vending/AssetItemAdapter;->notifyImagesLoaded(Ljava/util/List;)V

    .line 887
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to fetch thumbnails: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedAssets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 893
    iget-object v3, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedAssets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 894
    .local v0, asset:Lcom/android/vending/model/Asset;
    iget-object v3, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedParameters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;

    .line 895
    .local v2, parameters:Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
    invoke-virtual {v2}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getImageUsage()Lcom/android/vending/model/Asset$AppImageUsage;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->getImageId()I

    move-result v4

    sget-object v5, Lcom/android/vending/model/Asset$BitmapState;->ERROR:Lcom/android/vending/model/Asset$BitmapState;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/vending/model/Asset;->setBitmapState(Lcom/android/vending/model/Asset$AppImageUsage;ILcom/android/vending/model/Asset$BitmapState;)V

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v2           #parameters:Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
    :cond_0
    iget-object v3, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->this$0:Lcom/android/vending/AssetItemAdapter;

    iget-object v4, p0, Lcom/android/vending/AssetItemAdapter$ImagesRequest;->mRequestedParameters:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/android/vending/AssetItemAdapter;->notifyImagesLoadError(Ljava/util/List;)V

    .line 899
    return-void
.end method
