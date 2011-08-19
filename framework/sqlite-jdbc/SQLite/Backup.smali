.class public LSQLite/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# instance fields
.field protected handle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 96
    invoke-static {}, LSQLite/Backup;->internal_init()V

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSQLite/Backup;->handle:J

    return-void
.end method

.method private native _pagecount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _remaining()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _step(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private static native internal_init()V
.end method


# virtual methods
.method protected native _finalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public backup()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    const/4 v0, -0x1

    :try_start_2
    invoke-direct {p0, v0}, LSQLite/Backup;->_step(I)Z

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 30
    monitor-enter p0

    .line 32
    :try_start_1
    invoke-virtual {p0}, LSQLite/Backup;->_finalize()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6
    .catch LSQLite/Exception; {:try_start_1 .. :try_end_4} :catch_9

    .line 35
    :goto_4
    :try_start_4
    monitor-exit p0

    .line 36
    return-void

    .line 35
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v0

    .line 33
    :catch_9
    move-exception v0

    goto :goto_4
.end method

.method protected finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 20
    monitor-enter p0

    .line 21
    :try_start_1
    invoke-virtual {p0}, LSQLite/Backup;->_finalize()V

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 22
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public pagecount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_1
    invoke-direct {p0}, LSQLite/Backup;->_pagecount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 84
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public remaining()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    invoke-direct {p0}, LSQLite/Backup;->_remaining()I

    move-result v0

    monitor-exit p0

    return v0

    .line 72
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public step(I)Z
    .registers 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Backup;->_step(I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 50
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
