.class Landroid/os/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 256
    .local p0, this:Landroid/os/AsyncTask$3;,"Landroid/os/AsyncTask.3;"
    .local p2, x0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 7

    .prologue
    .line 260
    .local p0, this:Landroid/os/AsyncTask$3;,"Landroid/os/AsyncTask.3;"
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, result:Ljava/lang/Object;,"TResult;"
    iget-object v3, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    #calls: Landroid/os/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v3, v1}, Landroid/os/AsyncTask;->access$500(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_29

    .line 274
    .end local v1           #result:Ljava/lang/Object;,"TResult;"
    :goto_9
    return-void

    .line 263
    :catch_a
    move-exception v3

    move-object v0, v3

    .line 264
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "AsyncTask"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 265
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_12
    move-exception v3

    move-object v0, v3

    .line 266
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 268
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 269
    .local v0, e:Ljava/util/concurrent/CancellationException;
    iget-object v3, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    const/4 v4, 0x0

    #calls: Landroid/os/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Landroid/os/AsyncTask;->access$500(Landroid/os/AsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    .line 270
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :catch_29
    move-exception v3

    move-object v2, v3

    .line 271
    .local v2, t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "An error occured while executing doInBackground()"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
