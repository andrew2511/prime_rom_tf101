.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;
.super Landroid/os/AsyncTask;
.source "MyLibraryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->loadLayout(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;)V
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
        "Lcom/newspaperdirect/pressreader/android/core/layout/Issue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

.field private final synthetic val$listener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->val$listener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;

    .line 403
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    .locals 1
    .parameter "params"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->load(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$0(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V

    .line 412
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->val$listener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->val$listener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;->onLayoutLoaded()V

    .line 413
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V

    return-void
.end method
