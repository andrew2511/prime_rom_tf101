.class public Lcom/newspaperdirect/pressreader/android/core/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final MSG_DOWNLOAD_COMPLETE:I = 0x6

.field public static final MSG_DOWNLOAD_PROGRESS:I = 0x5

.field public static final MSG_REGISTER_CLIENT:I = 0x1

.field public static final MSG_START_DOWNLOADING:I = 0x3

.field public static final MSG_STOP_DOWNLOADING:I = 0x4

.field public static final MSG_UNREGISTER_CLIENT:I = 0x2

.field public static final NOTIFICATION_DOWNLOAD_ID:I = 0x1


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field private mThreads:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->mClients:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->mThreads:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 62
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/DownloadService$IncomingHandler;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->mMessenger:Landroid/os/Messenger;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadService;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->mClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/DownloadService;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->startDownloading(IZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/DownloadService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->stopDownloading(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->startItemDownloading(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V

    return-void
.end method

.method private startDownloading(IZ)V
    .locals 1
    .parameter "id"
    .parameter "force"

    .prologue
    .line 83
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;IZ)V

    .line 93
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->start()V

    .line 94
    return-void
.end method

.method private startItemDownloading(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V
    .locals 2
    .parameter "item"
    .parameter "force"

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;

    invoke-direct {v0, p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {p1, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setOnDownloadProgressListener(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 137
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->mThreads:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DownloadService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/DownloadService$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private stopDownloading(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 97
    if-gez p1, :cond_2

    .line 98
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_1
    return-void

    .line 98
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 99
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->removeOnDownloadProgressListener()V

    .line 100
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->stopDownloading()V

    goto :goto_0

    .line 104
    .end local v0           #item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    :cond_2
    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItemById(J)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    .line 105
    .restart local v0       #item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->removeOnDownloadProgressListener()V

    .line 107
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->stopDownloading()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 68
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 69
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->startDownloading(IZ)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 75
    return-void
.end method
