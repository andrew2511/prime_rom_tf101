.class Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;
.super Ljava/lang/Object;
.source "ReaderDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/ReaderDatabase$TaskStack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/ReaderDatabase$TaskStack;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/ReaderDatabase$TaskStack;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;->this$0:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 377
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 378
    .local v1, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;->this$0:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->access$000(Lcom/asus/reader/book/ReaderDatabase$TaskStack;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;->this$0:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->access$000(Lcom/asus/reader/book/ReaderDatabase$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 381
    :try_start_1
    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;->this$0:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->access$000(Lcom/asus/reader/book/ReaderDatabase$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;->this$0:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->access$000(Lcom/asus/reader/book/ReaderDatabase$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 387
    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase$TaskStack$1;->this$0:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->access$000(Lcom/asus/reader/book/ReaderDatabase$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 389
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 382
    :catch_0
    move-exception v2

    goto :goto_1
.end method
