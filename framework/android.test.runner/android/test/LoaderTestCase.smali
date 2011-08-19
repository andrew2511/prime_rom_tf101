.class public Landroid/test/LoaderTestCase;
.super Landroid/test/AndroidTestCase;
.source "LoaderTestCase.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Landroid/test/LoaderTestCase$1;

    invoke-direct {v0}, Landroid/test/LoaderTestCase$1;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<TT;>;"
    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 61
    .local v3, queue:Ljava/util/concurrent/ArrayBlockingQueue;,"Ljava/util/concurrent/ArrayBlockingQueue<TT;>;"
    new-instance v1, Landroid/test/LoaderTestCase$2;

    invoke-direct {v1, p0, v3}, Landroid/test/LoaderTestCase$2;-><init>(Landroid/test/LoaderTestCase;Ljava/util/concurrent/ArrayBlockingQueue;)V

    .line 77
    .local v1, listener:Landroid/content/Loader$OnLoadCompleteListener;,"Landroid/content/Loader$OnLoadCompleteListener<TT;>;"
    new-instance v2, Landroid/test/LoaderTestCase$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5, p1, v1}, Landroid/test/LoaderTestCase$3;-><init>(Landroid/test/LoaderTestCase;Landroid/os/Looper;Landroid/content/Loader;Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 86
    .local v2, mainThreadHandler:Landroid/os/Handler;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    :try_start_18
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v4

    .line 99
    .local v4, result:Ljava/lang/Object;,"TT;"
    return-object v4

    .line 94
    .end local v4           #result:Ljava/lang/Object;,"TT;"
    :catch_1d
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "waiting thread interrupted"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
