.class public Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "InitializeMarketAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/InitializeMarketAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsynchReconstructDatabase"
.end annotation


# static fields
.field private static final sReconstructDatabaseLock:Ljava/lang/Object;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mRetrieveFullHistory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 399
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->sReconstructDatabaseLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter "context"
    .parameter "retrieveFullHistory"
    .parameter "account"
    .parameter "latch"

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 405
    iput-boolean p2, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mRetrieveFullHistory:Z

    .line 406
    iput-object p1, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mContext:Landroid/content/Context;

    .line 407
    iput-object p3, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mAccount:Ljava/lang/String;

    .line 408
    iput-object p4, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 409
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 10
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    sget-object v7, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->sReconstructDatabaseLock:Ljava/lang/Object;

    monitor-enter v7

    .line 413
    :try_start_0
    new-instance v6, Lcom/android/vending/api/ReconstructDatabaseService;

    invoke-direct {v6, p1}, Lcom/android/vending/api/ReconstructDatabaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 414
    .local v6, service:Lcom/android/vending/api/ReconstructDatabaseService;
    new-instance v4, Lcom/android/vending/model/ReconstructDatabaseRequest;

    invoke-direct {v4}, Lcom/android/vending/model/ReconstructDatabaseRequest;-><init>()V

    .line 415
    .local v4, reconstructRequest:Lcom/android/vending/model/ReconstructDatabaseRequest;
    iget-boolean v8, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mRetrieveFullHistory:Z

    invoke-virtual {v4, v8}, Lcom/android/vending/model/ReconstructDatabaseRequest;->setRetrieveFullHistory(Z)V

    .line 416
    iget-object v8, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mAccount:Ljava/lang/String;

    invoke-virtual {v6, v8, v4}, Lcom/android/vending/api/ReconstructDatabaseService;->queueRequest(Ljava/lang/String;Lcom/android/vending/model/ReconstructDatabaseRequest;)V

    .line 418
    iget-object v8, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v6}, Lcom/android/vending/api/ReconstructDatabaseService;->getResponse()Lcom/android/vending/model/ReconstructDatabaseResponse;

    move-result-object v5

    .line 421
    .local v5, reconstructResponse:Lcom/android/vending/model/ReconstructDatabaseResponse;
    invoke-virtual {v5}, Lcom/android/vending/model/ReconstructDatabaseResponse;->getNumAssets()I

    move-result v3

    .line 422
    .local v3, numAssets:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v0, assetIdentifiers:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/AssetIdentifier;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 424
    iget-object v8, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mAccount:Ljava/lang/String;

    invoke-virtual {v5, v1, v8}, Lcom/android/vending/model/ReconstructDatabaseResponse;->getAssetIdentifier(ILjava/lang/String;)Lcom/android/vending/model/AssetIdentifier;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_0
    if-lez v3, :cond_1

    .line 427
    iget-object v8, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/android/vending/api/LocalAssetDatabase;->updateFromReconstruct(Landroid/content/Context;Ljava/util/List;)V

    .line 429
    :cond_1
    iget-boolean v8, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mRetrieveFullHistory:Z

    if-eqz v8, :cond_2

    .line 430
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/vending/VendingApplication;->getVersionCode()I

    move-result v2

    .line 431
    .local v2, marketVersion:I
    sget-object v8, Lcom/android/vending/util/VendingPreferences;->RECONCILED_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 433
    .end local v2           #marketVersion:I
    :cond_2
    iget-object v8, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 434
    monitor-exit v7

    .line 435
    return-void

    .line 434
    .end local v0           #assetIdentifiers:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/AssetIdentifier;>;"
    .end local v1           #i:I
    .end local v3           #numAssets:I
    .end local v4           #reconstructRequest:Lcom/android/vending/model/ReconstructDatabaseRequest;
    .end local v5           #reconstructResponse:Lcom/android/vending/model/ReconstructDatabaseResponse;
    .end local v6           #service:Lcom/android/vending/api/ReconstructDatabaseService;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/vending/InitializeMarketAction$AsynchReconstructDatabase;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error on AsynchReconstructDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 444
    return-void
.end method
