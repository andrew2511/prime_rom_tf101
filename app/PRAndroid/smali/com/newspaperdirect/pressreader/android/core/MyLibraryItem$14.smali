.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->startPdfDownloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Z)V
    .locals 3
    .parameter "successfully"

    .prologue
    .line 636
    if-eqz p1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$3(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 638
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$4(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 639
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$2(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V

    .line 640
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$16(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$16(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 644
    .local v0, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->retry()V

    goto :goto_0
.end method
