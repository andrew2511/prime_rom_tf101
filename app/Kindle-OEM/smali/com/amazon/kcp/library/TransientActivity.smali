.class public Lcom/amazon/kcp/library/TransientActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "TransientActivity.java"


# static fields
.field public static final EXTRA_DOCUMENT_TYPE:Ljava/lang/String; = "DownloadingDocumentType"

.field public static final EXTRA_DOWNLOADING_BOOK_ASIN:Ljava/lang/String; = "DownloadingBookAsin"

.field public static final EXTRA_DOWNLOADING_BOOK_IS_SAMPLE:Ljava/lang/String; = "DownloadingBookIsSample"

.field public static final EXTRA_DOWNLOADING_FROM_SYNC:Ljava/lang/String; = "DownloadingBookFromSync"


# instance fields
.field private asin:Ljava/lang/String;

.field private documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

.field private final downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

.field private downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

.field private final downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

.field private downloadProgressPercent:Landroid/widget/TextView;

.field private downloadProgressStatus:Landroid/widget/TextView;

.field private downloadProgressText:Landroid/widget/TextView;

.field private downloadTitle:Landroid/widget/TextView;

.field private isPaused:Z

.field private isSample:Z

.field private metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;

.field private onDownloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

.field private onItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private onItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private onItemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

.field private pauseResumeButton:Landroid/widget/TextView;

.field private rootView:Landroid/view/ViewGroup;

.field private startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

.field private syncAndDownload:Z

.field private translucentMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    .line 94
    new-instance v0, Lcom/amazon/kcp/library/TransientActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/TransientActivity$1;-><init>(Lcom/amazon/kcp/library/TransientActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 104
    new-instance v0, Lcom/amazon/kcp/library/TransientActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/TransientActivity$2;-><init>(Lcom/amazon/kcp/library/TransientActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 114
    new-instance v0, Lcom/amazon/kcp/library/TransientActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/TransientActivity$3;-><init>(Lcom/amazon/kcp/library/TransientActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->onDownloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 132
    new-instance v0, Lcom/amazon/kcp/library/TransientActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/TransientActivity$4;-><init>(Lcom/amazon/kcp/library/TransientActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 145
    new-instance v0, Lcom/amazon/kcp/library/TransientActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/TransientActivity$5;-><init>(Lcom/amazon/kcp/library/TransientActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .line 173
    new-instance v0, Lcom/amazon/kcp/library/TransientActivity$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/TransientActivity$6;-><init>(Lcom/amazon/kcp/library/TransientActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/TransientActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/TransientActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->setDownloadProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/library/TransientActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->syncAndDownload:Z

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Lcom/amazon/kcp/library/models/IDownloadBookItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/TransientActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/TransientActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    return v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/TransientActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->setupForDownloadingItem()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/TransientActivity;->matchesOurItem(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/TransientActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/library/TransientActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    return v0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    return-object v0
.end method

.method private cleanUpDownloadItem()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 408
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 410
    :cond_1
    return-void
.end method

.method private matchesOurItem(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z
    .locals 3
    .parameter "wrapper"

    .prologue
    .line 540
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v0

    .line 542
    .local v0, processedItem:Lcom/amazon/kcp/application/models/internal/TodoItem;
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerCallbacks()V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 383
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 384
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->register(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 385
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->onDownloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 386
    return-void
.end method

.method private resumeDownloadAndUpdateUi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 585
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryController;

    .line 589
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookByAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v1

    .line 590
    if-eqz v1, :cond_0

    .line 593
    invoke-direct {p0, v4}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(I)V

    .line 596
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryController;->getArchivedItemsPage()Lcom/amazon/kcp/library/pages/IArchivedItemsPage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/pages/IArchivedItemsPage;->downloadBook(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 639
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->syncAndDownload:Z

    if-eqz v0, :cond_2

    .line 601
    invoke-direct {p0, v4}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(I)V

    .line 604
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadStatusWatcher()Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/application/IDownloadStatusWatcher;->getStatusFromAsin(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/application/IDownloadStatus;
    :try_end_0
    .catch Lcom/amazon/kcp/store/StatusNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 616
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDownloadStatus;->getStatus()Lcom/amazon/kcp/application/IDownloadStatus$Status;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/IDownloadStatus$Status;->SyncFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    if-ne v1, v2, :cond_1

    .line 619
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->syncWithRemoteTodoLookingForContent(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    goto :goto_0

    .line 612
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transient screen looked for asin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v5

    .line 613
    goto :goto_1

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->addItemToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    .line 625
    invoke-interface {v0, v5}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->execute(Lcom/amazon/foundation/IStatusTracker;)V

    goto :goto_0

    .line 635
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->setResult(I)V

    .line 637
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->finish()V

    goto :goto_0
.end method

.method private setDownloadProgress()V
    .locals 6

    .prologue
    .line 496
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getMaxDownloadProgress()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->getContentDownloadProgressPercent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 502
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    sget-object v2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    iget-object v4, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v2, v3, v4}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 505
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0062

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {p0, v0}, Lcom/amazon/android/util/UIUtils;->generateByteDownloadStatusString(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {p0, v1}, Lcom/amazon/android/util/UIUtils;->generateByteDownloadStatusString(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 519
    :cond_1
    return-void
.end method

.method private setupForDownloadingItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 414
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_1

    .line 416
    const v0, 0x7f0c00ce

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 419
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverSource(Lcom/amazon/kcp/library/models/IListableBook;ZF)V

    .line 421
    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 422
    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->translucentMode:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 423
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setTitle(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 425
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    const/4 v3, 0x1

    invoke-static {v1, v3, p0}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/ui/BookCoverView;->setAuthor(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 426
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setSample(Z)V

    .line 429
    const v0, 0x7f0c00c6

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const v0, 0x7f0c00c7

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {v1, v4, p0}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->updateState()V

    .line 435
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookByAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 443
    :cond_1
    return-void

    .line 422
    :cond_2
    sget-object v2, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    goto :goto_0
.end method

.method private tryToOpenBook()V
    .locals 5

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 524
    .local v0, bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ReaderController;

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    .line 528
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->setResult(I)V

    .line 529
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->finish()V

    .line 530
    return-void
.end method

.method private unregisterCallbacks()V
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessingEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemProcessingCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 391
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemProcessedEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemProcessedCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 392
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->getItemErrorEvent()Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->onItemErrorCallback:Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IStatefulTodoItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;)Z

    .line 393
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->onDownloadingItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 395
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->cleanUpDownloadItem()V

    .line 396
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->setDownloadProgress()V

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(I)V

    .line 453
    :cond_0
    return-void
.end method

.method private updateUIState(I)V
    .locals 6
    .parameter "downloadState"

    .prologue
    const v5, 0x7f0b001b

    const/4 v4, 0x1

    const v3, 0x7f0b001a

    const/4 v2, 0x0

    .line 457
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    const v1, 0x7f0b005a

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->pauseResumeButton:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iput-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    const v1, 0x7f0b004c

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f0b005f

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->pauseResumeButton:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iput-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    goto :goto_0

    .line 471
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f0b005c

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->pauseResumeButton:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iput-boolean v4, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    goto :goto_0

    .line 478
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 480
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f0b005b

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->pauseResumeButton:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iput-boolean v4, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    goto :goto_0

    .line 485
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f0b005d

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->pauseResumeButton:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/TransientActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iput-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancelPressed(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->unregisterCallbacks()V

    .line 696
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->removeItemFromTodoIfExists(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z

    .line 698
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_0

    .line 702
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->setDownloadState(I)V

    .line 703
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    .line 706
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->setResult(I)V

    .line 707
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->finish()V

    .line 708
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 208
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->translucentMode:Z

    .line 212
    const v0, 0x7f030049

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    .line 213
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->translucentMode:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->setContentView(Landroid/view/View;)V

    .line 220
    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 221
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressText:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0c00ca

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressPercent:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0c00cd

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadTitle:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0c00c9

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressStatus:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f0c00cc

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->pauseResumeButton:Landroid/widget/TextView;

    .line 226
    new-instance v0, Lcom/amazon/android/util/DownloadProgressBarState;

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/util/DownloadProgressBarState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    .line 230
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadingBookAsin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find valid ASIN"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadingBookIsSample"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    .line 236
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    if-nez v0, :cond_2

    .line 239
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadingBookFromSync"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->syncAndDownload:Z

    .line 243
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DownloadingDocumentType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    if-nez v0, :cond_8

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookByAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v0

    .line 250
    if-nez v0, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 257
    :cond_3
    if-eqz v0, :cond_6

    .line 260
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->getTodoTypeFromBookType(I)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 278
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->registerCallbacks()V

    .line 281
    const v0, 0x7f0c00ce

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 282
    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/ui/Cover;->setGravity(I)V

    .line 283
    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/ui/Cover;->setPageEffects(Lcom/amazon/kcp/library/ui/Cover$PageEffects;)V

    .line 285
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v1, :cond_9

    .line 288
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->setupForDownloadingItem()V

    .line 299
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-nez v0, :cond_5

    .line 301
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->syncAndDownload:Z

    if-eqz v0, :cond_c

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadStatusWatcher()Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IDownloadStatusWatcher;->getStatusFromAsin(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/application/IDownloadStatus;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDownloadStatus;->getStatus()Lcom/amazon/kcp/application/IDownloadStatus$Status;

    move-result-object v0

    .line 310
    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->DownloadFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->SyncFailed:Lcom/amazon/kcp/application/IDownloadStatus$Status;

    if-ne v0, v1, :cond_a

    .line 312
    :cond_4
    const/4 v0, 0x3

    .line 323
    :goto_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(I)V
    :try_end_0
    .catch Lcom/amazon/kcp/store/StatusNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_5
    :goto_3
    return-void

    .line 265
    :cond_6
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isSample:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    :goto_4
    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_4

    .line 271
    :cond_8
    invoke-static {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    goto :goto_0

    .line 293
    :cond_9
    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-static {v2}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverSource(Ljava/lang/String;IZF)V

    goto :goto_1

    .line 314
    :cond_a
    :try_start_1
    sget-object v1, Lcom/amazon/kcp/application/IDownloadStatus$Status;->Queued:Lcom/amazon/kcp/application/IDownloadStatus$Status;
    :try_end_1
    .catch Lcom/amazon/kcp/store/StatusNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v1, :cond_b

    .line 316
    const/4 v0, 0x6

    goto :goto_2

    .line 320
    :cond_b
    const/4 v0, 0x2

    goto :goto_2

    .line 327
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transient screen looked for asin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->tryToOpenBook()V

    goto :goto_3

    .line 335
    :cond_c
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->tryToOpenBook()V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->unregisterCallbacks()V

    .line 345
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 346
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 548
    packed-switch p1, :pswitch_data_0

    .line 561
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/ReddingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 557
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->unregisterCallbacks()V

    .line 558
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->finish()V

    .line 559
    const/4 v0, 0x1

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 568
    packed-switch p1, :pswitch_data_0

    .line 575
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/ReddingActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 573
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 568
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPausePressed(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x5

    .line 647
    iget-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    .line 653
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->setDownloadProgress()V

    .line 654
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->resumeDownloadAndUpdateUi()V

    .line 685
    :goto_0
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/TransientActivity;->isPaused:Z

    .line 663
    invoke-direct {p0}, Lcom/amazon/kcp/library/TransientActivity;->setDownloadProgress()V

    .line 668
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->downloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->setDownloadState(I)V

    .line 677
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity;->metadata:Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->setDownloadState(I)V

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->documentType:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->removeItemFromTodoIfExists(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z

    goto :goto_0

    .line 674
    :cond_2
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/TransientActivity;->updateUIState(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 354
    iget-boolean v3, p0, Lcom/amazon/kcp/library/TransientActivity;->translucentMode:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 357
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 359
    iget-object v3, p0, Lcom/amazon/kcp/library/TransientActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, child:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 361
    .local v1, childBounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    .line 376
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBounds:Landroid/graphics/Rect;
    .end local v2           #i:I
    :goto_1
    return v3

    .line 357
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childBounds:Landroid/graphics/Rect;
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBounds:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/TransientActivity;->finish()V

    .line 371
    const/4 v3, 0x1

    goto :goto_1

    .end local v2           #i:I
    :cond_2
    move v3, v7

    .line 376
    goto :goto_1
.end method
