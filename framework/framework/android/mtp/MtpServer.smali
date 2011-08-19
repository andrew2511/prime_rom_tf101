.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpServer"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;)V
    .registers 3
    .parameter "database"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpServer;->mLock:Ljava/lang/Object;

    .line 37
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;)V

    .line 38
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_set_ptp_mode(Z)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;)V
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .registers 2
    .parameter "storage"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 70
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .registers 3
    .parameter "storage"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 74
    return-void
.end method

.method public sendObjectAdded(I)V
    .registers 2
    .parameter "handle"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 58
    return-void
.end method

.method public sendObjectRemoved(I)V
    .registers 2
    .parameter "handle"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 62
    return-void
.end method

.method public setPtpMode(Z)V
    .registers 2
    .parameter "usePtp"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_set_ptp_mode(Z)V

    .line 66
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Landroid/mtp/MtpServer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_3
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_start()V

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/mtp/MtpServer;->mStarted:Z

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Landroid/mtp/MtpServer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    iget-boolean v1, p0, Landroid/mtp/MtpServer;->mStarted:Z

    if-eqz v1, :cond_d

    .line 50
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_stop()V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpServer;->mStarted:Z

    .line 53
    :cond_d
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
