.class Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsListUpdated(Z)V
    .locals 4
    .parameter "withErrors"

    .prologue
    const/4 v3, 0x1

    .line 463
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->resetToast()V

    .line 464
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$2(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$2(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->startDownloading()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateItemsList()V

    .line 466
    if-eqz p1, :cond_1

    .line 467
    const-string v0, "MyLibrary"

    const-string v1, "Items list update not successfil. Rescheduling items download"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->removeMessages(I)V

    .line 469
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 471
    :cond_1
    return-void
.end method
