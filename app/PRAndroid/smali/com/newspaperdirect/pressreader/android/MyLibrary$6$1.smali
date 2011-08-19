.class Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;
.super Landroid/os/AsyncTask;
.source "MyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$6;

.field private final synthetic val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$6;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$6;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 333
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$6;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$6;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$2(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->stopDownloading(J)V

    .line 337
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->correctState()V

    .line 338
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->resetToast()V

    .line 339
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$6;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$6;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$2(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->startDownloading(J)V

    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$6;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary$6;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateItemsList()V

    .line 345
    return-void
.end method
