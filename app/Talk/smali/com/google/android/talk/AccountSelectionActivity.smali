.class public Lcom/google/android/talk/AccountSelectionActivity;
.super Landroid/app/ListActivity;
.source "AccountSelectionActivity.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AccountSelectionActivity$ConnectionErrorCallback;,
        Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;,
        Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final ACCOUNT_LIST_WIDTH:I

.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

.field private mAddingAccount:Z

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

.field private mConnectionRetry:I

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorToast:Landroid/widget/Toast;

.field private final mHandler:Landroid/os/Handler;

.field private mImSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mLogLevel:I

.field private mProgressText:Landroid/widget/TextView;

.field private mSessionDispatchWindowOpen:Z

.field private mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "username"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/AccountSelectionActivity;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    .line 132
    const/16 v0, 0x258

    iput v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->ACCOUNT_LIST_WIDTH:I

    .line 168
    new-instance v0, Lcom/google/android/talk/AccountSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AccountSelectionActivity$1;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    .line 607
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/AccountSelectionActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->signIn(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/AccountSelectionActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->displayPendingConnectMode(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/talk/AccountSelectionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->hideNetworkError()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->serviceStateChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForConnectionStateChanges()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/AccountSelectionActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->signOut(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/AccountSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/AccountSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/talk/AccountSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/talk/AccountSelectionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/AccountSelectionActivity;)Lcom/google/android/talk/AccountListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/AccountSelectionActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity;->showNetworkError(I)V

    return-void
.end method

.method private clearAccountsLoading()V
    .locals 4

    .prologue
    .line 386
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    if-eqz v3, :cond_2

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v3}, Lcom/google/android/talk/AccountListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 389
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v3, v2}, Lcom/google/android/talk/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 390
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-boolean v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    if-eqz v3, :cond_0

    .line 391
    const/4 v1, 0x1

    .line 392
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    .line 388
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_1
    if-eqz v1, :cond_2

    .line 396
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v3}, Lcom/google/android/talk/AccountListAdapter;->notifyDataSetChanged()V

    .line 399
    .end local v1           #changed:Z
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private completeSetupWithAccounts(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v5, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/AccountListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    .line 377
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/AccountSelectionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 382
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->clearAccountsLoading()V

    .line 383
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountListAdapter;->clear()V

    .line 380
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/AccountListAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private displayAccounts()V
    .locals 3

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->hideMessage()V

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 818
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    invoke-direct {p0, v0}, Lcom/google/android/talk/AccountSelectionActivity;->completeSetupWithAccounts(Ljava/util/List;)V

    .line 819
    new-instance v1, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;-><init>(Lcom/google/android/talk/AccountSelectionActivity;Ljava/util/List;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 820
    return-void
.end method

.method private displayLoadingAccountsMode()V
    .locals 2

    .prologue
    .line 549
    iget v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 550
    const-string v0, "displayLoadingAccountsMode"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 553
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    return-void
.end method

.method private displayPendingConnectMode(Z)V
    .locals 3
    .parameter "noNetwork"

    .prologue
    const/4 v2, 0x1

    .line 596
    iget v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    if-lt v0, v2, :cond_0

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPendingConnectMode: showProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 600
    :cond_0
    if-eqz p1, :cond_2

    .line 601
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 605
    :goto_1
    return-void

    .line 597
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hideMessage()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    return-void
.end method

.method private hideNetworkError()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    .line 546
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 135
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AccountSelectionActivity] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method private registerForAccountListChanged()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 306
    return-void
.end method

.method private registerForConnectionStateChanges()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 743
    iget v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    if-lt v7, v10, :cond_0

    .line 744
    const-string v7, "registerForConnectionStateChanges"

    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 789
    :cond_1
    :goto_0
    return-void

    .line 750
    :cond_2
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v7}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 751
    .local v1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const/4 v5, 0x0

    .line 752
    .local v5, retry:Z
    monitor-enter v1

    .line 753
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 754
    .local v4, len:I
    iget v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    if-lt v7, v10, :cond_3

    .line 755
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerForConnectionStateChanges account cnt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 757
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 758
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 759
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-wide v8, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/talk/TalkApp;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 760
    .local v6, session:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v6, :cond_5

    .line 762
    :try_start_1
    iget v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    if-lt v7, v10, :cond_4

    .line 763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerForConnectionStateChanges account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 765
    :cond_4
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-interface {v6, v7}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 757
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 766
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 767
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "talk"

    const-string v8, "registerForConnectionStateChanges caught "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 781
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v6           #session:Lcom/google/android/gtalkservice/IImSession;
    :catchall_0
    move-exception v7

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 770
    .restart local v0       #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v3       #i:I
    .restart local v4       #len:I
    .restart local v6       #session:Lcom/google/android/gtalkservice/IImSession;
    :cond_5
    :try_start_3
    iget v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    if-lt v7, v10, :cond_6

    .line 771
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerForConnectionStateChanges session null for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " account id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 777
    :cond_6
    const/4 v5, 0x1

    goto :goto_2

    .line 781
    .end local v0           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v6           #session:Lcom/google/android/gtalkservice/IImSession;
    :cond_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 782
    if-eqz v5, :cond_1

    iget v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionRetry:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionRetry:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 783
    iget-object v7, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/talk/AccountSelectionActivity$4;

    invoke-direct {v8, p0}, Lcom/google/android/talk/AccountSelectionActivity$4;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 708
    iget v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    if-lt v0, v1, :cond_0

    .line 709
    const-string v0, "registerForServiceStateChanged"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 711
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mSessionDispatchWindowOpen:Z

    .line 712
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/AccountSelectionActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/talk/AccountSelectionActivity$3;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 717
    return-void
.end method

.method private serviceStateChanged()V
    .locals 3

    .prologue
    .line 792
    iget v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceStateChanged mSessionDispatchWindowOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mSessionDispatchWindowOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 796
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mSessionDispatchWindowOpen:Z

    if-nez v1, :cond_1

    .line 811
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 802
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_2

    .line 803
    const-string v1, "service connected"

    invoke-static {v1}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->displayAccounts()V

    .line 805
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->unregisterAllSessions()V

    .line 806
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 807
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForConnectionStateChanges()V

    goto :goto_0

    .line 809
    :cond_2
    const-string v1, "service disconnected"

    invoke-static {v1}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNetworkError(I)V
    .locals 2
    .parameter "stringRes"

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 587
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 593
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorToast:Landroid/widget/Toast;

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method

.method private signIn(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 505
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v1}, Lcom/google/android/talk/AccountListAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 510
    iget v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    if-lt v1, v5, :cond_2

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick: mAccountInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 517
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {v1, p0}, Lcom/google/android/talk/AccountLoginUtils;->setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 520
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v0

    .line 522
    .local v0, alreadySignedIn:Z
    if-eqz v0, :cond_4

    .line 523
    iput-boolean v5, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    .line 524
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {v1, p0}, Lcom/google/android/talk/AccountSelectionActivity;->startBuddyListComboActivity(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    goto :goto_0

    .line 530
    :cond_4
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-boolean v5, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    .line 531
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v1}, Lcom/google/android/talk/AccountListAdapter;->notifyDataSetChanged()V

    .line 533
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp;->setCurrentAccount(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 535
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-static {v1, v2, v3}, Lcom/google/android/talk/AccountLoginUtils;->signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;)Z

    goto :goto_0
.end method

.method private signOut(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 478
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountListAdapter:Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/talk/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 479
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 480
    :cond_0
    const-string v3, "signOut failed"

    invoke-static {v3}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 483
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/talk/TalkApp;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    .line 484
    .local v2, session:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v2, :cond_1

    .line 485
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IImSession;->logout()V

    .line 489
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v3}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 490
    .local v0, activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 491
    iget-object v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v3, v4}, Lcom/google/android/talk/AccountLoginUtils;->setInactiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    .end local v0           #activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2           #session:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 495
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "talk"

    const-string v4, "RemoteException failure"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startAccountSelectionActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 823
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 824
    const-class v1, Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 825
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 826
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 827
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 828
    return-void
.end method

.method public static startAddAccountActivity(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account_types"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.google"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 847
    return-void
.end method

.method public static startBuddyListComboActivity(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBuddyListComboActivity: accountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 834
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 835
    const-class v1, Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 836
    const-string v1, "username"

    iget-object v2, p0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 840
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 841
    return-void
.end method

.method private unregisterAllSessions()V
    .locals 7

    .prologue
    .line 728
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 729
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 731
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mImSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gtalkservice/IImSession;

    .line 732
    .local v3, session:Lcom/google/android/gtalkservice/IImSession;
    iget v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterAllSessions account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 735
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    invoke-interface {v3, v4}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v3           #session:Lcom/google/android/gtalkservice/IImSession;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 737
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "talk"

    const-string v5, "unregisterAllSessions caught "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 740
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private unregisterForAccountListChanged()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 310
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 721
    const-string v0, "unregisterForServiceStateChanged"

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 723
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mSessionDispatchWindowOpen:Z

    .line 724
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceStateChangedCallback(Landroid/os/Handler;)V

    .line 725
    return-void
.end method


# virtual methods
.method public onAccountListChanged()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAddingAccount:Z

    .line 316
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAddAccountActivity(Landroid/app/Activity;)V

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForServiceStateChanged()V

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->log(Ljava/lang/String;)V

    .line 852
    sparse-switch p1, :sswitch_data_0

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 854
    :sswitch_0
    if-eq p2, v2, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    goto :goto_0

    .line 860
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAddingAccount:Z

    .line 861
    if-eq p2, v2, :cond_2

    .line 863
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    goto :goto_0

    .line 866
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->displayAccounts()V

    goto :goto_0

    .line 870
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForAccountListChanged()V

    goto :goto_0

    .line 852
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    iput-boolean v3, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    .line 144
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    .line 146
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/google/android/talk/AccountSelectionActivity;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 148
    const v0, 0x7f10000f

    invoke-virtual {p0, v0}, Lcom/google/android/talk/AccountSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mProgressText:Landroid/widget/TextView;

    .line 150
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->invalidateOptionsMenu()V

    .line 152
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->displayLoadingAccountsMode()V

    .line 153
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForAccountListChanged()V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 157
    .local v6, listView:Landroid/widget/ListView;
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 159
    .local v7, params:Landroid/view/ViewGroup$LayoutParams;
    const/16 v0, 0x258

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v7           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;-><init>(Lcom/google/android/talk/AccountSelectionActivity;Lcom/google/android/talk/AccountSelectionActivity$1;)V

    iput-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionListener:Lcom/google/android/talk/AccountSelectionActivity$MyConnectionListener;

    .line 165
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x32

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 562
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 563
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0082

    new-instance v2, Lcom/google/android/talk/AccountSelectionActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/AccountSelectionActivity$2;-><init>(Lcom/google/android/talk/AccountSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public onDisplaySettings()V
    .locals 5

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/talk/GTalkPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_0

    .line 365
    const-string v2, "accountId"

    iget-wide v3, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 367
    const-string v2, "username"

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/talk/AccountSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 471
    if-eqz p2, :cond_0

    .line 472
    invoke-direct {p0, p3}, Lcom/google/android/talk/AccountSelectionActivity;->signIn(I)V

    .line 474
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->clearAccountsLoading()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 356
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 344
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/talk/AccountSelectionActivity;->onDisplaySettings()V

    move v0, v1

    .line 345
    goto :goto_0

    .line 348
    :sswitch_1
    const-string v0, "talk_accounts"

    invoke-static {p0, v0}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 349
    goto :goto_0

    .line 352
    :sswitch_2
    iput-boolean v1, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAddingAccount:Z

    .line 353
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAddAccountActivity(Landroid/app/Activity;)V

    move v0, v1

    .line 354
    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x7f100011 -> :sswitch_2
        0x7f1000a8 -> :sswitch_0
        0x7f1000a9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 330
    const v2, 0x7f1000a8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 331
    .local v1, menuItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 332
    iget-object v2, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    .line 335
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 337
    .end local v0           #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    :cond_0
    return v3

    .line 335
    .restart local v0       #accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 267
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->clearAccountsLoading()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    .line 271
    iget-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mAddingAccount:Z

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->registerForAccountListChanged()V

    .line 274
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 298
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->clearAccountsLoading()V

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mConnectionRetry:I

    .line 301
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->checkForDataAccess(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)V

    .line 302
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/AccountSelectionActivity;->mStopped:Z

    .line 282
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->unregisterAllSessions()V

    .line 283
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->unregisterForAccountListChanged()V

    .line 284
    invoke-direct {p0}, Lcom/google/android/talk/AccountSelectionActivity;->unregisterForServiceStateChanged()V

    .line 292
    return-void
.end method
