.class Lcom/layar/GalleryActivity$RefreshTask;
.super Landroid/os/AsyncTask;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/layar/data/category/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/GalleryActivity;


# direct methods
.method private constructor <init>(Lcom/layar/GalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$RefreshTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/layar/GalleryActivity$RefreshTask;-><init>(Lcom/layar/GalleryActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/GalleryActivity$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 10
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 185
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v6

    .line 186
    .local v6, categoryManager:Lcom/layar/data/category/CategoryManager;
    invoke-virtual {v6, v5}, Lcom/layar/data/category/CategoryManager;->downloadAndSaveCategories(Z)Lcom/layar/data/category/CategoriesResponse;

    move-result-object v8

    .line 187
    .local v8, resp:Lcom/layar/data/category/CategoriesResponse;
    iget-object v1, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    iget-object v1, v1, Lcom/layar/GalleryActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v8}, Lcom/layar/data/category/CategoriesResponse;->getResponseCode()I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v5, v4, v5}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    .line 203
    :goto_0
    return-object v1

    .line 189
    :cond_0
    invoke-virtual {v8}, Lcom/layar/data/category/CategoriesResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_1

    .line 190
    iget-object v1, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    invoke-static {v1}, Lcom/layar/GalleryActivity;->access$0(Lcom/layar/GalleryActivity;)Lcom/layar/adapters/GalleryExpandableAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/adapters/GalleryExpandableAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    .line 191
    goto :goto_0

    .line 192
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/category/Category;>;"
    iget-object v1, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    invoke-virtual {v1}, Lcom/layar/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->CATEGORIES_CONTENT_URI:Landroid/net/Uri;

    .line 195
    invoke-static {}, Lcom/layar/provider/CategoriesAlias;->projection()[Ljava/lang/String;

    move-result-object v2

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/layar/provider/CategoriesAlias;->NAME:Lcom/layar/provider/CategoriesAlias;

    iget-object v5, v5, Lcom/layar/provider/CategoriesAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ASC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    .line 194
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 197
    .local v7, cursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 202
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v1, v9

    .line 203
    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/layar/GalleryActivity$RefreshTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    invoke-static {v7}, Lcom/layar/provider/CategoriesAlias;->createObject(Landroid/database/Cursor;)Lcom/layar/data/category/Category;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/layar/GalleryActivity$RefreshTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/category/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/category/Category;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lcom/layar/GalleryActivity$RefreshTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    invoke-static {v0}, Lcom/layar/GalleryActivity;->access$0(Lcom/layar/GalleryActivity;)Lcom/layar/adapters/GalleryExpandableAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/layar/adapters/GalleryExpandableAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 215
    iget-object v0, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    invoke-static {v0}, Lcom/layar/GalleryActivity;->access$1(Lcom/layar/GalleryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 216
    iget-object v0, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    invoke-static {v0}, Lcom/layar/GalleryActivity;->access$0(Lcom/layar/GalleryActivity;)Lcom/layar/adapters/GalleryExpandableAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/adapters/GalleryExpandableAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/layar/GalleryActivity$RefreshTask;->this$0:Lcom/layar/GalleryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/GalleryActivity;->access$2(Lcom/layar/GalleryActivity;Lcom/layar/GalleryActivity$RefreshTask;)V

    .line 219
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
