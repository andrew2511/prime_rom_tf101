.class Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;
.super Landroid/os/AsyncTask;
.source "MyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->delete(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
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

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->val$dialog:Landroid/app/ProgressDialog;

    .line 546
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

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->delete()V

    .line 550
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateItemsList()V

    .line 558
    return-void
.end method
