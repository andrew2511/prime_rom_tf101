.class public abstract Ljava/util/concurrent/AbstractExecutorService;
.super Ljava/lang/Object;
.source "AbstractExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 26
    .parameter
    .parameter "timed"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 113
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_8

    .line 114
    new-instance v19, Ljava/lang/NullPointerException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/NullPointerException;-><init>()V

    throw v19

    .line 115
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v17

    .line 116
    .local v17, ntasks:I
    if-nez v17, :cond_14

    .line 117
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 118
    :cond_14
    new-instance v10, Ljava/util/ArrayList;

    move-object v0, v10

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v10, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v5, Ljava/util/concurrent/ExecutorCompletionService;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 131
    .local v5, ecs:Ljava/util/concurrent/ExecutorCompletionService;,"Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v6, 0x0

    .line 132
    .local v6, ee:Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_88

    :try_start_27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    move-wide/from16 v13, v19

    .line 133
    .local v13, lastTime:J
    :goto_2d
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 136
    .local v12, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/concurrent/Callable;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_97

    .line 137
    add-int/lit8 v17, v17, -0x1

    .line 138
    const/4 v4, 0x1

    .local v4, active:I
    move-object v7, v6

    .line 141
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .local v7, ee:Ljava/util/concurrent/ExecutionException;
    :goto_48
    :try_start_48
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v9

    .line 142
    .local v9, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    if-nez v9, :cond_67

    .line 143
    if-lez v17, :cond_8d

    .line 144
    add-int/lit8 v17, v17, -0x1

    .line 145
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Callable;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_48 .. :try_end_65} :catchall_c6

    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 161
    :cond_67
    :goto_67
    if-eqz v9, :cond_eb

    .line 162
    add-int/lit8 v4, v4, -0x1

    .line 164
    :try_start_6b
    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_c6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6b .. :try_end_6e} :catch_d8
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6e} :catch_dd

    move-result-object v19

    .line 178
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_73
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v9, Ljava/util/concurrent/Future;

    .line 179
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move-object v0, v9

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_73

    .line 132
    .end local v4           #active:I
    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v13           #lastTime:J
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local p0
    :cond_88
    const-wide/16 v19, 0x0

    move-wide/from16 v13, v19

    goto :goto_2d

    .line 148
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .end local p0
    .restart local v4       #active:I
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v12       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v13       #lastTime:J
    :cond_8d
    if-nez v4, :cond_b1

    .line 173
    if-nez v7, :cond_e9

    .line 174
    :try_start_91
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v6}, Ljava/util/concurrent/ExecutionException;-><init>()V
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_c6

    .line 175
    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    :goto_96
    :try_start_96
    throw v6
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    .line 178
    .end local v4           #active:I
    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v12           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v13           #lastTime:J
    :catchall_97
    move-exception v19

    :goto_98
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_9c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Future;

    .line 179
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v20, 0x1

    move-object v0, v9

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_9c

    .line 150
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v4       #active:I
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v12       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v13       #lastTime:J
    :cond_b1
    if-eqz p2, :cond_d3

    .line 151
    :try_start_b3
    sget-object v19, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v5

    move-wide/from16 v1, p3

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 152
    if-nez v9, :cond_c9

    .line 153
    new-instance v19, Ljava/util/concurrent/TimeoutException;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v19

    .line 178
    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catchall_c6
    move-exception v19

    move-object v6, v7

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_98

    .line 154
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_c9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 155
    .local v15, now:J
    sub-long v19, v15, v13

    sub-long p3, p3, v19

    .line 156
    move-wide v13, v15

    .line 157
    goto :goto_67

    .line 159
    .end local v15           #now:J
    :cond_d3
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v9

    goto :goto_67

    .line 165
    :catch_d8
    move-exception v8

    .line 166
    .local v8, eex:Ljava/util/concurrent/ExecutionException;
    move-object v6, v8

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v8           #eex:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    :goto_da
    move-object v7, v6

    .line 171
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    goto/16 :goto_48

    .line 167
    :catch_dd
    move-exception v18

    .line 168
    .local v18, rex:Ljava/lang/RuntimeException;
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_e6
    .catchall {:try_start_b3 .. :try_end_e6} :catchall_c6

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_da

    .line 179
    .end local v4           #active:I
    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v12           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v13           #lastTime:J
    .end local v18           #rex:Ljava/lang/RuntimeException;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_e7
    throw v19

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v4       #active:I
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v12       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v13       #lastTime:J
    :cond_e8
    return-object v19

    .end local v11           #i$:Ljava/util/Iterator;
    :cond_e9
    move-object v6, v7

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_96

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    :cond_eb
    move-object v6, v7

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_da
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v8, 0x1

    .line 201
    if-nez p1, :cond_9

    .line 202
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 203
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v3, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 206
    .local v0, done:Z
    :try_start_13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Callable;

    .line 207
    .local v5, t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, v5}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v2

    .line 208
    .local v2, f:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p0, v2}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_17

    .line 223
    .end local v2           #f:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<TT;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    :catchall_2e
    move-exception v6

    if-nez v0, :cond_78

    .line 224
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 225
    .local v1, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_35

    .line 211
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_45
    :try_start_45
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_49
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 212
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_2e

    move-result v6

    if-nez v6, :cond_49

    .line 214
    :try_start_5b
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_2e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5b .. :try_end_5e} :catch_79

    goto :goto_49

    .line 215
    :catch_5f
    move-exception v6

    goto :goto_49

    .line 220
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_61
    const/4 v0, 0x1

    .line 223
    if-nez v0, :cond_7b

    .line 224
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 225
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_68

    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_78
    throw v6

    .line 216
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :catch_79
    move-exception v6

    goto :goto_49

    .line 225
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_7b
    return-object v3
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 24
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 232
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-eqz p1, :cond_4

    if-nez p4, :cond_a

    .line 233
    :cond_4
    new-instance v17, Ljava/lang/NullPointerException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/NullPointerException;-><init>()V

    throw v17

    .line 234
    :cond_a
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    .line 235
    .local v11, nanos:J
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v17

    move-object v0, v6

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v6, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v4, 0x0

    .line 238
    .local v4, done:Z
    :try_start_1f
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_59

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/concurrent/Callable;

    .line 239
    .local v15, t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3d

    goto :goto_23

    .line 274
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    .end local p1           #tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    :catchall_3d
    move-exception v17

    if-nez v4, :cond_120

    .line 275
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_120

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 276
    .local v5, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_44

    .line 241
    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local p1       #tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_59
    :try_start_59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 245
    .local v9, lastTime:J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 246
    .end local p1           #tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    :cond_61
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9c

    .line 247
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual/range {p0 .. p1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_75
    .catchall {:try_start_59 .. :try_end_75} :catchall_3d

    move-result-wide v13

    .line 249
    .local v13, now:J
    sub-long v17, v13, v9

    sub-long v11, v11, v17

    .line 250
    move-wide v9, v13

    .line 251
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-gtz v17, :cond_61

    .line 274
    if-nez v4, :cond_121

    .line 275
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_87
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 276
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_87

    .line 255
    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v13           #now:J
    :cond_9c
    :try_start_9c
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a0
    :goto_a0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_104

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 256
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_af
    .catchall {:try_start_9c .. :try_end_af} :catchall_3d

    move-result v17

    if-nez v17, :cond_a0

    .line 257
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-gtz v17, :cond_d3

    .line 274
    if-nez v4, :cond_121

    .line 275
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_be
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v5, Ljava/util/concurrent/Future;

    .line 276
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_be

    .line 260
    :cond_d3
    :try_start_d3
    sget-object v17, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v5

    move-wide v1, v11

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_dc
    .catchall {:try_start_d3 .. :try_end_dc} :catchall_3d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d3 .. :try_end_dc} :catch_124
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d3 .. :try_end_dc} :catch_122
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d3 .. :try_end_dc} :catch_e6

    .line 266
    :goto_dc
    :try_start_dc
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_3d

    move-result-wide v13

    .line 267
    .restart local v13       #now:J
    sub-long v17, v13, v9

    sub-long v11, v11, v17

    .line 268
    move-wide v9, v13

    goto :goto_a0

    .line 263
    .end local v13           #now:J
    :catch_e6
    move-exception v17

    move-object/from16 v16, v17

    .line 274
    .local v16, toe:Ljava/util/concurrent/TimeoutException;
    if-nez v4, :cond_121

    .line 275
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_ef
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v5, Ljava/util/concurrent/Future;

    .line 276
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_ef

    .line 271
    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v16           #toe:Ljava/util/concurrent/TimeoutException;
    :cond_104
    const/4 v4, 0x1

    .line 274
    if-nez v4, :cond_121

    .line 275
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 276
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_10b

    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v9           #lastTime:J
    :cond_120
    throw v17

    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v9       #lastTime:J
    :cond_121
    return-object v6

    .line 262
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catch_122
    move-exception v17

    goto :goto_dc

    .line 261
    :catch_124
    move-exception v17

    goto :goto_dc
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 186
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_3
    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v1

    .line 189
    :goto_7
    return-object v1

    .line 187
    :catch_8
    move-exception v0

    .line 188
    .local v0, cannotHappen:Ljava/util/concurrent/TimeoutException;
    sget-boolean v1, Ljava/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 189
    :cond_13
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 196
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .parameter "runnable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 4
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 80
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 81
    .local v0, ftask:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 5
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, result:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 91
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 92
    .local v0, ftask:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 102
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 103
    .local v0, ftask:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-object v0
.end method
