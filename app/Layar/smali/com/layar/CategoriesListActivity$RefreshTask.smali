.class Lcom/layar/CategoriesListActivity$RefreshTask;
.super Landroid/os/AsyncTask;
.source "CategoriesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/CategoriesListActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/CategoriesListActivity;


# direct methods
.method private constructor <init>(Lcom/layar/CategoriesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/layar/CategoriesListActivity$RefreshTask;->this$0:Lcom/layar/CategoriesListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/CategoriesListActivity;Lcom/layar/CategoriesListActivity$RefreshTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/layar/CategoriesListActivity$RefreshTask;-><init>(Lcom/layar/CategoriesListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/CategoriesListActivity$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/layar/data/category/CategoryManager;->downloadAndSaveCategories(Z)Lcom/layar/data/category/CategoriesResponse;

    move-result-object v0

    .line 134
    .local v0, resp:Lcom/layar/data/Response;
    iget-object v1, p0, Lcom/layar/CategoriesListActivity$RefreshTask;->this$0:Lcom/layar/CategoriesListActivity;

    iget-object v1, v1, Lcom/layar/CategoriesListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0}, Lcom/layar/data/Response;->getResponseCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    .line 135
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/CategoriesListActivity$RefreshTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/layar/CategoriesListActivity$RefreshTask;->this$0:Lcom/layar/CategoriesListActivity;

    invoke-static {v0}, Lcom/layar/CategoriesListActivity;->access$0(Lcom/layar/CategoriesListActivity;)Lcom/layar/adapters/CategoriesCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/adapters/CategoriesCursorAdapter;->refresh()V

    .line 141
    iget-object v0, p0, Lcom/layar/CategoriesListActivity$RefreshTask;->this$0:Lcom/layar/CategoriesListActivity;

    invoke-static {v0}, Lcom/layar/CategoriesListActivity;->access$1(Lcom/layar/CategoriesListActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/layar/CategoriesListActivity$RefreshTask;->this$0:Lcom/layar/CategoriesListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/CategoriesListActivity;->access$2(Lcom/layar/CategoriesListActivity;Lcom/layar/CategoriesListActivity$RefreshTask;)V

    .line 141
    monitor-exit v0

    .line 144
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
