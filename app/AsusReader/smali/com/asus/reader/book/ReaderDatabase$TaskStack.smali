.class Lcom/asus/reader/book/ReaderDatabase$TaskStack;
.super Ljava/lang/Object;
.source "ReaderDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/ReaderDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskStack"
.end annotation


# instance fields
.field private final mThingsToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    .line 374
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;

    invoke-direct {v1, p0}, Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;-><init>(Lcom/asus/reader/book/ReaderDatabase$TaskStack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    .line 396
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 397
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/book/ReaderDatabase$TaskStack;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public push(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 403
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
