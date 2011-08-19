.class Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$10;->onPostExecute(Ljava/util/List;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$10;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$10;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$10;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->val$result:Ljava/util/List;

    .line 559
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$10;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$10;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->val$result:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$27(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$10;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$10;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 567
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$10;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$10;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
