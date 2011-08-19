.class public Ljava/lang/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field private static finalizeOnExit:Z

.field private static final mRuntime:Ljava/lang/Runtime;


# instance fields
.field private final mLibPaths:[Ljava/lang/String;

.field private shutdownHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private shuttingDown:Z

.field private tracingMethods:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Runtime;

    invoke-direct {v0}, Ljava/lang/Runtime;-><init>()V

    sput-object v0, Ljava/lang/Runtime;->mRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    .line 99
    const-string v4, "java.library.path"

    const-string v5, "."

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, pathList:Ljava/lang/String;
    const-string v4, "path.separator"

    const-string v5, ":"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, pathSep:Ljava/lang/String;
    const-string v4, "file.separator"

    const-string v5, "/"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, fileSep:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    iget-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_52

    .line 108
    iget-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    aget-object v6, v5, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 107
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 112
    :cond_52
    return-void
.end method

.method public static getRuntime()Ljava/lang/Runtime;
    .registers 1

    .prologue
    .line 353
    sget-object v0, Ljava/lang/Runtime;->mRuntime:Ljava/lang/Runtime;

    return-object v0
.end method

.method private static native nativeExit(IZ)V
.end method

.method private static native nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
.end method

.method private native runFinalization(Z)V
.end method

.method public static runFinalizersOnExit(Z)V
    .registers 3
    .parameter "run"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 492
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_a

    .line 493
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkExit(I)V

    .line 495
    :cond_a
    sput-boolean p0, Ljava/lang/Runtime;->finalizeOnExit:Z

    .line 496
    return-void
.end method


# virtual methods
.method public addShutdownHook(Ljava/lang/Thread;)V
    .registers 6
    .parameter "hook"

    .prologue
    .line 615
    if-nez p1, :cond_a

    .line 616
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Hook may not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_a
    iget-boolean v1, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-eqz v1, :cond_16

    .line 620
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VM already shutting down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_16
    iget-boolean v1, p1, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v1, :cond_22

    .line 624
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Hook has already been started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_22
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 628
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_32

    .line 629
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "shutdownHooks"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 632
    :cond_32
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v1

    .line 633
    :try_start_35
    iget-object v2, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 634
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Hook already registered."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_45

    throw v2

    .line 637
    :cond_48
    :try_start_48
    iget-object v2, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_45

    .line 639
    return-void
.end method

.method public native availableProcessors()I
.end method

.method public exec(Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .parameter "prog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 4
    .parameter "prog"
    .parameter "envp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 9
    .parameter "prog"
    .parameter "envp"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    if-nez p1, :cond_8

    .line 257
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 258
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_14

    .line 259
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 263
    :cond_14
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 264
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 265
    .local v1, length:I
    new-array v2, v1, [Ljava/lang/String;

    .line 266
    .local v2, progArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    if-ge v0, v1, :cond_2b

    .line 267
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 271
    :cond_2b
    invoke-virtual {p0, v2, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v4

    return-object v4
.end method

.method public exec([Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .parameter "progArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 4
    .parameter "progArray"
    .parameter "envp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 6
    .parameter "progArray"
    .parameter "envp"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/ProcessManager;->getInstance()Ljava/lang/ProcessManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exit(I)V
    .registers 10
    .parameter "code"

    .prologue
    .line 290
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 291
    .local v5, smgr:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_9

    .line 292
    invoke-virtual {v5, p1}, Ljava/lang/SecurityManager;->checkExit(I)V

    .line 296
    :cond_9
    monitor-enter p0

    .line 297
    :try_start_a
    iget-boolean v6, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-nez v6, :cond_4e

    .line 298
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/lang/Runtime;->shuttingDown:Z

    .line 301
    iget-object v6, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v6
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_32

    .line 303
    :try_start_14
    iget-object v7, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/Thread;

    .line 304
    .local v2, hooks:[Ljava/lang/Thread;
    iget-object v7, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 305
    monitor-exit v6
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_2f

    .line 308
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Thread;
    :try_start_23
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_25
    if-ge v3, v4, :cond_35

    aget-object v1, v0, v3

    .line 309
    .local v1, hook:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_32

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 305
    .end local v0           #arr$:[Ljava/lang/Thread;
    .end local v1           #hook:Ljava/lang/Thread;
    .end local v2           #hooks:[Ljava/lang/Thread;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_2f
    move-exception v7

    :try_start_30
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v7

    .line 329
    :catchall_32
    move-exception v6

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v6

    .line 313
    .restart local v0       #arr$:[Ljava/lang/Thread;
    .restart local v2       #hooks:[Ljava/lang/Thread;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_35
    move-object v0, v2

    :try_start_36
    array-length v4, v0

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v4, :cond_42

    aget-object v1, v0, v3
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_32

    .line 315
    .restart local v1       #hook:Ljava/lang/Thread;
    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_50

    .line 313
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 322
    .end local v1           #hook:Ljava/lang/Thread;
    :cond_42
    :try_start_42
    sget-boolean v6, Ljava/lang/Runtime;->finalizeOnExit:Z

    if-eqz v6, :cond_4a

    .line 323
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Ljava/lang/Runtime;->runFinalization(Z)V

    .line 327
    :cond_4a
    const/4 v6, 0x1

    invoke-static {p1, v6}, Ljava/lang/Runtime;->nativeExit(IZ)V

    .line 329
    .end local v0           #arr$:[Ljava/lang/Thread;
    .end local v2           #hooks:[Ljava/lang/Thread;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_32

    .line 330
    return-void

    .line 316
    .restart local v0       #arr$:[Ljava/lang/Thread;
    .restart local v1       #hook:Ljava/lang/Thread;
    .restart local v2       #hooks:[Ljava/lang/Thread;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :catch_50
    move-exception v6

    goto :goto_3f
.end method

.method public native freeMemory()J
.end method

.method public native gc()V
.end method

.method public getLocalizedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 6
    .parameter "stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    const-string v1, "file.encoding"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, encoding:Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 551
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot localize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_29
    return-object p1
.end method

.method public getLocalizedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 6
    .parameter "stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 569
    const-string v1, "file.encoding"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, encoding:Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 571
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot localize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_29
    return-object p1
.end method

.method public halt(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 691
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 692
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 693
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkExit(I)V

    .line 697
    :cond_9
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Runtime;->nativeExit(IZ)V

    .line 698
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .registers 4
    .parameter "pathName"

    .prologue
    .line 373
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 374
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 375
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkLink(Ljava/lang/String;)V

    .line 378
    :cond_9
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 379
    return-void
.end method

.method load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6
    .parameter "filename"
    .parameter "loader"

    .prologue
    .line 385
    if-nez p1, :cond_a

    .line 386
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "library path was null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 390
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_16
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .registers 4
    .parameter "libName"

    .prologue
    .line 410
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 411
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkLink(Ljava/lang/String;)V

    .line 415
    :cond_9
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 416
    return-void
.end method

.method loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 15
    .parameter "libraryName"
    .parameter "loader"

    .prologue
    .line 422
    if-eqz p2, :cond_39

    .line 423
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, filename:Ljava/lang/String;
    if-nez v5, :cond_2d

    .line 425
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t load "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "findLibrary returned null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 428
    :cond_2d
    invoke-static {v5, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, error:Ljava/lang/String;
    if-eqz v4, :cond_70

    .line 430
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v9, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 435
    .end local v4           #error:Ljava/lang/String;
    .end local v5           #filename:Ljava/lang/String;
    :cond_39
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 436
    .restart local v5       #filename:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v2, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 438
    .local v7, lastError:Ljava/lang/String;
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_47
    if-ge v6, v8, :cond_75

    aget-object v3, v0, v6

    .line 439
    .local v3, directory:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, candidate:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_72

    .line 442
    invoke-static {v1, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .restart local v4       #error:Ljava/lang/String;
    if-nez v4, :cond_71

    .line 444
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #candidate:Ljava/lang/String;
    .end local v2           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #directory:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #lastError:Ljava/lang/String;
    .end local v8           #len$:I
    :cond_70
    return-void

    .line 446
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #candidate:Ljava/lang/String;
    .restart local v2       #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #directory:Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #lastError:Ljava/lang/String;
    .restart local v8       #len$:I
    :cond_71
    move-object v7, v4

    .line 438
    .end local v4           #error:Ljava/lang/String;
    :cond_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 450
    .end local v1           #candidate:Ljava/lang/String;
    .end local v3           #directory:Ljava/lang/String;
    :cond_75
    if-eqz v7, :cond_7d

    .line 451
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v9, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 453
    :cond_7d
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Library "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found; tried "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public native maxMemory()J
.end method

.method public removeShutdownHook(Ljava/lang/Thread;)Z
    .registers 5
    .parameter "hook"

    .prologue
    .line 656
    if-nez p1, :cond_a

    .line 657
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Hook may not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_a
    iget-boolean v1, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-eqz v1, :cond_16

    .line 661
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VM already shutting down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 664
    :cond_16
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 665
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_26

    .line 666
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "shutdownHooks"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 669
    :cond_26
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v1

    .line 670
    :try_start_29
    iget-object v2, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 671
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public runFinalization()V
    .registers 2

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Runtime;->runFinalization(Z)V

    .line 476
    return-void
.end method

.method public native totalMemory()J
.end method

.method public traceInstructions(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 515
    return-void
.end method

.method public traceMethodCalls(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 526
    iget-boolean v0, p0, Ljava/lang/Runtime;->tracingMethods:Z

    if-eq p1, v0, :cond_b

    .line 527
    if-eqz p1, :cond_c

    .line 528
    invoke-static {}, Ldalvik/system/VMDebug;->startMethodTracing()V

    .line 532
    :goto_9
    iput-boolean p1, p0, Ljava/lang/Runtime;->tracingMethods:Z

    .line 534
    :cond_b
    return-void

    .line 530
    :cond_c
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    goto :goto_9
.end method
