.class Lcom/google/android/apps/books/service/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/service/SyncAdapter$ResourcesQuery;,
        Lcom/google/android/apps/books/service/SyncAdapter$PagesQuery;,
        Lcom/google/android/apps/books/service/SyncAdapter$SectionsQuery;,
        Lcom/google/android/apps/books/service/SyncAdapter$VolumesQuery;,
        Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;,
        Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;,
        Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;
    }
.end annotation


# static fields
.field private static final CHECK_DOWNLOADS:Z = false

.field private static final COLLECTION_VOLUMES_SORT_ORDER:Ljava/lang/String; = "last_local_access DESC, last_access DESC, timestamp DESC"

.field private static final MAX_PARALLEL_FETCHES:I = 0x3

.field private static final MIN_FREE_BYTES:I = 0xdbba0

.field private static final PRIORITY_RANGE:I = 0x14

.field private static final PROFILE_CONTENT_FETCH:Z = false

.field private static final TAG:Ljava/lang/String; = "BooksSync"


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

.field private mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mServiceSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mSyncAccountsState:Lcom/google/android/apps/books/sync/SyncAccountsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 395
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 290
    invoke-static {}, Lcom/google/android/apps/books/service/SyncAdapter;->createDrainableExecutor()Lcom/google/android/apps/books/service/DrainableExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    .line 292
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mServiceSemaphore:Ljava/util/concurrent/Semaphore;

    .line 302
    new-instance v1, Lcom/google/android/apps/books/service/SyncAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/service/SyncAdapter$1;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;)V

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    .line 396
    new-instance v1, Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-direct {v1, p1}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mSyncAccountsState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/BooksApplication;->getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/BooksContext;

    .line 401
    .local v0, appContext:Lcom/google/android/apps/books/common/BooksContext;
    invoke-interface {v0}, Lcom/google/android/apps/books/common/BooksContext;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 402
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/service/ContentFetchService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/service/SyncAdapter;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mServiceSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/common/FileStorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/service/SyncAdapter;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->ensureVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/service/SyncAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 251
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueSectionResources(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    return-void
.end method

.method private checkVolumesDownloaded(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 863
    .local p1, volumeIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method private static createDrainableExecutor()Lcom/google/android/apps/books/service/DrainableExecutor;
    .locals 9

    .prologue
    const/4 v1, 0x3

    .line 333
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 334
    .local v6, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v8, 0x3

    .line 335
    .local v8, poolSize:I
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;-><init>(Lcom/google/android/apps/books/service/SyncAdapter$1;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 337
    .local v0, poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v1, Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method

.method private downloadVolumeContent(Landroid/accounts/Account;Landroid/database/Cursor;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 10
    .parameter "account"
    .parameter "cursor"
    .parameter "syncContext"

    .prologue
    .line 822
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, volumeId:Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 825
    .local v4, preferredMode:I
    const/4 v7, 0x1

    if-ne v4, v7, :cond_5

    const/4 v7, 0x1

    move v3, v7

    .line 826
    .local v3, preferImage:Z
    :goto_0
    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    move v1, v7

    .line 827
    .local v1, hasImageMode:Z
    :goto_1
    const/4 v7, 0x2

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    move v2, v7

    .line 828
    .local v2, hasTextMode:Z
    :goto_2
    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, title:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p0, v6, p1, v7, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueAnonymousResources(Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, enqueuedContent:Z
    if-eqz v2, :cond_1

    .line 834
    const-string v7, "BooksSync"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 835
    const-string v7, "BooksSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ensuring text for volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    invoke-direct {p0, v6, p1, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueVolumeSections(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 838
    const/4 v0, 0x1

    .line 840
    :cond_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 841
    const-string v7, "BooksSync"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 842
    const-string v7, "BooksSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ensuring pages of volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_2
    invoke-direct {p0, v6, p1, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueVolumePages(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 845
    const/4 v0, 0x1

    .line 847
    :cond_3
    if-nez v0, :cond_4

    .line 848
    const-string v7, "BooksSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no content modes available for fetching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_4
    const/4 v7, 0x0

    invoke-direct {p0, v6, p1, v7, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueStragglingResources(Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 852
    return-void

    .line 825
    .end local v0           #enqueuedContent:Z
    .end local v1           #hasImageMode:Z
    .end local v2           #hasTextMode:Z
    .end local v3           #preferImage:Z
    .end local v5           #title:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    move v3, v7

    goto/16 :goto_0

    .line 826
    .restart local v3       #preferImage:Z
    :cond_6
    const/4 v7, 0x0

    move v1, v7

    goto/16 :goto_1

    .line 827
    .restart local v1       #hasImageMode:Z
    :cond_7
    const/4 v7, 0x0

    move v2, v7

    goto/16 :goto_2
.end method

.method private downloadVolumeContent(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 9
    .parameter "account"
    .parameter "volumeId"
    .parameter "syncContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 795
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->ensureVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 796
    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-virtual {v2, p2, p1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 798
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 799
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 800
    .local v8, volumeIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 801
    .local v1, volumeUri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/apps/books/service/SyncAdapter$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 803
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 804
    .local v7, moved:Z
    if-eqz v7, :cond_0

    .line 805
    invoke-direct {p0, p1, v6, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->downloadVolumeContent(Landroid/accounts/Account;Landroid/database/Cursor;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 806
    invoke-direct {p0, v8}, Lcom/google/android/apps/books/service/SyncAdapter;->checkVolumesDownloaded(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 814
    return-void

    .line 808
    :cond_0
    :try_start_1
    const-string v2, "BooksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping download--could not find volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in volumes table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 812
    .end local v7           #moved:Z
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private downloadVolumes(Landroid/accounts/Account;[Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;)V
    .locals 6
    .parameter "account"
    .parameter "volumeIds"
    .parameter "syncContext"
    .parameter "syncUi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
        }
    .end annotation

    .prologue
    .line 771
    const/4 v4, 0x0

    .line 772
    .local v4, volumePosition:I
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 774
    .local v3, volumeId:Ljava/lang/String;
    array-length v5, p2

    invoke-interface {p4, v4, v5}, Lcom/google/android/apps/books/service/SyncService$SyncUi;->startingVolumeDownload(II)V

    .line 776
    invoke-direct {p0, p1, v3, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->downloadVolumeContent(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 780
    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v5}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    .line 782
    add-int/lit8 v4, v4, 0x1

    .line 772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v3           #volumeId:Ljava/lang/String;
    :cond_0
    invoke-interface {p4}, Lcom/google/android/apps/books/service/SyncService$SyncUi;->finishedAllVolumeDownloads()V

    .line 786
    return-void
.end method

.method private enqueueAnonymousResources(Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 8
    .parameter "volumeId"
    .parameter "account"
    .parameter "priority"
    .parameter "syncContext"

    .prologue
    .line 1061
    const-string v7, "related_section_id IS NULL AND content_status!=3 AND content_status!=1"

    .line 1064
    .local v7, selection:Ljava/lang/String;
    const-string v2, "related_section_id IS NULL AND content_status!=3 AND content_status!=1"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueMatchingResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 1065
    return-void
.end method

.method private enqueueMatchingResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 10
    .parameter "volumeId"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "account"
    .parameter "priority"
    .parameter "syncContext"

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1092
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1093
    .local v1, resDirUri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/apps/books/service/SyncAdapter$ResourcesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "related_section_id ASC, resource_order ASC, resource_id ASC"

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1096
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1097
    .local v8, count:I
    if-lez v8, :cond_0

    const-string v2, "BooksSync"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1098
    const-string v2, "BooksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " non-local resources"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1102
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, resId:Ljava/lang/String;
    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    .line 1103
    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueResource(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1106
    .end local v4           #resId:Ljava/lang/String;
    .end local v8           #count:I
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v8       #count:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1108
    return-void
.end method

.method private enqueuePage(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 7
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .parameter "priority"
    .parameter "syncContext"

    .prologue
    const-string v2, "BooksSync"

    .line 1023
    const-string v0, "BooksSync"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    const-string v0, "BooksSync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueuePage() vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_0
    iget-object v6, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter$5;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/service/SyncAdapter$5;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-virtual {v6, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1040
    return-void
.end method

.method private enqueueResource(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 7
    .parameter "volumeId"
    .parameter "resId"
    .parameter "account"
    .parameter "priority"
    .parameter "syncContext"

    .prologue
    const-string v2, "BooksSync"

    .line 1001
    const-string v0, "BooksSync"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    const-string v0, "BooksSync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueueResource() vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->shortenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_0
    iget-object v6, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter$4;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/service/SyncAdapter$4;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-virtual {v6, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1019
    return-void
.end method

.method private enqueueSection(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 8
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "account"
    .parameter "priority"
    .parameter "context"

    .prologue
    const-string v2, "BooksSync"

    .line 974
    const-string v0, "BooksSync"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    const-string v0, "BooksSync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueueSection() vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_0
    iget-object v7, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter$3;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/service/SyncAdapter$3;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;I)V

    invoke-virtual {v7, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 997
    return-void
.end method

.method private enqueueSectionResources(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 8
    .parameter "volumeId"
    .parameter "relatedSectionId"
    .parameter "account"
    .parameter "priority"
    .parameter "syncContext"

    .prologue
    .line 1048
    const-string v7, "related_section_id=? AND content_status!=3 AND content_status!=1"

    .line 1051
    .local v7, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    .line 1052
    .local v3, selectionArgs:[Ljava/lang/String;
    const-string v2, "related_section_id=? AND content_status!=3 AND content_status!=1"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueMatchingResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 1053
    return-void
.end method

.method private enqueueStragglingResources(Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 8
    .parameter "volumeId"
    .parameter "account"
    .parameter "priority"
    .parameter "syncContext"

    .prologue
    const-string v2, "BooksSync"

    .line 1077
    const-string v0, "BooksSync"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    const-string v0, "BooksSync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncStragglingResources for vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    const-string v7, "content_status!=3 AND content_status!=1"

    .line 1083
    .local v7, selection:Ljava/lang/String;
    const-string v2, "content_status!=3 AND content_status!=1"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueMatchingResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 1084
    return-void
.end method

.method private enqueueVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 3
    .parameter "account"
    .parameter "volumeId"
    .parameter "syncContext"

    .prologue
    const-string v2, "BooksSync"

    .line 625
    const-string v0, "BooksSync"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "BooksSync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueueVolumeCover vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    new-instance v1, Lcom/google/android/apps/books/service/SyncAdapter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/books/service/SyncAdapter$2;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/service/DrainableExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 634
    return-void
.end method

.method private enqueueVolumePages(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 11
    .parameter "volumeId"
    .parameter "account"
    .parameter "syncContext"

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 950
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 951
    .local v1, pageDirUri:Landroid/net/Uri;
    const-string v2, "MAX(page_order)"

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 954
    .local v9, maxOrder:I
    sget-object v2, Lcom/google/android/apps/books/service/SyncAdapter$PagesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "content_status!=3 AND content_status!=1"

    const/4 v4, 0x0

    const-string v5, "page_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 959
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 962
    .local v4, pageId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 963
    .local v10, order:I
    const/16 v2, 0x14

    mul-int/lit8 v3, v10, 0x14

    div-int/2addr v3, v9

    sub-int v6, v2, v3

    .local v6, priority:I
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    .line 965
    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueuePage(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 968
    .end local v4           #pageId:Ljava/lang/String;
    .end local v6           #priority:I
    .end local v10           #order:I
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 970
    return-void
.end method

.method private enqueueVolumeSections(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 11
    .parameter "volumeId"
    .parameter "account"
    .parameter "syncContext"

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 924
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 925
    .local v1, sectionDirUri:Landroid/net/Uri;
    const-string v2, "MAX(section_order)"

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 928
    .local v9, maxOrder:I
    sget-object v2, Lcom/google/android/apps/books/service/SyncAdapter$SectionsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "content_status!=3 AND content_status!=1"

    const/4 v4, 0x0

    const-string v5, "section_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 933
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 936
    .local v4, sectionId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 937
    .local v10, order:I
    const/16 v2, 0x14

    mul-int/lit8 v3, v10, 0x14

    div-int/2addr v3, v9

    sub-int v6, v2, v3

    .local v6, priority:I
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    .line 939
    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueSection(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 942
    .end local v4           #sectionId:Ljava/lang/String;
    .end local v6           #priority:I
    .end local v10           #order:I
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 944
    return-void
.end method

.method private ensureVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 4
    .parameter "account"
    .parameter "volumeId"
    .parameter "syncContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
        }
    .end annotation

    .prologue
    .line 642
    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v2}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 643
    .local v1, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 645
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;->check()V

    .line 646
    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p1, v3}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 647
    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-virtual {v2, p2, p1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 655
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 649
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "BooksSync"

    const-string v3, "Problem syncing cover"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method private static getVolumesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 591
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 593
    .local v1, libraryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "volume_id"

    aput-object v0, v2, v4

    const-string v5, "last_local_access DESC, last_access DESC, timestamp DESC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 596
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 597
    .local v6, count:I
    new-array v9, v6, [Ljava/lang/String;

    .line 598
    .local v9, volumeIds:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 599
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 600
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 604
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v9

    .end local v6           #count:I
    .end local v8           #i:I
    .end local v9           #volumeIds:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V
    .locals 19
    .parameter "account"

    .prologue
    .line 1120
    const-wide/16 v17, 0x7

    invoke-static/range {v17 .. v18}, Lcom/google/android/apps/books/util/OceanUris;->getCollectionVolumesUrl(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1124
    .local v15, subscriptionUrl:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 1125
    .local v10, existingFeeds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1126
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "feed"

    aput-object v4, v3, v2

    .line 1127
    .local v3, projection:[Ljava/lang/String;
    const-string v16, "_sync_account=? AND _sync_account_type=? AND authority=?"

    .line 1130
    .local v16, where:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v4, v0

    aput-object v4, v5, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v4, v0

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "com.google.android.apps.books"

    aput-object v4, v5, v2

    .line 1131
    .local v5, values:[Ljava/lang/String;
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_sync_account=? AND _sync_account_type=? AND authority=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1133
    .local v7, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1135
    .local v13, id:J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1136
    .local v11, feed:Ljava/lang/String;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1139
    .end local v11           #feed:Ljava/lang/String;
    .end local v13           #id:J
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1143
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1145
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1146
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v2, "_sync_account"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v3, v0

    .end local v3           #projection:[Ljava/lang/String;
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v2, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v2, "feed"

    invoke-virtual {v8, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v2, "service"

    const-string v3, "print"

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v2, "authority"

    const-string v3, "com.google.android.apps.books"

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1159
    .end local v8           #contentValues:Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local p0
    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1160
    .local v9, existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1161
    .restart local v13       #id:J
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1155
    .end local v9           #existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #id:J
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local p0
    :cond_1
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1164
    .end local v3           #projection:[Ljava/lang/String;
    .end local p0
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private syncContent(Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 21
    .parameter "account"
    .parameter "syncContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 707
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xf731400

    sub-long v11, v6, v8

    .line 709
    .local v11, cutoffTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mSyncAccountsState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getLastSyncTime(Ljava/lang/String;)J

    move-result-wide v14

    .line 714
    .local v14, lastSync:J
    const-string v16, " BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT)"

    .line 715
    .local v16, partialFract:Ljava/lang/String;
    const-string v17, "pinned!=0 OR last_local_access > CAST(? AS INTEGER) OR timestamp > CAST(? AS INTEGER) OR section_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR resource_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR page_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT)"

    .line 721
    .local v17, selection:Ljava/lang/String;
    const/16 v6, 0x8

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x1

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x2

    const-wide v9, 0x3e7ad7f29abcaf48L

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x3

    const-wide v9, 0x3fefffffca501acbL

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x4

    const-wide v9, 0x3e7ad7f29abcaf48L

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x5

    const-wide v9, 0x3fefffffca501acbL

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x6

    const-wide v9, 0x3e7ad7f29abcaf48L

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    const/4 v6, 0x7

    const-wide v9, 0x3fefffffca501acbL

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 728
    .local v8, args:[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 731
    .local v5, dirUri:Landroid/net/Uri;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v20

    .line 733
    .local v20, volumeIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v6, Lcom/google/android/apps/books/service/SyncAdapter$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "pinned!=0 OR last_local_access > CAST(? AS INTEGER) OR timestamp > CAST(? AS INTEGER) OR section_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR resource_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR page_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT)"

    const-string v9, "last_local_access DESC, last_access DESC, timestamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 737
    .local v10, cursor:Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    cmp-long v6, v14, v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    move v13, v6

    .line 738
    .local v13, firstSync:Z
    :goto_0
    if-eqz v13, :cond_0

    :try_start_0
    const-string v6, "BooksSync"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 739
    const-string v6, "BooksSync"

    const-string v7, "First sync, limiting downloads to one volume"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    const/16 v18, 0x0

    .line 743
    .local v18, volumeCount:I
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v13, :cond_1

    const/4 v6, 0x1

    move/from16 v0, v18

    move v1, v6

    if-ge v0, v1, :cond_3

    .line 744
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 745
    .local v19, volumeId:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->downloadVolumeContent(Landroid/accounts/Account;Landroid/database/Cursor;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 747
    add-int/lit8 v18, v18, 0x1

    .line 748
    goto :goto_1

    .line 737
    .end local v13           #firstSync:Z
    .end local v18           #volumeCount:I
    .end local v19           #volumeId:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    move v13, v6

    goto :goto_0

    .line 750
    .restart local v13       #firstSync:Z
    .restart local v18       #volumeCount:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/service/SyncAdapter;->checkVolumesDownloaded(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mSyncAccountsState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v7, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .end local v8           #args:[Ljava/lang/String;
    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/apps/books/sync/SyncAccountsState;->setLastSyncTime(Ljava/lang/String;J)V

    .line 763
    const-string v6, "BooksSync"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 764
    const-string v6, "BooksSync"

    const-string v7, "finished syncContent()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_4
    return-void

    .line 752
    .end local v18           #volumeCount:I
    .restart local v8       #args:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private syncCoversAndContent(Landroid/accounts/Account;ZLcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 6
    .parameter "account"
    .parameter "download"
    .parameter "syncContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 521
    .local v0, context:Landroid/content/Context;
    const-string v2, "BooksLazySync"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 523
    .local v1, lazySync:Z
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->syncVolumeCovers(Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 524
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/service/SyncAdapter;->syncManifests(Landroid/accounts/Account;)V

    .line 527
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-wide v3, 0x9a7ec800L

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/books/service/SyncService;->deleteStaleContent(Landroid/content/ContentResolver;J)V

    .line 529
    if-eqz p2, :cond_0

    .line 530
    if-nez v1, :cond_1

    .line 531
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->syncContent(Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 543
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 545
    return-void

    .line 533
    :cond_1
    const-string v2, "BooksSync"

    const-string v3, "======== Skipping syncContent() due to lazy flag"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private syncManifests(Landroid/accounts/Account;)V
    .locals 12
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const-string v10, "BooksSync"

    .line 662
    iget-object v8, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v8}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    .line 664
    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    .line 665
    .local v5, service:Lcom/google/android/apps/books/service/ContentFetchService;
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 666
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/google/android/apps/books/service/SyncAdapter;->getVolumesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 668
    .local v7, volumeIds:[Ljava/lang/String;
    const-string v8, "BooksSync"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 669
    const-string v8, "BooksSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncManifest() touching manifests for count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 676
    .local v6, volumeId:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v6, p1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, e:Ljava/io/IOException;
    const-string v8, "BooksSync"

    const-string v8, "Problem syncing manifest"

    invoke-static {v10, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 682
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #volumeId:Ljava/lang/String;
    :cond_1
    const-string v8, "BooksSync"

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 683
    const-string v8, "BooksSync"

    const-string v8, "finished syncManifest()"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_2
    return-void
.end method

.method private syncVolumeCovers(Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    .locals 10
    .parameter "account"
    .parameter "syncContext"

    .prologue
    const/4 v9, 0x3

    const-string v8, "BooksSync"

    .line 609
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 610
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/android/apps/books/service/SyncAdapter;->getVolumesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 612
    .local v5, volumeIds:[Ljava/lang/String;
    const-string v6, "BooksSync"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 613
    const-string v6, "BooksSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncVolumeCovers() touching covers for count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 616
    .local v4, volumeId:Ljava/lang/String;
    invoke-direct {p0, p1, v4, p2}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v4           #volumeId:Ljava/lang/String;
    :cond_1
    const-string v6, "BooksSync"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 619
    const-string v6, "BooksSync"

    const-string v6, "finished syncVolumeCovers()"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_2
    return-void
.end method

.method private upSyncCollectionVolumes(Landroid/accounts/Account;J)V
    .locals 9
    .parameter "account"
    .parameter "collectionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const-string v7, "BooksSync"

    .line 552
    const-string v2, "BooksSync"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    const-string v2, "BooksSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "started upSyncCollectionVolumes() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 557
    .local v6, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v2, p2, p3}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 559
    .local v1, synchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;-><init>(Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;Lcom/google/android/apps/books/net/ResponseGetter;Landroid/accounts/Account;J)V

    .line 561
    .local v0, upSyncher:Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;
    invoke-virtual {v0}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsync()V

    .line 562
    const-string v2, "BooksSync"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 563
    const-string v2, "BooksSync"

    const-string v2, "finished upSyncCollectionVolumes()"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_1
    return-void
.end method

.method private upSyncReadingPositions(Landroid/accounts/Account;)V
    .locals 9
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const-string v7, "BooksSync"

    .line 571
    const-string v5, "BooksSync"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 572
    const-string v5, "BooksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "started syncReadingPositions() for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 575
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 576
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, appName:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v2, v5}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 581
    .local v3, synchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;
    new-instance v4, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;

    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    invoke-direct {v4, v3, v0, v5, p1}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;-><init>(Lcom/google/android/apps/books/sync/StatesServerSynchronizable;Ljava/lang/String;Lcom/google/android/apps/books/net/ResponseGetter;Landroid/accounts/Account;)V

    .line 583
    .local v4, upSyncher:Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;
    invoke-virtual {v4}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->upsync()V

    .line 584
    const-string v5, "BooksSync"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 585
    const-string v5, "BooksSync"

    const-string v5, "finished upSyncReadingPositions()"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 28
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 407
    const-string v23, "BooksSync"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Synchronizing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 410
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 411
    .local v16, startTime:J
    const-string v23, "SyncService.VOLUME_IDS"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 413
    .local v22, volumeIdsString:Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 414
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/books/service/SyncService;->getVolumeIds(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v21

    .line 418
    .local v21, volumeIds:[Ljava/lang/String;
    :goto_0
    const-string v23, "upload"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 419
    .local v20, uploadOnly:Z
    const-string v23, "SyncService.DOWNLOAD"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 420
    .local v7, download:Z
    const-string v23, "SyncService.DISPLAY_PROGRESS"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 421
    .local v6, displayProgress:Z
    const-string v23, "SyncService.FETCH_BOOKS"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 422
    .local v13, fetchBooks:Z
    const-string v23, "BooksSync"

    const/16 v24, 0x3

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 423
    const-string v23, "BooksSync"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Sync extras: volumeIds="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", uploadOnly="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", download="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", fetchBooks="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    const/4 v15, 0x0

    .line 429
    .local v15, okToCancel:Z
    if-eqz v6, :cond_6

    .line 430
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/books/common/BooksContext;->getSyncUi()Lcom/google/android/apps/books/service/SyncService$SyncUi;

    move-result-object v19

    .line 435
    .local v19, syncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;
    :goto_1
    const-string v23, "BooksLazySync"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    .line 438
    .local v14, lazySync:Z
    :try_start_0
    new-instance v18, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;)V

    .line 441
    .local v18, syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;
    new-instance v23, Landroid/content/Intent;

    const-class v24, Lcom/google/android/apps/books/service/ContentFetchService;

    move-object/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mServiceSemaphore:Ljava/util/concurrent/Semaphore;

    move-object/from16 v23, v0

    const-wide/16 v24, 0xf

    sget-object v26, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v23 .. v26}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 444
    sget-object v23, Lcom/google/android/apps/books/service/SyncService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 446
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureMyEbooksCollection(Landroid/accounts/Account;)V

    .line 448
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/service/SyncAdapter;->upSyncReadingPositions(Landroid/accounts/Account;)V

    .line 449
    const-wide/16 v24, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->upSyncCollectionVolumes(Landroid/accounts/Account;J)V

    .line 451
    if-eqz v21, :cond_8

    .line 452
    if-nez v14, :cond_7

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/service/SyncAdapter;->downloadVolumes(Landroid/accounts/Account;[Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;)V

    .line 457
    :goto_2
    const/4 v15, 0x1

    .line 469
    :goto_3
    const-string v24, "BooksSync"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 470
    const-string v24, "BooksSync"

    const-string v25, "marking executor for shutdown when finished..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/apps/books/service/DrainableExecutor;->shutdown()V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    move-object/from16 v24, v0

    const-wide/32 v25, 0x1b7740

    sget-object v27, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v24 .. v27}, Lcom/google/android/apps/books/service/DrainableExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 476
    const-string v24, "BooksSync"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 477
    const-string v24, "BooksSync"

    const-string v25, "...and executor finally shutdown!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/service/SyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 483
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v23, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 510
    .end local v18           #syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;
    :cond_3
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 511
    .local v11, endTime:J
    sub-long v23, v11, v16

    const-wide/16 v25, 0x3e8

    div-long v8, v23, v25

    .line 512
    .local v8, duration:J
    const-string v23, "BooksSync"

    const/16 v24, 0x3

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 513
    const-string v23, "BooksSync"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onPerformSync() took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " sec"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_4
    return-void

    .line 416
    .end local v6           #displayProgress:Z
    .end local v7           #download:Z
    .end local v8           #duration:J
    .end local v11           #endTime:J
    .end local v13           #fetchBooks:Z
    .end local v14           #lazySync:Z
    .end local v15           #okToCancel:Z
    .end local v19           #syncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;
    .end local v20           #uploadOnly:Z
    .end local v21           #volumeIds:[Ljava/lang/String;
    .restart local p2
    :cond_5
    const/16 v21, 0x0

    .restart local v21       #volumeIds:[Ljava/lang/String;
    goto/16 :goto_0

    .line 432
    .restart local v6       #displayProgress:Z
    .restart local v7       #download:Z
    .restart local v13       #fetchBooks:Z
    .restart local v15       #okToCancel:Z
    .restart local v20       #uploadOnly:Z
    :cond_6
    new-instance v19, Lcom/google/android/apps/books/service/SyncService$StubSyncUi;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/apps/books/service/SyncService$StubSyncUi;-><init>()V

    .restart local v19       #syncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;
    goto/16 :goto_1

    .line 455
    .end local p2
    .restart local v14       #lazySync:Z
    .restart local v18       #syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;
    :cond_7
    :try_start_2
    const-string v24, "BooksSync"

    const-string v25, "======== Skipping downloadVolumes() due to lazy flag"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 483
    :catchall_0
    move-exception v24

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 490
    .end local v18           #syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;
    :catch_0
    move-exception v23

    move-object/from16 v10, v23

    .line 491
    .local v10, e:Ljava/lang/InterruptedException;
    if-eqz v15, :cond_b

    .line 495
    :try_start_4
    const-string v23, "BooksSync"

    const-string v24, "SyncManager interrupted sync, will pick up later"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 505
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v23, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_5

    .line 458
    .end local v10           #e:Ljava/lang/InterruptedException;
    .restart local v18       #syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;
    :cond_8
    if-eqz v20, :cond_9

    .line 459
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 463
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureMyEbooksVolumes(Landroid/accounts/Account;Z)V

    .line 464
    const/4 v15, 0x1

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->syncCoversAndContent(Landroid/accounts/Account;ZLcom/google/android/apps/books/service/SyncAdapter$SyncContext;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 485
    :cond_a
    :try_start_6
    const-string v23, "BooksSync"

    const-string v24, "Unable to acquire service connection"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    .line 501
    .end local v18           #syncContext:Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;
    :catch_1
    move-exception v23

    move-object/from16 v10, v23

    .line 502
    .local v10, e:Ljava/lang/Exception;
    :try_start_7
    const-string v23, "BooksSync"

    const-string v24, "Sync error"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v23, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_5

    .line 499
    .local v10, e:Ljava/lang/InterruptedException;
    :cond_b
    :try_start_8
    const-string v23, "BooksSync"

    const-string v24, "SyncManager interrupted sync prematurely: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    .line 505
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_c
    throw v23
.end method
