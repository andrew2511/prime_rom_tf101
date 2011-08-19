.class Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "MyDownloadsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/MyDownloadsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownloadsLoader"
.end annotation


# instance fields
.field private volatile mAccount:Ljava/lang/String;

.field private mAlreadyRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mAssetService:Lcom/android/vending/api/AssetService;

.field final synthetic this$0:Lcom/android/vending/MyDownloadsActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/MyDownloadsActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    .line 905
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 895
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mAlreadyRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 906
    new-instance v0, Lcom/android/vending/api/AssetService;

    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v0, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 908
    iget-object v0, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/api/AssetService;->setAllowMultipleResponses(Z)V

    .line 909
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 966
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v2, v2, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v4

    .line 969
    .local v0, accountChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v1, v0}, Lcom/android/vending/MyDownloadsActivity;->access$1200(Lcom/android/vending/MyDownloadsActivity;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 992
    :cond_0
    :goto_1
    return-void

    .end local v0           #accountChanged:Z
    :cond_1
    move v0, v3

    .line 966
    goto :goto_0

    .line 975
    .restart local v0       #accountChanged:Z
    :cond_2
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const v2, 0x7f0800b3

    invoke-virtual {v1, v2}, Lcom/android/vending/MyDownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v1}, Lcom/android/vending/MyDownloadsActivity;->access$1300(Lcom/android/vending/MyDownloadsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 977
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v1}, Lcom/android/vending/MyDownloadsActivity;->access$1300(Lcom/android/vending/MyDownloadsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 978
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Lcom/android/vending/MyDownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v1}, Lcom/android/vending/MyDownloadsActivity;->access$1400(Lcom/android/vending/MyDownloadsActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v1}, Lcom/android/vending/MyDownloadsActivity;->access$700(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
.end method

.method public prepare()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 914
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v2}, Lcom/android/vending/MyDownloadsActivity;->access$700(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "mMyDownloadsLoaderFinished should be false at this point"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 920
    :cond_0
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mAlreadyRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 921
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t run a single instance of MyDownloadsLoader more than once."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 924
    :cond_1
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v2, v2, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mAccount:Ljava/lang/String;

    .line 925
    const/4 v1, 0x0

    .line 926
    .local v1, pendingDownloadAssetIds:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    sget-object v3, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PENDING_DOWNLOADS_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    invoke-static {v2, v3}, Lcom/android/vending/util/RequestIntervalUtil;->intervalPassed(Landroid/content/Context;Lcom/android/vending/util/RequestIntervalUtil$IntervalType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 931
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v2}, Lcom/android/vending/model/LocalAsset;->getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/model/LocalAsset;->getIds(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v1

    .line 933
    array-length v2, v1

    if-lez v2, :cond_2

    .line 935
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    invoke-virtual {v2}, Lcom/android/vending/api/AssetService;->invalidateMyDownloads()V

    .line 936
    sget-object v2, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PENDING_DOWNLOADS_KICK:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    invoke-static {v2}, Lcom/android/vending/util/RequestIntervalUtil;->setLastRequestTimestamp(Lcom/android/vending/util/RequestIntervalUtil$IntervalType;)V

    .line 941
    :cond_2
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v3, v3, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader$1;

    invoke-direct {v4, p0}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader$1;-><init>(Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;)V

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/vending/api/AssetService;->queueGetMyDownloads(Ljava/lang/String;Lcom/android/vending/api/AssetService$GetAssetsReceiver;[Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, v6}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->setTriedLoadFromCache(Z)V

    .line 952
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v2, v5}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    move-result v0

    .line 953
    .local v0, cached:Z
    invoke-virtual {p0, v0}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->setLoadedFromCache(Z)V

    .line 954
    return-void
.end method
