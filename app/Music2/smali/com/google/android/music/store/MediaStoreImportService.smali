.class public Lcom/google/android/music/store/MediaStoreImportService;
.super Landroid/app/Service;
.source "MediaStoreImportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MediaStoreImportService$Receiver;,
        Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_IMPORT:Ljava/lang/String; = "MediaStoreImportService.import"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_IMPORT_DELAY_MILLISEC:I = 0x7530

.field private static final MIN_DELAY_BETWEEN_IMPORTS_IN_MILLISEC:I = 0x2710

.field private static final PAUSE_SINCE_LAST_CONTENT_CHANGE_IN_MILLISEC:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaStoreImportService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContentChangeProcessor:Ljava/lang/Runnable;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mDelayedImport:Ljava/lang/Runnable;

.field private mFirstChangeTimeSinceLastImport:J

.field private mLastImportTime:J

.field private final mWorker:Lcom/google/android/music/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "MediaStoreImportService"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;-><init>(Lcom/google/android/music/store/MediaStoreImportService;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mBinder:Landroid/os/IBinder;

    .line 42
    new-instance v0, Lcom/google/android/music/Worker;

    const-string v1, "MediaStoreImportService"

    invoke-direct {v0, v1}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    .line 62
    iput-wide v2, p0, Lcom/google/android/music/store/MediaStoreImportService;->mLastImportTime:J

    .line 63
    iput-wide v2, p0, Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J

    .line 80
    new-instance v0, Lcom/google/android/music/store/MediaStoreImportService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MediaStoreImportService$1;-><init>(Lcom/google/android/music/store/MediaStoreImportService;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mDelayedImport:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/google/android/music/store/MediaStoreImportService$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MediaStoreImportService$2;-><init>(Lcom/google/android/music/store/MediaStoreImportService;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentChangeProcessor:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcom/google/android/music/store/MediaStoreImportService$3;

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/store/MediaStoreImportService$3;-><init>(Lcom/google/android/music/store/MediaStoreImportService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/store/MediaStoreImportService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mLastImportTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/music/store/MediaStoreImportService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/music/store/MediaStoreImportService;->importMediaStore()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mDelayedImport:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/store/MediaStoreImportService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/android/music/store/MediaStoreImportService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J

    return-wide p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentChangeProcessor:Ljava/lang/Runnable;

    return-object v0
.end method

.method private importMediaStore()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 66
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/android/music/MusicApplication;->setImportState(Landroid/content/Context;I)V

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/store/Store;->importMediaStore(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {p0, v1}, Lcom/google/android/music/MusicApplication;->setImportState(Landroid/content/Context;I)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mLastImportTime:J

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J

    .line 78
    return-void

    .line 71
    :catchall_0
    move-exception v0

    invoke-static {p0, v1}, Lcom/google/android/music/MusicApplication;->setImportState(Landroid/content/Context;I)V

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 148
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaStoreImportService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentChangeProcessor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 153
    invoke-virtual {p0}, Lcom/google/android/music/store/MediaStoreImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/music/store/MediaStoreImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 169
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaStoreImportService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/store/MediaStoreImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v0}, Lcom/google/android/music/Worker;->quit()V

    .line 172
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 173
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaStoreImportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    const-string v1, "MediaStoreImportService.import"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/store/MediaStoreImportService$4;

    invoke-direct {v2, p0, p3}, Lcom/google/android/music/store/MediaStoreImportService$4;-><init>(Lcom/google/android/music/store/MediaStoreImportService;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 143
    :goto_0
    const/4 v1, 0x3

    return v1

    .line 139
    :cond_1
    const-string v1, "MediaStoreImportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected action requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, p3}, Lcom/google/android/music/store/MediaStoreImportService;->stopSelf(I)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 162
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaStoreImportService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/store/MediaStoreImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 164
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
