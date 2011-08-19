.class public Lcom/asus/mygazine/PhotoMonitor;
.super Ljava/lang/Object;
.source "PhotoMonitor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/mygazine/PhotoMonitor$CommandThread;,
        Lcom/asus/mygazine/PhotoMonitor$Snapshot;,
        Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;,
        Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final IMAGE_DATA_PROJECTION:[Ljava/lang/String;

.field public static final MEDIA_URI:Landroid/net/Uri;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field public static sPhotoMonitor:Lcom/asus/mygazine/PhotoMonitor;

.field public static sSnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/mygazine/PhotoMonitor$Snapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mCmdThread:Ljava/lang/Thread;

.field private mCmdlock:[I

.field private mCmds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDbHelper:Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

.field private mIntLock:Ljava/lang/Integer;

.field public mListener:Lcom/asus/mygazine/WidgetListener;

.field private mMediaObserver:Landroid/database/ContentObserver;

.field public mPhotoLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    .line 48
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/asus/mygazine/PhotoMonitor;->MEDIA_URI:Landroid/net/Uri;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "datetaken"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/mygazine/PhotoMonitor;->IMAGE_DATA_PROJECTION:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/mygazine/PhotoMonitor;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void

    :cond_0
    move v0, v2

    .line 39
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x14

    iput v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mPhotoLimit:I

    .line 64
    iput-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdThread:Ljava/lang/Thread;

    .line 65
    iput-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mAppCtx:Landroid/content/Context;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdlock:[I

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmds:Ljava/util/Queue;

    .line 69
    iput-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mDbHelper:Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

    .line 71
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mIntLock:Ljava/lang/Integer;

    .line 76
    new-instance v0, Lcom/asus/mygazine/PhotoMonitor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/asus/mygazine/PhotoMonitor$1;-><init>(Lcom/asus/mygazine/PhotoMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mMediaObserver:Landroid/database/ContentObserver;

    .line 517
    iput-object p1, p0, Lcom/asus/mygazine/PhotoMonitor;->mAppCtx:Landroid/content/Context;

    .line 518
    new-instance v0, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mAppCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mDbHelper:Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

    .line 519
    new-instance v0, Lcom/asus/mygazine/WidgetListener;

    invoke-direct {v0}, Lcom/asus/mygazine/WidgetListener;-><init>()V

    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mListener:Lcom/asus/mygazine/WidgetListener;

    .line 520
    const-string v0, "MyzinePrefs"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/PhotoMonitor;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 521
    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 522
    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "picture_number"

    iget v2, p0, Lcom/asus/mygazine/PhotoMonitor;->mPhotoLimit:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mPhotoLimit:I

    .line 523
    return-void
.end method

.method static synthetic access$000(Lcom/asus/mygazine/PhotoMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/asus/mygazine/PhotoMonitor;->addCommand(I)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/asus/mygazine/PhotoMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/mygazine/PhotoMonitor;->dequeueCommand()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/asus/mygazine/PhotoMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/mygazine/PhotoMonitor;->doRequeryChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/mygazine/PhotoMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/mygazine/PhotoMonitor;->doCompactDB()V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/mygazine/PhotoMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/mygazine/PhotoMonitor;->doCloseDB()V

    return-void
.end method

.method static synthetic access$600(Lcom/asus/mygazine/PhotoMonitor;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmds:Ljava/util/Queue;

    return-object v0
.end method

.method private addCommand(I)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 574
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCommand is called = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;(CMD_NO_OP = -1, CMD_QUEUE_CHANGE = 0, CMD_COMPACT_DB = 1, CMD_CLOSE_DB = 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdlock:[I

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmds:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 578
    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmds:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 582
    :cond_1
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "PhotoMonitor"

    const-string v1, "addCommand mCmdThread.start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_2
    new-instance v0, Lcom/asus/mygazine/PhotoMonitor$CommandThread;

    invoke-direct {v0, p0}, Lcom/asus/mygazine/PhotoMonitor$CommandThread;-><init>(Lcom/asus/mygazine/PhotoMonitor;)V

    iput-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdThread:Ljava/lang/Thread;

    .line 584
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 586
    :cond_3
    return-void

    .line 579
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dequeueCommand()I
    .locals 3

    .prologue
    .line 590
    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdlock:[I

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v2, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmds:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    monitor-exit v1

    move v1, v2

    .line 596
    :goto_0
    return v1

    .line 595
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 596
    .local v0, e:Ljava/util/NoSuchElementException;
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 598
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private doCloseDB()V
    .locals 2

    .prologue
    .line 782
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoMonitor"

    const-string v1, "doCloseDB is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mDbHelper:Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->close()V

    .line 784
    return-void
.end method

.method private doCompactDB()V
    .locals 2

    .prologue
    .line 777
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoMonitor"

    const-string v1, "doCompactDB is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mDbHelper:Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->compactDB()V

    .line 779
    return-void
.end method

.method private doRequeryChange()V
    .locals 10

    .prologue
    .line 672
    const/16 v4, 0x64

    .line 676
    .local v4, queryNumber:I
    :cond_0
    invoke-direct {p0, v4}, Lcom/asus/mygazine/PhotoMonitor;->doRequeryPhotos(I)I

    move-result v2

    .line 677
    .local v2, photoSize:I
    if-nez v2, :cond_2

    .line 678
    sget-object v7, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 688
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/asus/mygazine/PhotoMonitor;->mListener:Lcom/asus/mygazine/WidgetListener;

    iget-object v7, v7, Lcom/asus/mygazine/WidgetListener;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;

    .line 691
    .local v3, pl:Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;
    sget-object v7, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 692
    iget-object v7, p0, Lcom/asus/mygazine/PhotoMonitor;->mAppCtx:Landroid/content/Context;

    invoke-interface {v3, v7}, Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;->onChange(Landroid/content/Context;)V

    goto :goto_1

    .line 681
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #pl:Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;
    :cond_2
    add-int/lit8 v4, v4, 0x64

    .line 683
    sget-object v7, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/asus/mygazine/PhotoMonitor;->mPhotoLimit:I

    if-ge v7, v8, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 694
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #pl:Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;
    :cond_3
    const-string v7, "PhotoMonitor"

    const-string v8, "doRequeryChange: stopSlideShow"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v7, p0, Lcom/asus/mygazine/PhotoMonitor;->mAppCtx:Landroid/content/Context;

    invoke-interface {v3, v7}, Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;->stopSlideShow(Landroid/content/Context;)V

    goto :goto_1

    .line 700
    .end local v3           #pl:Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;
    :cond_4
    sget-object v7, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    if-eqz v7, :cond_6

    sget-object v7, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 701
    iget-object v7, p0, Lcom/asus/mygazine/PhotoMonitor;->mDbHelper:Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

    invoke-virtual {v7}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->querySnapshots()Ljava/util/List;

    move-result-object v6

    .line 702
    .local v6, snap_in_db:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    .line 703
    .local v1, ori:Lcom/asus/mygazine/PhotoMonitor$Snapshot;
    invoke-virtual {v1}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->getOriName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 705
    .end local v1           #ori:Lcom/asus/mygazine/PhotoMonitor$Snapshot;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 706
    .local v5, remove:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/mygazine/PhotoMonitor;->mDbHelper:Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

    invoke-virtual {v7, v5}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->deleteSnapshot(Ljava/lang/String;)V

    goto :goto_3

    .line 709
    .end local v5           #remove:Ljava/lang/String;
    .end local v6           #snap_in_db:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string v7, "PhotoMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doRequeryChange snaps size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void
.end method

.method private doRequeryPhotos(I)I
    .locals 12
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 714
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 716
    .local v1, MEDIA_URI_WITH_LIMIT:Landroid/net/Uri;
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/asus/mygazine/PhotoMonitor;->IMAGE_DATA_PROJECTION:[Ljava/lang/String;

    const-string v5, "datetaken desc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 723
    .local v7, cur:Landroid/database/Cursor;
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 724
    const-string v0, "PhotoMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRequeryPhotos is called ,limit count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    if-nez v7, :cond_1

    .line 729
    const-string v0, "PhotoMonitor"

    const-string v2, "doRequeryPhotos: nothing found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 768
    :goto_0
    return v0

    .line 734
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v10, snaplist:Ljava/util/List;,"Ljava/util/List<Lcom/asus/mygazine/PhotoMonitor$Snapshot;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 737
    .local v6, count:I
    if-lez v6, :cond_5

    .line 739
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 741
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/asus/mygazine/PhotoMonitor;->mPhotoLimit:I

    if-ge v0, v2, :cond_2

    .line 744
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mDbHelper:Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/asus/mygazine/PhotoMonitor$SnapshotDBHelper;->checkOrCreateSnapshot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, name:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 747
    new-instance v9, Lcom/asus/mygazine/PhotoMonitor$Snapshot;

    invoke-direct {v9}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;-><init>()V

    .line 748
    .local v9, snap:Lcom/asus/mygazine/PhotoMonitor$Snapshot;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->setOriName(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v9, v8}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->setName(Ljava/lang/String;)V

    .line 750
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhotoMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added photo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_3
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/asus/mygazine/PhotoMonitor$Snapshot;->setDate(Ljava/lang/String;)V

    .line 752
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 758
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #snap:Lcom/asus/mygazine/PhotoMonitor$Snapshot;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_5
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mIntLock:Ljava/lang/Integer;

    monitor-enter v0

    .line 766
    :try_start_1
    sput-object v10, Lcom/asus/mygazine/PhotoMonitor;->sSnaps:Ljava/util/List;

    .line 767
    monitor-exit v0

    move v0, v6

    .line 768
    goto :goto_0

    .line 767
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 506
    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sPhotoMonitor:Lcom/asus/mygazine/PhotoMonitor;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lcom/asus/mygazine/PhotoMonitor;

    invoke-direct {v0, p0}, Lcom/asus/mygazine/PhotoMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/mygazine/PhotoMonitor;->sPhotoMonitor:Lcom/asus/mygazine/PhotoMonitor;

    .line 509
    :cond_0
    sget-object v0, Lcom/asus/mygazine/PhotoMonitor;->sPhotoMonitor:Lcom/asus/mygazine/PhotoMonitor;

    return-object v0
.end method


# virtual methods
.method public closeDB()V
    .locals 2

    .prologue
    .line 547
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoMonitor"

    const-string v1, "closeDB is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmdlock:[I

    monitor-enter v0

    .line 549
    :try_start_0
    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mCmds:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/asus/mygazine/PhotoMonitor;->addCommand(I)V

    .line 552
    return-void

    .line 550
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public disable(Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 557
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mListener:Lcom/asus/mygazine/WidgetListener;

    iget-object v0, v0, Lcom/asus/mygazine/WidgetListener;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method public enable(Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x1

    .line 531
    iget-object v2, p0, Lcom/asus/mygazine/PhotoMonitor;->mListener:Lcom/asus/mygazine/WidgetListener;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetListener;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v2, p0, Lcom/asus/mygazine/PhotoMonitor;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/mygazine/PhotoMonitor;->MEDIA_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/asus/mygazine/PhotoMonitor;->mMediaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 534
    sget-boolean v2, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PhotoMonitor"

    const-string v3, "PhotoMonitor enable() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/asus/mygazine/PhotoMonitor;->mListener:Lcom/asus/mygazine/WidgetListener;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetListener;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;

    .line 537
    .local v1, pl:Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;
    sget-boolean v2, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "PhotoMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable():mListener.list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    .end local v1           #pl:Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;
    :cond_2
    invoke-direct {p0, v5}, Lcom/asus/mygazine/PhotoMonitor;->addCommand(I)V

    .line 541
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/asus/mygazine/PhotoMonitor;->addCommand(I)V

    .line 542
    return-void
.end method

.method public getListenerCount()I
    .locals 3

    .prologue
    .line 567
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListenerCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/PhotoMonitor;->mListener:Lcom/asus/mygazine/WidgetListener;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetListener;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mListener:Lcom/asus/mygazine/WidgetListener;

    iget-object v0, v0, Lcom/asus/mygazine/WidgetListener;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSyncLock()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mIntLock:Ljava/lang/Integer;

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 788
    const-string v0, "picture_number"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const-string v0, "picture_number"

    iget v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mPhotoLimit:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mPhotoLimit:I

    .line 791
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/asus/mygazine/PhotoMonitor;->addCommand(I)V

    .line 793
    :cond_0
    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    .prologue
    .line 562
    sget-boolean v0, Lcom/asus/mygazine/PhotoMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoMonitor"

    const-string v1, "unregisterContentObserver is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/asus/mygazine/PhotoMonitor;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor;->mMediaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 564
    return-void
.end method
