.class Lcom/google/android/music/MusicApplication$2;
.super Ljava/lang/Object;
.source "MusicApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicApplication;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/music/MusicApplication$2;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicApplication$2;->this$0:Lcom/google/android/music/MusicApplication;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    instance-of v1, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/MusicApplication$2;->this$0:Lcom/google/android/music/MusicApplication;

    iget-boolean v1, v1, Lcom/google/android/music/MusicApplication;->mHprofDumped:Z

    if-nez v1, :cond_0

    .line 96
    const-string v1, "AndroidMusic"

    const-string v2, "Out of memory!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "/mnt/sdcard/music.hprof"

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/music/MusicApplication$2;->this$0:Lcom/google/android/music/MusicApplication;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/music/MusicApplication;->mHprofDumped:Z

    .line 100
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/google/android/music/MusicApplication$2;->this$0:Lcom/google/android/music/MusicApplication;

    iget-object v0, v0, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 105
    :goto_0
    return-void

    .line 100
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    iget-object v0, p0, Lcom/google/android/music/MusicApplication$2;->this$0:Lcom/google/android/music/MusicApplication;

    iget-object v0, v0, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicApplication$2;->this$0:Lcom/google/android/music/MusicApplication;

    iget-object v1, v1, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    throw v0
.end method
