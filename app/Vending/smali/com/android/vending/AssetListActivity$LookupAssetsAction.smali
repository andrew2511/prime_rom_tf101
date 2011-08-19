.class public Lcom/android/vending/AssetListActivity$LookupAssetsAction;
.super Lcom/android/vending/AssetListActivity$PaginationAwareAction;
.source "AssetListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LookupAssetsAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/AssetListActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    .line 314
    invoke-direct {p0, p1, p1}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;-><init>(Lcom/android/vending/AssetListActivity;Lcom/android/vending/BaseActivity;)V

    .line 315
    return-void
.end method


# virtual methods
.method protected displayErrorUi(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v0, v0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->displayErrorUi(Ljava/lang/Throwable;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity;->showErrorFooter()V

    goto :goto_0
.end method

.method public displayResults()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v1, v1, Lcom/android/vending/AssetListActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    invoke-virtual {v1}, Lcom/android/vending/api/AssetService;->getNumTotalAssets()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/vending/AssetListActivity;->mNumMatchingAssets:J

    .line 332
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v0, v0, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 336
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity;->onLookupAssetsComplete()V

    .line 337
    return-void
.end method

.method protected displayWaitingUi()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->displayWaitingUi()V

    .line 342
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity;->showLoadingFooter()V

    .line 343
    return-void
.end method

.method protected hideErrorUi()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->hideErrorUi()V

    .line 365
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity;->hideErrorFooter()V

    .line 366
    return-void
.end method

.method protected hideWaitingUi()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;->hideWaitingUi()V

    .line 348
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity;->hideLoadingFooter()V

    .line 349
    return-void
.end method

.method public loadMore()V
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v1, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    iget-object v1, v1, Lcom/android/vending/AssetListActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getNumAssets()I

    move-result v1

    iput v1, v0, Lcom/android/vending/AssetListActivity;->mStartIndex:I

    .line 320
    invoke-virtual {p0}, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->start()V

    .line 322
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/vending/AssetListActivity$LookupAssetsAction;->this$0:Lcom/android/vending/AssetListActivity;

    invoke-virtual {v0}, Lcom/android/vending/AssetListActivity;->prepareRequest()V

    .line 327
    return-void
.end method
