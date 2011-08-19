.class final Ljava/lang/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessManager$ProcessOutputStream;,
        Ljava/lang/ProcessManager$ProcessInputStream;,
        Ljava/lang/ProcessManager$ProcessReferenceQueue;,
        Ljava/lang/ProcessManager$ProcessReference;,
        Ljava/lang/ProcessManager$ProcessImpl;
    }
.end annotation


# static fields
.field private static final WAIT_STATUS_NO_CHILDREN:I = -0x2

.field private static final WAIT_STATUS_STRANGE_ERRNO:I = -0x3

.field private static final WAIT_STATUS_UNKNOWN:I = -0x1

.field static final instance:Ljava/lang/ProcessManager;


# instance fields
.field private final processReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ProcessManager$ProcessReference;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/ProcessManager;->staticInitialize()V

    .line 349
    new-instance v0, Ljava/lang/ProcessManager;

    invoke-direct {v0}, Ljava/lang/ProcessManager;-><init>()V

    sput-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    .line 77
    new-instance v1, Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    .line 81
    new-instance v0, Ljava/lang/ProcessManager$1;

    const-class v1, Ljava/lang/ProcessManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessManager$1;-><init>(Ljava/lang/ProcessManager;Ljava/lang/String;)V

    .line 87
    .local v0, processThread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method static synthetic access$200(I)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Ljava/lang/ProcessManager;->kill(I)V

    return-void
.end method

.method static native exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static getInstance()Ljava/lang/ProcessManager;
    .registers 1

    .prologue
    .line 353
    sget-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    return-object v0
.end method

.method private static native kill(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native staticInitialize()V
.end method


# virtual methods
.method cleanUp()V
    .registers 5

    .prologue
    .line 104
    :goto_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;->poll()Ljava/lang/ProcessManager$ProcessReference;

    move-result-object v0

    .local v0, reference:Ljava/lang/ProcessManager$ProcessReference;
    if-eqz v0, :cond_1b

    .line 105
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v1

    .line 106
    :try_start_b
    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    iget v3, v0, Ljava/lang/ProcessManager$ProcessReference;->processId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v1

    goto :goto_0

    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v2

    .line 109
    :cond_1b
    return-void
.end method

.method exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;
    .registers 28
    .parameter "taintedCommand"
    .parameter "taintedEnvironment"
    .parameter "workingDirectory"
    .parameter "redirectErrorStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    if-nez p1, :cond_8

    .line 180
    new-instance v11, Ljava/lang/NullPointerException;

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v11

    .line 182
    :cond_8
    move-object/from16 v0, p1

    array-length v0, v0

    move v11, v0

    if-nez v11, :cond_14

    .line 183
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v11}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v11

    .line 187
    :cond_14
    invoke-virtual/range {p1 .. p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 188
    .local v5, command:[Ljava/lang/String;
    if-eqz p2, :cond_4a

    invoke-virtual/range {p2 .. p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v6, p1

    .line 189
    .local v6, environment:[Ljava/lang/String;
    :goto_24
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v21

    .line 190
    .local v21, securityManager:Ljava/lang/SecurityManager;
    if-eqz v21, :cond_33

    .line 191
    const/4 v11, 0x0

    aget-object v11, v5, v11

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 194
    :cond_33
    move-object v13, v5

    .local v13, arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_3a
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_50

    aget-object v12, v13, v16

    .line 195
    .local v12, arg:Ljava/lang/String;
    if-nez v12, :cond_4d

    .line 196
    new-instance v11, Ljava/lang/NullPointerException;

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v11

    .line 188
    .end local v6           #environment:[Ljava/lang/String;
    .end local v12           #arg:Ljava/lang/String;
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v21           #securityManager:Ljava/lang/SecurityManager;
    .restart local p1
    :cond_4a
    const/4 v11, 0x0

    move-object v6, v11

    goto :goto_24

    .line 194
    .end local p1
    .restart local v6       #environment:[Ljava/lang/String;
    .restart local v12       #arg:Ljava/lang/String;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v17       #len$:I
    .restart local v21       #securityManager:Ljava/lang/SecurityManager;
    :cond_4d
    add-int/lit8 v16, v16, 0x1

    goto :goto_3a

    .line 200
    .end local v12           #arg:Ljava/lang/String;
    :cond_50
    if-eqz v6, :cond_6c

    .line 201
    move-object v13, v6

    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_59
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6c

    aget-object v15, v13, v16

    .line 202
    .local v15, env:Ljava/lang/String;
    if-nez v15, :cond_69

    .line 203
    new-instance v11, Ljava/lang/NullPointerException;

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v11

    .line 201
    :cond_69
    add-int/lit8 v16, v16, 0x1

    goto :goto_59

    .line 208
    .end local v15           #env:Ljava/lang/String;
    :cond_6c
    new-instance v8, Ljava/io/FileDescriptor;

    invoke-direct {v8}, Ljava/io/FileDescriptor;-><init>()V

    .line 209
    .local v8, in:Ljava/io/FileDescriptor;
    new-instance v9, Ljava/io/FileDescriptor;

    invoke-direct {v9}, Ljava/io/FileDescriptor;-><init>()V

    .line 210
    .local v9, out:Ljava/io/FileDescriptor;
    new-instance v10, Ljava/io/FileDescriptor;

    invoke-direct {v10}, Ljava/io/FileDescriptor;-><init>()V

    .line 212
    .local v10, err:Ljava/io/FileDescriptor;
    if-nez p3, :cond_c0

    const/4 v11, 0x0

    move-object v7, v11

    .line 218
    .local v7, workingPath:Ljava/lang/String;
    :goto_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    move-object v12, v0

    monitor-enter v12

    move/from16 v11, p4

    .line 221
    :try_start_87
    invoke-static/range {v5 .. v11}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)I
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_108
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_c6

    move-result v18

    .line 230
    .local v18, pid:I
    :try_start_8b
    new-instance v19, Ljava/lang/ProcessManager$ProcessImpl;

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/ProcessManager$ProcessImpl;-><init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 231
    .local v19, process:Ljava/lang/ProcessManager$ProcessImpl;
    new-instance v20, Ljava/lang/ProcessManager$ProcessReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    move-object v11, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Ljava/lang/ProcessManager$ProcessReference;-><init>(Ljava/lang/ProcessManager$ProcessImpl;Ljava/lang/ProcessManager$ProcessReferenceQueue;)V

    .line 233
    .local v20, processReference:Ljava/lang/ProcessManager$ProcessReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    move-object v11, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .end local v13           #arr$:[Ljava/lang/String;
    move-object v0, v11

    move-object v1, v13

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v12
    :try_end_bf
    .catchall {:try_start_8b .. :try_end_bf} :catchall_108

    return-object v19

    .line 212
    .end local v7           #workingPath:Ljava/lang/String;
    .end local v18           #pid:I
    .end local v19           #process:Ljava/lang/ProcessManager$ProcessImpl;
    .end local v20           #processReference:Ljava/lang/ProcessManager$ProcessReference;
    .restart local v13       #arr$:[Ljava/lang/String;
    :cond_c0
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    goto :goto_7f

    .line 222
    .restart local v7       #workingPath:Ljava/lang/String;
    :catch_c6
    move-exception v14

    .line 223
    .local v14, e:Ljava/io/IOException;
    :try_start_c7
    new-instance v22, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error running exec(). Command: "

    .end local v13           #arr$:[Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " Working Directory: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " Environment: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 227
    .local v22, wrapper:Ljava/io/IOException;
    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 228
    throw v22

    .line 242
    .end local v14           #e:Ljava/io/IOException;
    .end local v22           #wrapper:Ljava/io/IOException;
    :catchall_108
    move-exception v11

    monitor-exit v12
    :try_end_10a
    .catchall {:try_start_c7 .. :try_end_10a} :catchall_108

    throw v11
.end method

.method onExit(II)V
    .registers 10
    .parameter "pid"
    .parameter "exitValue"

    .prologue
    .line 124
    const/4 v3, 0x0

    .line 126
    .local v3, processReference:Ljava/lang/ProcessManager$ProcessReference;
    iget-object v5, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v5

    .line 127
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/ProcessManager;->cleanUp()V

    .line 128
    if-ltz p1, :cond_26

    .line 129
    iget-object v4, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ProcessManager$ProcessReference;

    move-object v3, v0

    .line 155
    :cond_17
    :goto_17
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_41

    .line 157
    if-eqz v3, :cond_25

    .line 158
    invoke-virtual {v3}, Ljava/lang/ProcessManager$ProcessReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ProcessManager$ProcessImpl;

    .line 159
    .local v2, process:Ljava/lang/ProcessManager$ProcessImpl;
    if-eqz v2, :cond_25

    .line 160
    invoke-virtual {v2, p2}, Ljava/lang/ProcessManager$ProcessImpl;->setExitValue(I)V

    .line 163
    .end local v2           #process:Ljava/lang/ProcessManager$ProcessImpl;
    :cond_25
    return-void

    .line 130
    :cond_26
    const/4 v4, -0x2

    if-ne p2, v4, :cond_44

    .line 131
    :try_start_29
    iget-object v4, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_41

    move-result v4

    if-eqz v4, :cond_17

    .line 138
    :try_start_31
    iget-object v4, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_17

    .line 139
    :catch_37
    move-exception v4

    move-object v1, v4

    .line 141
    .local v1, ex:Ljava/lang/InterruptedException;
    :try_start_39
    new-instance v4, Ljava/lang/AssertionError;

    const-string v6, "unexpected interrupt"

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 155
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw v4

    .line 153
    :cond_44
    :try_start_44
    new-instance v4, Ljava/lang/AssertionError;

    const-string v6, "unexpected wait() behavior"

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_41
.end method

.method native watchChildren()V
.end method
