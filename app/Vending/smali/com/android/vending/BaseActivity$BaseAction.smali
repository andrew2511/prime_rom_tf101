.class public abstract Lcom/android/vending/BaseActivity$BaseAction;
.super Lcom/android/vending/BaseActivity$BackendAction;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;,
        Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;
    }
.end annotation


# instance fields
.field protected mActionRequestManager:Lcom/android/vending/api/RequestManager;

.field protected mActionRunnable:Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

.field protected mBaseActivity:Lcom/android/vending/BaseActivity;

.field protected volatile mCanceled:Z

.field private mLoadedFromCache:Z

.field protected final mReuseRequestManager:Z

.field private mStartTime:J

.field private mTriedLoadFromCache:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1508
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BackendAction;-><init>()V

    .line 1494
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    .line 1497
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    .line 1498
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mLoadedFromCache:Z

    .line 1509
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mReuseRequestManager:Z

    .line 1510
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "baseActivity"

    .prologue
    .line 1513
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;Z)V

    .line 1514
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/BaseActivity;Z)V
    .locals 1
    .parameter "baseActivity"
    .parameter "reuseRequestManager"

    .prologue
    const/4 v0, 0x0

    .line 1516
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BackendAction;-><init>()V

    .line 1494
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    .line 1497
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    .line 1498
    iput-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mLoadedFromCache:Z

    .line 1517
    invoke-virtual {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 1518
    iput-boolean p2, p0, Lcom/android/vending/BaseActivity$BaseAction;->mReuseRequestManager:Z

    .line 1519
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/BaseActivity$BaseAction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeDisplayResults()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/vending/BaseActivity$BaseAction;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1490
    iget-wide v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/vending/BaseActivity$BaseAction;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1490
    iput-wide p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mStartTime:J

    return-wide p1
.end method

.method private executeAction()V
    .locals 3

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1665
    :try_start_0
    iget-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mLoadedFromCache:Z

    if-eqz v1, :cond_0

    .line 1669
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    .line 1670
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeSubAction()V

    .line 1681
    :goto_0
    monitor-exit v0

    .line 1682
    return-void

    .line 1672
    :cond_0
    iget-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mReuseRequestManager:Z

    if-nez v1, :cond_1

    .line 1673
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    .line 1675
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideErrorUi()V

    .line 1676
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 1677
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->displayWaitingUi()V

    .line 1678
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executePrepare()V

    .line 1679
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->runRequestsInThread()V

    goto :goto_0

    .line 1681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private executeDisplayResults()V
    .locals 0

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->displayResults()V

    .line 1583
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeSubAction()V

    .line 1584
    return-void
.end method

.method private executePrepare()V
    .locals 1

    .prologue
    .line 1573
    iget-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mReuseRequestManager:Z

    if-nez v0, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->prepare()V

    .line 1576
    :cond_0
    return-void
.end method

.method private runRequestsInThread()V
    .locals 2

    .prologue
    .line 1824
    new-instance v0, Lcom/android/vending/BaseActivity$BackgroundThread;

    invoke-direct {v0, p0}, Lcom/android/vending/BaseActivity$BackgroundThread;-><init>(Ljava/lang/Runnable;)V

    .line 1825
    .local v0, activeThread:Ljava/lang/Thread;
    const-string v1, "Vending.BaseAction"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1827
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1692
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    .line 1694
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideErrorUi()V

    .line 1695
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideWaitingUi()V

    .line 1696
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    .line 1697
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    .line 1701
    :goto_0
    monitor-exit v0

    .line 1702
    return-void

    .line 1699
    :cond_0
    const-string v1, "Cancel called on action that is not active."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected displayErrorUi(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 1867
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->GENERAL_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    .line 1868
    .local v0, errorType:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;
    const-string v1, "General error in "

    .line 1870
    .local v1, message:Ljava/lang/String;
    instance-of v2, p1, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 1871
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->NETWORK_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    .line 1872
    const-string v1, "Network error in "

    .line 1878
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->GENERAL_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    if-ne v0, v2, :cond_2

    .line 1881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1887
    :goto_1
    iget-object v2, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v2, v0}, Lcom/android/vending/BaseActivity;->onDisplayErrorUi(Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;)V

    .line 1888
    return-void

    .line 1873
    :cond_1
    instance-of v2, p1, Lcom/android/vending/api/ApiException;

    if-eqz v2, :cond_0

    .line 1874
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->SERVER_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    .line 1875
    const-string v1, "Server error in "

    goto :goto_0

    .line 1884
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract displayResults()V
.end method

.method protected displayWaitingUi()V
    .locals 1

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/vending/BaseActivity;->showIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V

    .line 1846
    return-void
.end method

.method protected executeSubAction()V
    .locals 2

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v0, v0, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/BaseActivity$BaseAction$1;

    invoke-direct {v1, p0}, Lcom/android/vending/BaseActivity$BaseAction$1;-><init>(Lcom/android/vending/BaseActivity$BaseAction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1601
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1565
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 1

    .prologue
    .line 1611
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hideErrorUi()V
    .locals 0

    .prologue
    .line 1898
    return-void
.end method

.method protected hideWaitingUi()V
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/vending/BaseActivity;->hideIndeterminateProgress(Lcom/android/vending/BaseActivity$BackendAction;)V

    .line 1856
    return-void
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1552
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v1, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRequestComplete(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 1619
    return-void
.end method

.method public retry()V
    .locals 3

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1651
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    const-string v1, "Cannot retry an action that is not active."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1653
    monitor-exit v0

    .line 1661
    :goto_0
    return-void

    .line 1655
    :cond_0
    iget-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 1656
    const-string v1, "Cannot retry an action that is canceled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1657
    monitor-exit v0

    goto :goto_0

    .line 1660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1659
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeAction()V

    .line 1660
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1729
    const/4 v7, 0x0

    .line 1730
    .local v7, success:Z
    const/4 v0, 0x0

    .line 1731
    .local v0, authFailure:Z
    const/4 v2, 0x0

    .line 1732
    .local v2, exception:Ljava/lang/Throwable;
    iget-boolean v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    if-eqz v9, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRunnable:Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

    if-eqz v9, :cond_2

    .line 1738
    iget-object v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRunnable:Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

    iget-object v10, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-interface {v9, v10}, Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;->run(Lcom/android/vending/api/RequestManager;)V
    :try_end_0
    .catch Lcom/android/vending/api/AuthFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 1742
    :goto_1
    const/4 v7, 0x1

    .line 1758
    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/vending/BaseActivity$BaseAction;->onRequestComplete(Z)V

    .line 1761
    move v5, v7

    .line 1762
    .local v5, finalSuccess:Z
    move v3, v0

    .line 1763
    .local v3, finalAuthFailure:Z
    move-object v4, v2

    .line 1764
    .local v4, finalException:Ljava/lang/Throwable;
    iget-boolean v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    if-nez v9, :cond_0

    .line 1765
    new-instance v6, Lcom/android/vending/BaseActivity$BaseAction$2;

    invoke-direct {v6, p0, v3, v5, v4}, Lcom/android/vending/BaseActivity$BaseAction$2;-><init>(Lcom/android/vending/BaseActivity$BaseAction;ZZLjava/lang/Throwable;)V

    .line 1812
    .local v6, resultHandler:Ljava/lang/Runnable;
    iget-object v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v9, v9, Lcom/android/vending/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1740
    .end local v3           #finalAuthFailure:Z
    .end local v4           #finalException:Ljava/lang/Throwable;
    .end local v5           #finalSuccess:Z
    .end local v6           #resultHandler:Ljava/lang/Runnable;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->getAccount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/vending/api/AuthFailureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 1743
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 1744
    .local v1, e:Lcom/android/vending/api/AuthFailureException;
    const/4 v0, 0x1

    .line 1745
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AuthFailureException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1746
    .end local v1           #e:Lcom/android/vending/api/AuthFailureException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 1747
    .local v1, e:Lcom/android/vending/api/ApiException;
    move-object v2, v1

    .line 1748
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApiException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1749
    .end local v1           #e:Lcom/android/vending/api/ApiException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 1750
    .local v1, e:Ljava/io/IOException;
    move-object v2, v1

    .line 1751
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1752
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v9

    move-object v8, v9

    .line 1754
    .local v8, t:Ljava/lang/Throwable;
    move-object v2, v8

    .line 1755
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uncaught runtime error in doRequests(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setActionRunnable(Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRunnable:Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;

    .line 1720
    return-void
.end method

.method public setActivity(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "baseActivity"

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 1529
    iget-object v0, p1, Lcom/android/vending/BaseActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    iput-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    .line 1530
    return-void
.end method

.method public setActivity(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "baseActivity"
    .parameter "requestManager"

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 1541
    iput-object p2, p0, Lcom/android/vending/BaseActivity$BaseAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    .line 1542
    return-void
.end method

.method protected setLoadedFromCache(Z)V
    .locals 0
    .parameter "isLoadedFromCache"

    .prologue
    .line 1557
    iput-boolean p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mLoadedFromCache:Z

    .line 1558
    return-void
.end method

.method protected setTriedLoadFromCache(Z)V
    .locals 0
    .parameter "triedLoadFromCache"

    .prologue
    .line 1561
    iput-boolean p1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mTriedLoadFromCache:Z

    .line 1562
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1626
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->start(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mStartTime:J

    .line 1628
    iget-object v0, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    monitor-enter v0

    .line 1629
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/BaseActivity$BaseAction;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start an action more than once at the same time. Asked to run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 1632
    monitor-exit v0

    .line 1644
    :goto_0
    return-void

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v1, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    if-eqz v1, :cond_1

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start more than one action at a time. Already running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v2, v2, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and asked to run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 1638
    monitor-exit v0

    goto :goto_0

    .line 1643
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1640
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iput-object p0, v1, Lcom/android/vending/BaseActivity;->mExecutingAction:Lcom/android/vending/BaseActivity$BackendAction;

    .line 1641
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/vending/BaseActivity$BaseAction;->mCanceled:Z

    .line 1642
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;->executeAction()V

    .line 1643
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
