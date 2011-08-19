.class public Lcom/google/android/apps/books/model/ReadingPositionSaver;
.super Ljava/lang/Object;
.source "ReadingPositionSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/ReadingPositionSaver$1;,
        Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadingPositionSaver"


# instance fields
.field private final mModeExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mPinnedExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mPositionExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-static {}, Lcom/google/android/apps/books/model/ReadingPositionSaver;->createObsoletingExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mPositionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 54
    invoke-static {}, Lcom/google/android/apps/books/model/ReadingPositionSaver;->createObsoletingExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mPinnedExecutor:Ljava/util/concurrent/ExecutorService;

    .line 55
    invoke-static {}, Lcom/google/android/apps/books/model/ReadingPositionSaver;->createObsoletingExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mModeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 56
    return-void
.end method

.method private static createObsoletingExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 63
    new-instance v6, Lcom/google/android/apps/books/util/ObsoletingQueue;

    invoke-direct {v6}, Lcom/google/android/apps/books/util/ObsoletingQueue;-><init>()V

    .line 64
    .local v6, queue:Lcom/google/android/apps/books/util/ObsoletingQueue;,"Lcom/google/android/apps/books/util/ObsoletingQueue<Ljava/lang/Runnable;>;"
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method


# virtual methods
.method public startModeSave(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 6
    .parameter "account"
    .parameter "volumeId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, "ReadingPositionSaver"

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing/empty volumeId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    if-eq p3, v4, :cond_0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mode value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 150
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "volume_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "last_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v2, "ReadingPositionSaver"

    const/4 v2, 0x3

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const-string v2, "ReadingPositionSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persisting mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    new-instance v0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;

    iget-object v2, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;Lcom/google/android/apps/books/model/ReadingPositionSaver$1;)V

    .line 159
    .local v0, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mModeExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    return-object v2

    .line 146
    .end local v0           #callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startPinnedSave(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 6
    .parameter "account"
    .parameter "volumeId"
    .parameter "pinned"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, "ReadingPositionSaver"

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing/empty volumeId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    if-eqz p3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 122
    .local v1, pinnedValue:I
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "volume_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "pinned"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v3, "ReadingPositionSaver"

    const/4 v3, 0x3

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string v3, "ReadingPositionSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting pinned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    new-instance v0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;

    iget-object v3, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-direct {v0, v3, p1, v2, v4}, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;Lcom/google/android/apps/books/model/ReadingPositionSaver$1;)V

    .line 131
    .local v0, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mPinnedExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    return-object v3

    .line 120
    .end local v0           #callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    .end local v1           #pinnedValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0
.end method

.method startPositionSave(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 6
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"
    .parameter "lastAccess"
    .parameter "lastAction"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing/empty volumeId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal lastAccess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing/empty lastAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p6, v3}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 96
    .local v1, lastAccessValue:Ljava/lang/Long;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v3, "volume_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "position"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "last_access"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v3, "last_local_access"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v3, "last_action"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;

    iget-object v3, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-direct {v0, v3, p1, v2, v4}, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;Lcom/google/android/apps/books/model/ReadingPositionSaver$1;)V

    .line 105
    .local v0, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver;->mPositionExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    return-object v3

    .line 91
    .end local v0           #callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    .end local v1           #lastAccessValue:Ljava/lang/Long;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startPositionSave(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 7
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"
    .parameter "lastAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, lastAccess:J
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/model/ReadingPositionSaver;->startPositionSave(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
