.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$21;
.super Landroid/os/AsyncTask;
.source "MyLibraryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->refreshItemsList(Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;)V
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 883
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 886
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .local v1, updates:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->syncItemsList(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$21;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 892
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$19()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$19()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;->onItemsListUpdated(Z)V

    .line 894
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$20(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;)V

    .line 895
    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$21(Z)V

    .line 896
    return-void

    .line 893
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$21;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
