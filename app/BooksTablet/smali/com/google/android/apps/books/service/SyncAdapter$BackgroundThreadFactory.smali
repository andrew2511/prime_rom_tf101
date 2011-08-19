.class Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundThreadFactory"
.end annotation


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .parameter "r"

    .prologue
    .line 322
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory$1;-><init>(Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncthread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 328
    .local v0, t:Ljava/lang/Thread;
    return-object v0
.end method
