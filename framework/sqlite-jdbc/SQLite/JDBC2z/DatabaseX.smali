.class LSQLite/JDBC2z/DatabaseX;
.super LSQLite/Database;
.source "JDBCConnection.java"


# static fields
.field static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 523
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 526
    invoke-direct {p0}, LSQLite/Database;-><init>()V

    .line 527
    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;LSQLite/Callback;)V
    .registers 5
    .parameter "sql"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 540
    invoke-super {p0, p1, p2}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 541
    sget-object v0, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_6
    sget-object v1, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 543
    monitor-exit v0

    .line 544
    return-void

    .line 543
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    .registers 6
    .parameter "sql"
    .parameter "cb"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 548
    invoke-super {p0, p1, p2, p3}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V

    .line 549
    sget-object v0, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_6
    sget-object v1, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 551
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;
    .registers 6
    .parameter "sql"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 556
    invoke-super {p0, p1, p2}, LSQLite/Database;->get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;

    move-result-object v0

    .line 557
    .local v0, ret:LSQLite/TableResult;
    sget-object v1, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_7
    sget-object v2, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 559
    monitor-exit v1

    .line 560
    return-object v0

    .line 559
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method

.method public get_table(Ljava/lang/String;[Ljava/lang/String;LSQLite/TableResult;)V
    .registers 6
    .parameter "sql"
    .parameter "args"
    .parameter "tbl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 565
    invoke-super {p0, p1, p2, p3}, LSQLite/Database;->get_table(Ljava/lang/String;[Ljava/lang/String;LSQLite/TableResult;)V

    .line 566
    sget-object v0, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_6
    sget-object v1, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 568
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method wait(I)V
    .registers 6
    .parameter "ms"

    .prologue
    .line 531
    :try_start_0
    sget-object v0, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e

    .line 532
    :try_start_3
    sget-object v1, LSQLite/JDBC2z/DatabaseX;->lock:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 533
    monitor-exit v0

    .line 536
    :goto_a
    return-void

    .line 533
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_e} :catch_e

    .line 534
    :catch_e
    move-exception v0

    goto :goto_a
.end method
