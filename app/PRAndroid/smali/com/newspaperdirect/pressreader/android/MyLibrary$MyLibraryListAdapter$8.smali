.class Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;
.super Landroid/os/AsyncTask;
.source "MyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateItemsList()V
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
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    .line 587
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

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Ljava/util/List;)V

    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->sortList()V

    .line 597
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$3(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$3(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
