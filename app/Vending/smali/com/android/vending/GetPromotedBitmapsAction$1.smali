.class Lcom/android/vending/GetPromotedBitmapsAction$1;
.super Ljava/lang/Object;
.source "GetPromotedBitmapsAction.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/GetPromotedBitmapsAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/GetPromotedBitmapsAction;


# direct methods
.method constructor <init>(Lcom/android/vending/GetPromotedBitmapsAction;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/vending/GetPromotedBitmapsAction$1;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 92
    .local v0, asset:Lcom/android/vending/model/Asset;
    iget-object v4, p0, Lcom/android/vending/GetPromotedBitmapsAction$1;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget-object v4, v4, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 93
    .local v1, assetIndex:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction$1;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget v5, v5, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    if-lt v4, v5, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction$1;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget v5, v5, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    if-ge v4, v5, :cond_0

    .line 99
    iget-object v4, p0, Lcom/android/vending/GetPromotedBitmapsAction$1;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget-object v4, v4, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/vending/GetPromotedBitmapsAction$1;->this$0:Lcom/android/vending/GetPromotedBitmapsAction;

    iget v6, v6, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    sub-int/2addr v5, v6

    aget-object v2, v4, v5

    .line 100
    .local v2, data:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    iput-object v0, v2, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    goto :goto_0

    .line 102
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v1           #assetIndex:Ljava/lang/Integer;
    .end local v2           #data:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    :cond_1
    return-void
.end method
