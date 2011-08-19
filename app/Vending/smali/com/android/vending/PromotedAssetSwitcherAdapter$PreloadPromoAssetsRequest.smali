.class Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "PromotedAssetSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/PromotedAssetSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadPromoAssetsRequest"
.end annotation


# instance fields
.field private mPositionToPreload:I

.field final synthetic this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;


# direct methods
.method public constructor <init>(Lcom/android/vending/PromotedAssetSwitcherAdapter;I)V
    .locals 0
    .parameter
    .parameter "positionToPreload"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 355
    iput p2, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->mPositionToPreload:I

    .line 356
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 2
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    iget v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->mPositionToPreload:I

    invoke-static {v0, p1, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->access$200(Lcom/android/vending/PromotedAssetSwitcherAdapter;Lcom/android/vending/api/RequestManager;I)V

    .line 360
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 361
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to fetch promoted assets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-static {v0}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->access$300(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    iget v2, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->mPositionToPreload:I

    invoke-static {v1, v2}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->access$400(Lcom/android/vending/PromotedAssetSwitcherAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-static {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->access$500(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;->this$0:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-static {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->access$500(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->setError(Ljava/lang/Throwable;)V

    .line 371
    :cond_0
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
