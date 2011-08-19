.class public Lcom/android/internal/os/SamplingProfilerIntegration;
.super Ljava/lang/Object;
.source "SamplingProfilerIntegration.java"


# static fields
.field private static INSTANCE:Ldalvik/system/SamplingProfiler; = null

.field public static final SNAPSHOT_DIR:Ljava/lang/String; = "/data/snapshots"

.field private static final TAG:Ljava/lang/String; = "SamplingProfilerIntegration"

.field private static final enabled:Z

.field private static final pending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final samplingProfilerDepth:I

.field private static final samplingProfilerMilliseconds:I

.field private static final snapshotWriter:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    const-string v1, "persist.sys.profiler_ms"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    .line 54
    const-string v1, "persist.sys.profiler_depth"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerDepth:I

    .line 55
    sget v1, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    if-lez v1, :cond_69

    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/snapshots"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 61
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 63
    new-instance v1, Lcom/android/internal/os/SamplingProfilerIntegration$1;

    invoke-direct {v1}, Lcom/android/internal/os/SamplingProfilerIntegration$1;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 68
    sput-boolean v4, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    .line 69
    const-string v1, "SamplingProfilerIntegration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling enabled. Sampling interval ms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0           #dir:Ljava/io/File;
    :goto_5c
    return-void

    .line 72
    .restart local v0       #dir:Ljava/io/File;
    :cond_5d
    sput-object v5, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 73
    sput-boolean v4, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    .line 74
    const-string v1, "SamplingProfilerIntegration"

    const-string v2, "Profiling setup failed. Could not create /data/snapshots"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 77
    .end local v0           #dir:Ljava/io/File;
    :cond_69
    sput-object v5, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 78
    sput-boolean v3, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    .line 79
    const-string v1, "SamplingProfilerIntegration"

    const-string v2, "Profiling disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static generateSnapshotHeader(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/PrintStream;)V
    .registers 5
    .parameter "processName"
    .parameter "packageInfo"
    .parameter "out"

    .prologue
    .line 197
    const-string v0, "Version: 2"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    if-eqz p1, :cond_4d

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package-Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Ljava/io/PrintStream;->println()V

    .line 206
    return-void
.end method

.method public static isEnabled()Z
    .registers 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    return v0
.end method

.method public static start()V
    .registers 4

    .prologue
    .line 96
    sget-boolean v2, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v2, :cond_5

    .line 103
    :goto_4
    return-void

    .line 99
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 100
    .local v0, group:Ljava/lang/ThreadGroup;
    invoke-static {v0}, Ldalvik/system/SamplingProfiler;->newThreadGroupTheadSet(Ljava/lang/ThreadGroup;)Ldalvik/system/SamplingProfiler$ThreadSet;

    move-result-object v1

    .line 101
    .local v1, threadSet:Ldalvik/system/SamplingProfiler$ThreadSet;
    new-instance v2, Ldalvik/system/SamplingProfiler;

    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerDepth:I

    invoke-direct {v2, v3, v1}, Ldalvik/system/SamplingProfiler;-><init>(ILdalvik/system/SamplingProfiler$ThreadSet;)V

    sput-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    .line 102
    sget-object v2, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    sget v3, Lcom/android/internal/os/SamplingProfilerIntegration;->samplingProfilerMilliseconds:I

    invoke-virtual {v2, v3}, Ldalvik/system/SamplingProfiler;->start(I)V

    goto :goto_4
.end method

.method public static writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .registers 5
    .parameter "processName"
    .parameter "packageInfo"

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v0, :cond_5

    .line 130
    :cond_4
    :goto_4
    return-void

    .line 119
    :cond_5
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/os/SamplingProfilerIntegration$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/SamplingProfilerIntegration$2;-><init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private static writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .registers 14
    .parameter "processName"
    .parameter "packageInfo"

    .prologue
    .line 148
    sget-boolean v9, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v9, :cond_5

    .line 181
    :goto_4
    return-void

    .line 151
    :cond_5
    sget-object v9, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    invoke-virtual {v9}, Ldalvik/system/SamplingProfiler;->stop()V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 159
    .local v7, start:J
    const-string v9, ":"

    const-string v10, "."

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, name:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/snapshots/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".snapshot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 163
    .local v4, out:Ljava/io/PrintStream;
    :try_start_3e
    new-instance v5, Ljava/io/PrintStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v9}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_c7
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4d} :catch_cf

    .line 164
    .end local v4           #out:Ljava/io/PrintStream;
    .local v5, out:Ljava/io/PrintStream;
    :try_start_4d
    invoke-static {v3, p1, v5}, Lcom/android/internal/os/SamplingProfilerIntegration;->generateSnapshotHeader(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/PrintStream;)V

    .line 165
    new-instance v9, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;

    sget-object v10, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    invoke-virtual {v10}, Ldalvik/system/SamplingProfiler;->getHprofData()Ldalvik/system/SamplingProfiler$HprofData;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;-><init>(Ldalvik/system/SamplingProfiler$HprofData;Ljava/io/OutputStream;)V

    invoke-virtual {v9}, Ldalvik/system/SamplingProfiler$AsciiHprofWriter;->write()V

    .line 166
    invoke-virtual {v5}, Ljava/io/PrintStream;->checkError()Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 167
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9
    :try_end_6a
    .catchall {:try_start_4d .. :try_end_6a} :catchall_cc
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_6a} :catch_6a

    .line 169
    :catch_6a
    move-exception v9

    move-object v0, v9

    move-object v4, v5

    .line 170
    .end local v5           #out:Ljava/io/PrintStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v4       #out:Ljava/io/PrintStream;
    :goto_6d
    :try_start_6d
    const-string v9, "SamplingProfilerIntegration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error writing snapshot to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_6d .. :try_end_85} :catchall_c7

    .line 173
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/PrintStream;
    .restart local v5       #out:Ljava/io/PrintStream;
    :cond_8a
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 177
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v7

    .line 180
    .local v1, elapsed:J
    const-string v9, "SamplingProfilerIntegration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrote snapshot for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 173
    .end local v1           #elapsed:J
    .end local v5           #out:Ljava/io/PrintStream;
    .restart local v4       #out:Ljava/io/PrintStream;
    :catchall_c7
    move-exception v9

    :goto_c8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .end local v4           #out:Ljava/io/PrintStream;
    .restart local v5       #out:Ljava/io/PrintStream;
    :catchall_cc
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/PrintStream;
    .restart local v4       #out:Ljava/io/PrintStream;
    goto :goto_c8

    .line 169
    :catch_cf
    move-exception v9

    move-object v0, v9

    goto :goto_6d
.end method

.method public static writeZygoteSnapshot()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 136
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v0, :cond_6

    .line 142
    :goto_5
    return-void

    .line 139
    :cond_6
    const-string/jumbo v0, "zygote"

    invoke-static {v0, v1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 140
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    invoke-virtual {v0}, Ldalvik/system/SamplingProfiler;->shutdown()V

    .line 141
    sput-object v1, Lcom/android/internal/os/SamplingProfilerIntegration;->INSTANCE:Ldalvik/system/SamplingProfiler;

    goto :goto_5
.end method
