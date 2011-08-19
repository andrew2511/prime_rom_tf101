.class public Lcom/layar/data/category/CategoryManager$RefreshTask;
.super Landroid/os/AsyncTask;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/category/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/category/CategoryManager;


# direct methods
.method public constructor <init>(Lcom/layar/data/category/CategoryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/layar/data/category/CategoryManager$RefreshTask;->this$0:Lcom/layar/data/category/CategoryManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/layar/data/Response;
    .locals 2
    .parameter "params"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/layar/data/category/CategoryManager$RefreshTask;->this$0:Lcom/layar/data/category/CategoryManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/data/category/CategoryManager;->downloadAndSaveCategories(Z)Lcom/layar/data/category/CategoriesResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/category/CategoryManager$RefreshTask;->doInBackground([Ljava/lang/Void;)Lcom/layar/data/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/layar/data/Response;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/layar/data/category/CategoryManager$RefreshTask;->this$0:Lcom/layar/data/category/CategoryManager;

    invoke-static {v0}, Lcom/layar/data/category/CategoryManager;->access$0(Lcom/layar/data/category/CategoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/category/CategoryManager$RefreshTask;->this$0:Lcom/layar/data/category/CategoryManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/data/category/CategoryManager;->access$1(Lcom/layar/data/category/CategoryManager;Lcom/layar/data/category/CategoryManager$RefreshTask;)V

    .line 255
    monitor-exit v0

    .line 258
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/Response;

    invoke-virtual {p0, p1}, Lcom/layar/data/category/CategoryManager$RefreshTask;->onPostExecute(Lcom/layar/data/Response;)V

    return-void
.end method
