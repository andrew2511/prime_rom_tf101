.class public Lcom/zinio/mobile/android/util/c;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# instance fields
.field private transient a:Lcom/zinio/mobile/android/util/a;

.field private transient b:Lcom/zinio/mobile/android/util/a;

.field private transient c:I

.field private final d:I

.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/concurrent/locks/Condition;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 117
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/util/c;->f:Ljava/util/concurrent/locks/Condition;

    .line 119
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    .line 138
    const v0, 0x7fffffff

    iput v0, p0, Lcom/zinio/mobile/android/util/c;->d:I

    .line 141
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;-><init>()V

    .line 127
    return-void
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 463
    iget-object v2, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 466
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;->b()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 467
    if-eqz v2, :cond_0

    .line 474
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v2

    :goto_1
    return-object v0

    .line 469
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 470
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_1

    .line 471
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/zinio/mobile/android/util/c;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/util/c;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private a(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 382
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 383
    iget-object v2, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 386
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/util/c;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    .line 389
    :goto_1
    return v0

    .line 388
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 389
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_1

    .line 390
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/util/c;)Lcom/zinio/mobile/android/util/a;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    return-object v0
.end method

.method private b()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    .line 202
    if-nez v0, :cond_0

    move-object v0, v2

    .line 212
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v1, v0, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    .line 205
    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    .line 206
    if-nez v1, :cond_1

    .line 207
    iput-object v2, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    .line 210
    :goto_1
    iget v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    .line 211
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 212
    iget-object v0, v0, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;

    goto :goto_0

    .line 209
    :cond_1
    iput-object v2, v1, Lcom/zinio/mobile/android/util/a;->b:Lcom/zinio/mobile/android/util/a;

    goto :goto_1
.end method

.method private b(Lcom/zinio/mobile/android/util/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p1, Lcom/zinio/mobile/android/util/a;->b:Lcom/zinio/mobile/android/util/a;

    .line 238
    iget-object v1, p1, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    .line 239
    if-nez v0, :cond_1

    .line 240
    if-nez v1, :cond_0

    .line 241
    iput-object v2, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    iput-object v2, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    .line 253
    :goto_0
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    .line 254
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 255
    return-void

    .line 243
    :cond_0
    iput-object v2, v1, Lcom/zinio/mobile/android/util/a;->b:Lcom/zinio/mobile/android/util/a;

    .line 244
    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    goto :goto_0

    .line 246
    :cond_1
    if-nez v1, :cond_2

    .line 247
    iput-object v2, v0, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    .line 248
    iput-object v0, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    goto :goto_0

    .line 250
    :cond_2
    iput-object v1, v0, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    .line 251
    iput-object v0, v1, Lcom/zinio/mobile/android/util/a;->b:Lcom/zinio/mobile/android/util/a;

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    iget v1, p0, Lcom/zinio/mobile/android/util/c;->d:I

    if-lt v0, v1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 185
    :cond_0
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    .line 186
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    .line 187
    new-instance v1, Lcom/zinio/mobile/android/util/a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/zinio/mobile/android/util/a;-><init>(Ljava/lang/Object;Lcom/zinio/mobile/android/util/a;Lcom/zinio/mobile/android/util/a;)V

    .line 188
    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    .line 189
    iget-object v2, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    if-nez v2, :cond_1

    .line 190
    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    iput-object v1, v0, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    goto :goto_1
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 422
    :try_start_0
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;->b()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 305
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/util/c;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 441
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method private d(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 536
    if-nez p1, :cond_0

    move v0, v2

    .line 546
    :goto_0
    return v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    :goto_1
    if-eqz v0, :cond_2

    .line 541
    iget-object v1, v0, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/util/c;->b(Lcom/zinio/mobile/android/util/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    goto :goto_0

    .line 540
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private e()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 522
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 520
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    iget-object v0, v0, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 433
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 431
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/zinio/mobile/android/util/a;->b:Lcom/zinio/mobile/android/util/a;

    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    :goto_1
    iget v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object v0, v0, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 433
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final a(Lcom/zinio/mobile/android/util/a;)Z
    .locals 2
    .parameter

    .prologue
    .line 835
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    :goto_0
    if-eqz v0, :cond_1

    .line 838
    if-ne v0, p1, :cond_0

    .line 839
    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/util/c;->b(Lcom/zinio/mobile/android/util/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    .line 843
    :goto_1
    return v0

    .line 837
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 290
    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    iget v1, p0, Lcom/zinio/mobile/android/util/c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 290
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    new-instance v1, Lcom/zinio/mobile/android/util/a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/zinio/mobile/android/util/a;-><init>(Ljava/lang/Object;Lcom/zinio/mobile/android/util/a;Lcom/zinio/mobile/android/util/a;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    iget-object v2, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, v0, Lcom/zinio/mobile/android/util/a;->b:Lcom/zinio/mobile/android/util/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 292
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/util/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 951
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    iput-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    .line 952
    const/4 v0, 0x0

    iput v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    .line 953
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 956
    return-void

    .line 955
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 817
    if-nez p1, :cond_0

    move v0, v2

    .line 824
    :goto_0
    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    :goto_1
    if-eqz v0, :cond_2

    .line 822
    iget-object v1, v0, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 2
    .parameter

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 701
    :cond_0
    if-ne p1, p0, :cond_1

    .line 702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    :goto_0
    if-eqz v0, :cond_2

    .line 706
    iget-object v1, v0, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v0, v0, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    goto :goto_0

    .line 707
    :cond_2
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    .line 708
    const/4 v1, 0x0

    iput v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    .line 709
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    .line 710
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 728
    if-nez p1, :cond_0

    .line 729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 730
    :cond_0
    if-ne p1, p0, :cond_1

    .line 731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 734
    const/4 v0, 0x0

    .line 735
    :goto_0
    if-ge v0, p2, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    if-eqz v1, :cond_2

    .line 736
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    iget-object v1, v1, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/zinio/mobile/android/util/a;->b:Lcom/zinio/mobile/android/util/a;

    .line 738
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    iget-object v1, v1, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    .line 739
    iget v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_2
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    if-nez v1, :cond_3

    .line 743
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zinio/mobile/android/util/c;->b:Lcom/zinio/mobile/android/util/a;

    .line 744
    :cond_3
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 971
    new-instance v0, Lcom/zinio/mobile/android/util/d;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/util/d;-><init>(Lcom/zinio/mobile/android/util/c;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/util/c;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zinio/mobile/android/util/c;->a(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 644
    invoke-direct {p0, p1, p2, p3}, Lcom/zinio/mobile/android/util/c;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 605
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/util/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 682
    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->d:I

    iget v1, p0, Lcom/zinio/mobile/android/util/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    .line 684
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/util/c;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 801
    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public take()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/zinio/mobile/android/util/c;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 864
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 866
    :try_start_0
    iget v0, p0, Lcom/zinio/mobile/android/util/c;->c:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 867
    const/4 v1, 0x0

    .line 868
    iget-object v2, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_0
    if-eqz v1, :cond_0

    .line 869
    add-int/lit8 v3, v2, 0x1

    iget-object v4, v1, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;

    aput-object v4, v0, v2

    .line 868
    iget-object v1, v1, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    goto :goto_0

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    .line 918
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 920
    :try_start_0
    array-length v0, p1

    iget v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    if-ge v0, v1, :cond_2

    .line 921
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcom/zinio/mobile/android/util/c;->c:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 924
    :goto_0
    const/4 v1, 0x0

    .line 925
    iget-object v2, p0, Lcom/zinio/mobile/android/util/c;->a:Lcom/zinio/mobile/android/util/a;

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_0

    .line 926
    add-int/lit8 v3, v2, 0x1

    iget-object v4, v1, Lcom/zinio/mobile/android/util/a;->a:Ljava/lang/Object;

    aput-object v4, v0, v2

    .line 925
    iget-object v1, v1, Lcom/zinio/mobile/android/util/a;->c:Lcom/zinio/mobile/android/util/a;

    move v2, v3

    goto :goto_1

    .line 927
    :cond_0
    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 928
    const/4 v1, 0x0

    aput-object v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    :cond_1
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 938
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractQueue;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/c;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
