.class public Lcom/google/android/music/DownloadQueueActivity;
.super Landroid/app/ListActivity;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/DownloadQueueActivity$3;,
        Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DownloadQueue"


# instance fields
.field private mAdapter:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private final mRequeryOnChangeContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "DownloadQueue"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/DownloadQueueActivity;->LOGV:Z

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reason"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DownloadStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/DownloadQueueActivity;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/DownloadQueueActivity;->mAdapter:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;

    .line 86
    new-instance v0, Lcom/google/android/music/DownloadQueueActivity$2;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/DownloadQueueActivity$2;-><init>(Lcom/google/android/music/DownloadQueueActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/DownloadQueueActivity;->mRequeryOnChangeContentObserver:Landroid/database/ContentObserver;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/DownloadQueueActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/music/DownloadQueueActivity;->init(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/music/DownloadQueueActivity;->QUERY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    const v1, 0x7f0f003f

    .line 108
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity;->mAdapter:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 109
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/android/music/DownloadQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/music/DownloadQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/DownloadQueueActivity;->requestWindowFeature(I)Z

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/DownloadQueueActivity;->requestWindowFeature(I)Z

    .line 51
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/DownloadQueueActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 52
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    const v1, 0x7f0c003b

    invoke-virtual {p0, v1}, Lcom/google/android/music/DownloadQueueActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0, v3}, Lcom/google/android/music/activitymanagement/AppState;->setBottomBarEnabled(Z)V

    .line 55
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/google/android/music/DownloadQueueActivity;->setContentView(I)V

    .line 57
    new-instance v0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/DownloadQueueActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;-><init>(Lcom/google/android/music/DownloadQueueActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/DownloadQueueActivity;->mAdapter:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;

    .line 58
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity;->mAdapter:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/music/DownloadQueueActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/music/DownloadQueueActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/music/DownloadQueueActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/DownloadQueueActivity;->mRequeryOnChangeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    new-instance v0, Lcom/google/android/music/DownloadQueueActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/DownloadQueueActivity$1;-><init>(Lcom/google/android/music/DownloadQueueActivity;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/music/DownloadQueueActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/DownloadQueueActivity;->mRequeryOnChangeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 83
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 84
    return-void
.end method
