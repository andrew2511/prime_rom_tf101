.class public LSQLite/Database;
.super Ljava/lang/Object;
.source "Database.java"


# instance fields
.field protected error_code:I

.field protected handle:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 944
    :try_start_0
    const-string v6, "SQLite.library.path"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 945
    .local v4, path:Ljava/lang/String;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1c

    .line 946
    :cond_e
    const-string v6, "sqlite_jni"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_80

    .line 974
    .end local v4           #path:Ljava/lang/String;
    :goto_13
    :try_start_13
    invoke-static {}, LSQLite/Database;->internal_init()V

    .line 975
    new-instance v6, LSQLite/FunctionContext;

    invoke-direct {v6}, LSQLite/FunctionContext;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_9c

    .line 978
    :goto_1b
    return-void

    .line 950
    .restart local v4       #path:Ljava/lang/String;
    :cond_1c
    const/4 v6, 0x1

    :try_start_1d
    new-array v3, v6, [Ljava/lang/Class;

    .line 951
    .local v3, param:[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 952
    const-class v6, Ljava/lang/System;

    const-string v7, "mapLibraryName"

    invoke-virtual {v6, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 954
    .local v1, mapLibraryName:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    .line 955
    .local v0, args:[Ljava/lang/Object;
    const/4 v6, 0x0

    const-string v7, "sqlite_jni"

    aput-object v7, v0, v6

    .line 956
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 957
    .local v2, mapped:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_55} :catch_56

    goto :goto_13

    .line 958
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #mapLibraryName:Ljava/lang/reflect/Method;
    .end local v2           #mapped:Ljava/lang/String;
    .end local v3           #param:[Ljava/lang/Class;
    :catch_56
    move-exception v6

    move-object v5, v6

    .line 959
    .local v5, t:Ljava/lang/Throwable;
    :try_start_58
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load sqlite_jni fromSQLite.library.path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", trying system default: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 962
    const-string v6, "sqlite_jni"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_7f} :catch_80

    goto :goto_13

    .line 965
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #t:Ljava/lang/Throwable;
    :catch_80
    move-exception v6

    move-object v5, v6

    .line 966
    .restart local v5       #t:Ljava/lang/Throwable;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load sqlite_jni: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 976
    .end local v5           #t:Ljava/lang/Throwable;
    :catch_9c
    move-exception v6

    goto/16 :goto_1b
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSQLite/Database;->handle:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, LSQLite/Database;->error_code:I

    return-void
.end method

.method private static native _backup(LSQLite/Backup;LSQLite/Database;Ljava/lang/String;LSQLite/Database;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _busy_handler(LSQLite/BusyHandler;)V
.end method

.method private native _busy_timeout(I)V
.end method

.method private native _changes()J
.end method

.method private native _close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private static native _complete(Ljava/lang/String;)Z
.end method

.method private native _create_aggregate(Ljava/lang/String;ILSQLite/Function;)V
.end method

.method private native _create_function(Ljava/lang/String;ILSQLite/Function;)V
.end method

.method private native _db_status(I[IZ)I
.end method

.method protected static native _enable_shared_cache(Z)Z
.end method

.method private native _errmsg()Ljava/lang/String;
.end method

.method private native _exec(Ljava/lang/String;LSQLite/Callback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _finalize()V
.end method

.method private native _function_type(Ljava/lang/String;I)V
.end method

.method private native _interrupt()V
.end method

.method private native _key([B)V
.end method

.method private native _last_insert_rowid()J
.end method

.method private native _open(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _open4(Ljava/lang/String;ILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _open_aux_file(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _open_blob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLSQLite/Blob;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _profile(LSQLite/Profile;)V
.end method

.method private native _progress_handler(ILSQLite/ProgressHandler;)V
.end method

.method private native _rekey([B)V
.end method

.method private native _set_authorizer(LSQLite/Authorizer;)V
.end method

.method private native _set_encoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private static native _status(I[IZ)I
.end method

.method private native _trace(LSQLite/Trace;)V
.end method

.method public static declared-synchronized complete(Ljava/lang/String;)Z
    .registers 3
    .parameter "sql"

    .prologue
    .line 438
    const-class v0, LSQLite/Database;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, LSQLite/Database;->_complete(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static native error_string(I)Ljava/lang/String;
.end method

.method private static native internal_init()V
.end method

.method public static julian_from_long(J)D
    .registers 10
    .parameter "ms"

    .prologue
    .line 933
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_19

    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 934
    .local v0, adj:D
    :goto_9
    long-to-double v4, p0

    add-double/2addr v4, v0

    const-wide v6, 0x4194997000000000L

    div-double/2addr v4, v6

    const-wide v6, 0x41429ec5c0000000L

    add-double v2, v4, v6

    .line 935
    .local v2, d:D
    return-wide v2

    .line 933
    .end local v0           #adj:D
    .end local v2           #d:D
    :cond_19
    const-wide/high16 v4, 0x3fe0

    move-wide v0, v4

    goto :goto_9
.end method

.method public static long_from_julian(D)J
    .registers 4
    .parameter "d"

    .prologue
    .line 904
    const-wide v0, 0x41429ec5c0000000L

    sub-double/2addr p0, v0

    .line 905
    const-wide v0, 0x4194997000000000L

    mul-double/2addr p0, v0

    .line 906
    double-to-long v0, p0

    return-wide v0
.end method

.method public static long_from_julian(Ljava/lang/String;)J
    .registers 6
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 918
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 919
    .local v0, d:D
    invoke-static {v0, v1}, LSQLite/Database;->long_from_julian(D)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v3

    return-wide v3

    .line 920
    .end local v0           #d:D
    :catch_9
    move-exception v3

    move-object v2, v3

    .line 921
    .local v2, ee:Ljava/lang/Exception;
    new-instance v3, LSQLite/Exception;

    const-string v4, "not a julian date"

    invoke-direct {v3, v4}, LSQLite/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static declared-synchronized status(I[IZ)I
    .registers 5
    .parameter "op"
    .parameter "info"
    .parameter "flag"

    .prologue
    .line 647
    const-class v0, LSQLite/Database;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, p2}, LSQLite/Database;->_status(I[IZ)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native stmt_prepare(Ljava/lang/String;LSQLite/Stmt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public static native version()Ljava/lang/String;
.end method

.method private native vm_compile(Ljava/lang/String;LSQLite/Vm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native vm_compile_args(Ljava/lang/String;LSQLite/Vm;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method


# virtual methods
.method public backup(LSQLite/Database;Ljava/lang/String;Ljava/lang/String;)LSQLite/Backup;
    .registers 6
    .parameter "dest"
    .parameter "destName"
    .parameter "srcName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 607
    monitor-enter p0

    .line 608
    :try_start_1
    new-instance v0, LSQLite/Backup;

    invoke-direct {v0}, LSQLite/Backup;-><init>()V

    .line 609
    .local v0, b:LSQLite/Backup;
    invoke-static {v0, p1, p2, p0, p3}, LSQLite/Database;->_backup(LSQLite/Backup;LSQLite/Database;Ljava/lang/String;LSQLite/Database;Ljava/lang/String;)V

    .line 610
    monitor-exit p0

    return-object v0

    .line 611
    .end local v0           #b:LSQLite/Backup;
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public busy_handler(LSQLite/BusyHandler;)V
    .registers 3
    .parameter "bh"

    .prologue
    .line 262
    monitor-enter p0

    .line 263
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_busy_handler(LSQLite/BusyHandler;)V

    .line 264
    monitor-exit p0

    .line 265
    return-void

    .line 264
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public busy_timeout(I)V
    .registers 3
    .parameter "ms"

    .prologue
    .line 277
    monitor-enter p0

    .line 278
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_busy_timeout(I)V

    .line 279
    monitor-exit p0

    .line 280
    return-void

    .line 279
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public changes()J
    .registers 3

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_changes()J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 249
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    .line 156
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_close()V

    .line 157
    monitor-exit p0

    .line 158
    return-void

    .line 157
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public compile(Ljava/lang/String;)LSQLite/Vm;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 681
    monitor-enter p0

    .line 682
    :try_start_1
    new-instance v0, LSQLite/Vm;

    invoke-direct {v0}, LSQLite/Vm;-><init>()V

    .line 683
    .local v0, vm:LSQLite/Vm;
    invoke-direct {p0, p1, v0}, LSQLite/Database;->vm_compile(Ljava/lang/String;LSQLite/Vm;)V

    .line 684
    monitor-exit p0

    return-object v0

    .line 685
    .end local v0           #vm:LSQLite/Vm;
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public compile(Ljava/lang/String;[Ljava/lang/String;)LSQLite/Vm;
    .registers 5
    .parameter "sql"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 698
    monitor-enter p0

    .line 699
    :try_start_1
    new-instance v0, LSQLite/Vm;

    invoke-direct {v0}, LSQLite/Vm;-><init>()V

    .line 700
    .local v0, vm:LSQLite/Vm;
    invoke-direct {p0, p1, v0, p2}, LSQLite/Database;->vm_compile_args(Ljava/lang/String;LSQLite/Vm;[Ljava/lang/String;)V

    .line 701
    monitor-exit p0

    return-object v0

    .line 702
    .end local v0           #vm:LSQLite/Vm;
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public create_aggregate(Ljava/lang/String;ILSQLite/Function;)V
    .registers 5
    .parameter "name"
    .parameter "nargs"
    .parameter "f"

    .prologue
    .line 483
    monitor-enter p0

    .line 484
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, LSQLite/Database;->_create_aggregate(Ljava/lang/String;ILSQLite/Function;)V

    .line 485
    monitor-exit p0

    .line 486
    return-void

    .line 485
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public create_function(Ljava/lang/String;ILSQLite/Function;)V
    .registers 5
    .parameter "name"
    .parameter "nargs"
    .parameter "f"

    .prologue
    .line 467
    monitor-enter p0

    .line 468
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, LSQLite/Database;->_create_function(Ljava/lang/String;ILSQLite/Function;)V

    .line 469
    monitor-exit p0

    .line 470
    return-void

    .line 469
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public db_status(I[IZ)I
    .registers 5
    .parameter "op"
    .parameter "info"
    .parameter "flag"

    .prologue
    .line 665
    monitor-enter p0

    .line 666
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, LSQLite/Database;->_db_status(I[IZ)I

    move-result v0

    monitor-exit p0

    return v0

    .line 667
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public native dbversion()Ljava/lang/String;
.end method

.method public error_message()Ljava/lang/String;
    .registers 2

    .prologue
    .line 536
    monitor-enter p0

    .line 537
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_errmsg()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 538
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public exec(Ljava/lang/String;LSQLite/Callback;)V
    .registers 4
    .parameter "sql"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 178
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    .registers 5
    .parameter "sql"
    .parameter "cb"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    .line 210
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, LSQLite/Database;->_exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V

    .line 211
    monitor-exit p0

    .line 212
    return-void

    .line 211
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_finalize()V

    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public function_type(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "type"

    .prologue
    .line 499
    monitor-enter p0

    .line 500
    :try_start_1
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_function_type(Ljava/lang/String;I)V

    .line 501
    monitor-exit p0

    .line 502
    return-void

    .line 501
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public get_table(Ljava/lang/String;)LSQLite/TableResult;
    .registers 3
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LSQLite/Database;->get_table(Ljava/lang/String;I)LSQLite/TableResult;

    move-result-object v0

    return-object v0
.end method

.method public get_table(Ljava/lang/String;I)LSQLite/TableResult;
    .registers 8
    .parameter "sql"
    .parameter "maxrows"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v1, LSQLite/TableResult;

    invoke-direct {v1, p2}, LSQLite/TableResult;-><init>(I)V

    .line 296
    .local v1, ret:LSQLite/TableResult;
    invoke-virtual {p0}, LSQLite/Database;->is3()Z

    move-result v3

    if-nez v3, :cond_17

    .line 298
    :try_start_b
    invoke-virtual {p0, p1, v1}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V
    :try_end_e
    .catch LSQLite/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 321
    :cond_e
    :goto_e
    return-object v1

    .line 299
    :catch_f
    move-exception v0

    .line 300
    .local v0, e:LSQLite/Exception;
    if-lez p2, :cond_16

    iget-boolean v3, v1, LSQLite/TableResult;->atmaxrows:Z

    if-nez v3, :cond_e

    .line 301
    :cond_16
    throw v0

    .line 305
    .end local v0           #e:LSQLite/Exception;
    :cond_17
    monitor-enter p0

    .line 307
    :try_start_18
    invoke-virtual {p0, p1}, LSQLite/Database;->compile(Ljava/lang/String;)LSQLite/Vm;

    move-result-object v2

    .line 308
    .local v2, vm:LSQLite/Vm;
    iget v3, v2, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v3}, LSQLite/Database;->set_last_error(I)V

    .line 309
    iget v3, v1, LSQLite/TableResult;->maxrows:I

    if-lez v3, :cond_3a

    .line 310
    :goto_25
    iget v3, v1, LSQLite/TableResult;->nrows:I

    iget v4, v1, LSQLite/TableResult;->maxrows:I

    if-ge v3, v4, :cond_46

    invoke-virtual {v2, v1}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 311
    iget v3, v2, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v3}, LSQLite/Database;->set_last_error(I)V

    goto :goto_25

    .line 319
    .end local v2           #vm:LSQLite/Vm;
    :catchall_37
    move-exception v3

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_37

    throw v3

    .line 314
    .restart local v2       #vm:LSQLite/Vm;
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-virtual {v2, v1}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 315
    iget v3, v2, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v3}, LSQLite/Database;->set_last_error(I)V

    goto :goto_3a

    .line 318
    :cond_46
    invoke-virtual {v2}, LSQLite/Vm;->finalize()V

    .line 319
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_37

    goto :goto_e
.end method

.method public get_table(Ljava/lang/String;I[Ljava/lang/String;)LSQLite/TableResult;
    .registers 9
    .parameter "sql"
    .parameter "maxrows"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 348
    new-instance v1, LSQLite/TableResult;

    invoke-direct {v1, p2}, LSQLite/TableResult;-><init>(I)V

    .line 349
    .local v1, ret:LSQLite/TableResult;
    invoke-virtual {p0}, LSQLite/Database;->is3()Z

    move-result v3

    if-nez v3, :cond_17

    .line 351
    :try_start_b
    invoke-virtual {p0, p1, v1, p3}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_e
    .catch LSQLite/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 374
    :cond_e
    :goto_e
    return-object v1

    .line 352
    :catch_f
    move-exception v0

    .line 353
    .local v0, e:LSQLite/Exception;
    if-lez p2, :cond_16

    iget-boolean v3, v1, LSQLite/TableResult;->atmaxrows:Z

    if-nez v3, :cond_e

    .line 354
    :cond_16
    throw v0

    .line 358
    .end local v0           #e:LSQLite/Exception;
    :cond_17
    monitor-enter p0

    .line 360
    :try_start_18
    invoke-virtual {p0, p1, p3}, LSQLite/Database;->compile(Ljava/lang/String;[Ljava/lang/String;)LSQLite/Vm;

    move-result-object v2

    .line 361
    .local v2, vm:LSQLite/Vm;
    iget v3, v2, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v3}, LSQLite/Database;->set_last_error(I)V

    .line 362
    iget v3, v1, LSQLite/TableResult;->maxrows:I

    if-lez v3, :cond_3a

    .line 363
    :goto_25
    iget v3, v1, LSQLite/TableResult;->nrows:I

    iget v4, v1, LSQLite/TableResult;->maxrows:I

    if-ge v3, v4, :cond_46

    invoke-virtual {v2, v1}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 364
    iget v3, v2, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v3}, LSQLite/Database;->set_last_error(I)V

    goto :goto_25

    .line 372
    .end local v2           #vm:LSQLite/Vm;
    :catchall_37
    move-exception v3

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_37

    throw v3

    .line 367
    .restart local v2       #vm:LSQLite/Vm;
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-virtual {v2, v1}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 368
    iget v3, v2, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v3}, LSQLite/Database;->set_last_error(I)V

    goto :goto_3a

    .line 371
    :cond_46
    invoke-virtual {v2}, LSQLite/Vm;->finalize()V

    .line 372
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_37

    goto :goto_e
.end method

.method public get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;
    .registers 4
    .parameter "sql"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LSQLite/Database;->get_table(Ljava/lang/String;I[Ljava/lang/String;)LSQLite/TableResult;

    move-result-object v0

    return-object v0
.end method

.method public get_table(Ljava/lang/String;[Ljava/lang/String;LSQLite/TableResult;)V
    .registers 8
    .parameter "sql"
    .parameter "args"
    .parameter "tbl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p3}, LSQLite/TableResult;->clear()V

    .line 403
    invoke-virtual {p0}, LSQLite/Database;->is3()Z

    move-result v2

    if-nez v2, :cond_17

    .line 405
    :try_start_9
    invoke-virtual {p0, p1, p3, p2}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    :try_end_c
    .catch LSQLite/Exception; {:try_start_9 .. :try_end_c} :catch_d

    .line 427
    :cond_c
    :goto_c
    return-void

    .line 406
    :catch_d
    move-exception v0

    .line 407
    .local v0, e:LSQLite/Exception;
    iget v2, p3, LSQLite/TableResult;->maxrows:I

    if-lez v2, :cond_16

    iget-boolean v2, p3, LSQLite/TableResult;->atmaxrows:Z

    if-nez v2, :cond_c

    .line 408
    :cond_16
    throw v0

    .line 412
    .end local v0           #e:LSQLite/Exception;
    :cond_17
    monitor-enter p0

    .line 414
    :try_start_18
    invoke-virtual {p0, p1, p2}, LSQLite/Database;->compile(Ljava/lang/String;[Ljava/lang/String;)LSQLite/Vm;

    move-result-object v1

    .line 415
    .local v1, vm:LSQLite/Vm;
    iget v2, p3, LSQLite/TableResult;->maxrows:I

    if-lez v2, :cond_35

    .line 416
    :goto_20
    iget v2, p3, LSQLite/TableResult;->nrows:I

    iget v3, p3, LSQLite/TableResult;->maxrows:I

    if-ge v2, v3, :cond_41

    invoke-virtual {v1, p3}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 417
    iget v2, v1, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v2}, LSQLite/Database;->set_last_error(I)V

    goto :goto_20

    .line 425
    .end local v1           #vm:LSQLite/Vm;
    :catchall_32
    move-exception v2

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_32

    throw v2

    .line 420
    .restart local v1       #vm:LSQLite/Vm;
    :cond_35
    :goto_35
    :try_start_35
    invoke-virtual {v1, p3}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 421
    iget v2, v1, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v2}, LSQLite/Database;->set_last_error(I)V

    goto :goto_35

    .line 424
    :cond_41
    invoke-virtual {v1}, LSQLite/Vm;->finalize()V

    .line 425
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_32

    goto :goto_c
.end method

.method public interrupt()V
    .registers 2

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_interrupt()V

    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public native is3()Z
.end method

.method public key(Ljava/lang/String;)V
    .registers 7
    .parameter "skey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 828
    monitor-enter p0

    .line 829
    const/4 v1, 0x0

    .line 830
    .local v1, ekey:[B
    if-eqz p1, :cond_26

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_26

    .line 831
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [B

    .line 832
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 833
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 834
    .local v0, c:C
    and-int/lit16 v3, v0, 0xff

    shr-int/lit8 v4, v0, 0x8

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 837
    .end local v0           #c:C
    .end local v2           #i:I
    :cond_26
    invoke-direct {p0, v1}, LSQLite/Database;->_key([B)V

    .line 838
    monitor-exit p0

    .line 839
    return-void

    .line 838
    :catchall_2b
    move-exception v3

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public key([B)V
    .registers 3
    .parameter "ekey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 814
    monitor-enter p0

    .line 815
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_key([B)V

    .line 816
    monitor-exit p0

    .line 817
    return-void

    .line 816
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public last_error()I
    .registers 2

    .prologue
    .line 517
    iget v0, p0, LSQLite/Database;->error_code:I

    return v0
.end method

.method public last_insert_rowid()J
    .registers 3

    .prologue
    .line 223
    monitor-enter p0

    .line 224
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_last_insert_rowid()J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 225
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public open(Ljava/lang/String;I)V
    .registers 8
    .parameter "filename"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 29
    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_d

    .line 30
    const/4 p2, 0x6

    .line 35
    :cond_5
    :goto_5
    monitor-enter p0

    .line 37
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_8
    invoke-direct {p0, p1, p2, v3, v4}, LSQLite/Database;->_open4(Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15
    .catch LSQLite/Exception; {:try_start_8 .. :try_end_b} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_1a

    .line 45
    :goto_b
    :try_start_b
    monitor-exit p0

    .line 46
    return-void

    .line 32
    :cond_d
    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_5

    .line 33
    const/4 p2, 0x1

    goto :goto_5

    .line 38
    :catch_13
    move-exception v1

    .line 39
    .local v1, se:LSQLite/Exception;
    throw v1

    .line 45
    .end local v1           #se:LSQLite/Exception;
    :catchall_15
    move-exception v3

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v3

    .line 40
    :catch_18
    move-exception v0

    .line 41
    .local v0, me:Ljava/lang/OutOfMemoryError;
    :try_start_19
    throw v0

    .line 42
    .end local v0           #me:Ljava/lang/OutOfMemoryError;
    :catch_1a
    move-exception v2

    .line 43
    .local v2, t:Ljava/lang/Throwable;
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_open(Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_15

    goto :goto_b
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .parameter "filename"
    .parameter "mode"
    .parameter "vfs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 58
    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_c

    .line 59
    const/4 p2, 0x6

    .line 64
    :cond_5
    :goto_5
    monitor-enter p0

    .line 66
    const/4 v3, 0x0

    :try_start_7
    invoke-direct {p0, p1, p2, p3, v3}, LSQLite/Database;->_open4(Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_14
    .catch LSQLite/Exception; {:try_start_7 .. :try_end_a} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_a} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_19

    .line 74
    :goto_a
    :try_start_a
    monitor-exit p0

    .line 75
    return-void

    .line 61
    :cond_c
    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_5

    .line 62
    const/4 p2, 0x1

    goto :goto_5

    .line 67
    :catch_12
    move-exception v1

    .line 68
    .local v1, se:LSQLite/Exception;
    throw v1

    .line 74
    .end local v1           #se:LSQLite/Exception;
    :catchall_14
    move-exception v3

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v3

    .line 69
    :catch_17
    move-exception v0

    .line 70
    .local v0, me:Ljava/lang/OutOfMemoryError;
    :try_start_18
    throw v0

    .line 71
    .end local v0           #me:Ljava/lang/OutOfMemoryError;
    :catch_19
    move-exception v2

    .line 72
    .local v2, t:Ljava/lang/Throwable;
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_open(Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_14

    goto :goto_a
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 9
    .parameter "filename"
    .parameter "mode"
    .parameter "vfs"
    .parameter "ver2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 88
    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_b

    .line 89
    const/4 p2, 0x6

    .line 94
    :cond_5
    :goto_5
    monitor-enter p0

    .line 96
    :try_start_6
    invoke-direct {p0, p1, p2, p3, p4}, LSQLite/Database;->_open4(Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_13
    .catch LSQLite/Exception; {:try_start_6 .. :try_end_9} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_9} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_18

    .line 104
    :goto_9
    :try_start_9
    monitor-exit p0

    .line 105
    return-void

    .line 91
    :cond_b
    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_5

    .line 92
    const/4 p2, 0x1

    goto :goto_5

    .line 97
    :catch_11
    move-exception v1

    .line 98
    .local v1, se:LSQLite/Exception;
    throw v1

    .line 104
    .end local v1           #se:LSQLite/Exception;
    :catchall_13
    move-exception v3

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v3

    .line 99
    :catch_16
    move-exception v0

    .line 100
    .local v0, me:Ljava/lang/OutOfMemoryError;
    :try_start_17
    throw v0

    .line 101
    .end local v0           #me:Ljava/lang/OutOfMemoryError;
    :catch_18
    move-exception v2

    .line 102
    .local v2, t:Ljava/lang/Throwable;
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_open(Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_13

    goto :goto_9
.end method

.method public open_aux_file(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_open_aux_file(Ljava/lang/String;)V

    .line 132
    monitor-exit p0

    .line 133
    return-void

    .line 132
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public open_blob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)LSQLite/Blob;
    .registers 15
    .parameter "db"
    .parameter "table"
    .parameter "column"
    .parameter "row"
    .parameter "rw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 733
    monitor-enter p0

    .line 734
    :try_start_1
    new-instance v7, LSQLite/Blob;

    invoke-direct {v7}, LSQLite/Blob;-><init>()V

    .local v7, blob:LSQLite/Blob;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    .line 735
    invoke-direct/range {v0 .. v7}, LSQLite/Database;->_open_blob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLSQLite/Blob;)V

    .line 736
    monitor-exit p0

    return-object v7

    .line 737
    .end local v7           #blob:LSQLite/Blob;
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public prepare(Ljava/lang/String;)LSQLite/Stmt;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 714
    monitor-enter p0

    .line 715
    :try_start_1
    new-instance v0, LSQLite/Stmt;

    invoke-direct {v0}, LSQLite/Stmt;-><init>()V

    .line 716
    .local v0, stmt:LSQLite/Stmt;
    invoke-direct {p0, p1, v0}, LSQLite/Database;->stmt_prepare(Ljava/lang/String;LSQLite/Stmt;)V

    .line 717
    monitor-exit p0

    return-object v0

    .line 718
    .end local v0           #stmt:LSQLite/Stmt;
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public profile(LSQLite/Profile;)V
    .registers 3
    .parameter "pr"

    .prologue
    .line 627
    monitor-enter p0

    .line 628
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_profile(LSQLite/Profile;)V

    .line 629
    monitor-exit p0

    .line 630
    return-void

    .line 629
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public progress_handler(ILSQLite/ProgressHandler;)V
    .registers 4
    .parameter "n"
    .parameter "p"

    .prologue
    .line 798
    monitor-enter p0

    .line 799
    :try_start_1
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_progress_handler(ILSQLite/ProgressHandler;)V

    .line 800
    monitor-exit p0

    .line 801
    return-void

    .line 800
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public rekey(Ljava/lang/String;)V
    .registers 7
    .parameter "skey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 866
    monitor-enter p0

    .line 867
    const/4 v1, 0x0

    .line 868
    .local v1, ekey:[B
    if-eqz p1, :cond_26

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_26

    .line 869
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [B

    .line 870
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 871
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 872
    .local v0, c:C
    and-int/lit16 v3, v0, 0xff

    shr-int/lit8 v4, v0, 0x8

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 875
    .end local v0           #c:C
    .end local v2           #i:I
    :cond_26
    invoke-direct {p0, v1}, LSQLite/Database;->_rekey([B)V

    .line 876
    monitor-exit p0

    .line 877
    return-void

    .line 876
    :catchall_2b
    move-exception v3

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public rekey([B)V
    .registers 3
    .parameter "ekey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 852
    monitor-enter p0

    .line 853
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_rekey([B)V

    .line 854
    monitor-exit p0

    .line 855
    return-void

    .line 854
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public set_authorizer(LSQLite/Authorizer;)V
    .registers 3
    .parameter "auth"

    .prologue
    .line 574
    monitor-enter p0

    .line 575
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_set_authorizer(LSQLite/Authorizer;)V

    .line 576
    monitor-exit p0

    .line 577
    return-void

    .line 576
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public set_encoding(Ljava/lang/String;)V
    .registers 3
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 558
    monitor-enter p0

    .line 559
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_set_encoding(Ljava/lang/String;)V

    .line 560
    monitor-exit p0

    .line 561
    return-void

    .line 560
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method protected set_last_error(I)V
    .registers 2
    .parameter "error_code"

    .prologue
    .line 526
    iput p1, p0, LSQLite/Database;->error_code:I

    .line 527
    return-void
.end method

.method public trace(LSQLite/Trace;)V
    .registers 3
    .parameter "tr"

    .prologue
    .line 589
    monitor-enter p0

    .line 590
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_trace(LSQLite/Trace;)V

    .line 591
    monitor-exit p0

    .line 592
    return-void

    .line 591
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method
