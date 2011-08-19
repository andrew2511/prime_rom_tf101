.class Lcom/newspaperdirect/pressreader/android/LocalStore$10;
.super Landroid/os/AsyncTask;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->bindAdapters()V
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
        "Ljava/util/List",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 533
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$10;)Lcom/newspaperdirect/pressreader/android/LocalStore;
    .locals 1
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$33(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/os/AsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$33(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/os/AsyncTask;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 543
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v0, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$15(Lcom/newspaperdirect/pressreader/android/LocalStore;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$15(Lcom/newspaperdirect/pressreader/android/LocalStore;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 550
    :cond_2
    return-object v0

    .line 545
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 546
    .local v1, nppr:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->isFavorite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    const/4 v4, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-direct {v1, v2, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 556
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 558
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;

    invoke-direct {v1, p0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$10;Ljava/util/List;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    .line 571
    const/4 v3, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$10$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 559
    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$34(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$10;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 538
    return-void
.end method
