.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->startZoomsDownloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->val$file:Ljava/io/File;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Z)V
    .locals 3
    .parameter "successfully"

    .prologue
    .line 579
    if-eqz p1, :cond_4

    .line 580
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->val$file:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$6(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$3(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 582
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$4(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 583
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$14(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 593
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$2(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V

    .line 599
    :cond_1
    :goto_1
    return-void

    .line 586
    :cond_2
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$8()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 587
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$8()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;->onDownloadRetry(Ljava/lang/String;)V

    .line 588
    :cond_3
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 589
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$13(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;I)V

    .line 590
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$14(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 591
    .local v0, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->retry()V

    goto :goto_0

    .line 596
    .end local v0           #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    :cond_4
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$14(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 597
    .restart local v0       #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->retry()V

    goto :goto_1
.end method
