.class Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;
.super Landroid/os/AsyncTask;
.source "CategoriesImageHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/category/CategoriesImageHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private category:I

.field final synthetic this$0:Lcom/layar/data/category/CategoriesImageHolder;


# direct methods
.method public constructor <init>(Lcom/layar/data/category/CategoriesImageHolder;I)V
    .locals 0
    .parameter
    .parameter "category"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    .line 110
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    iput p2, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->category:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    iget-object v0, v0, Lcom/layar/data/category/CategoriesImageHolder;->baseUrl:Ljava/lang/String;

    iget v1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->category:I

    iget-object v2, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    iget v2, v2, Lcom/layar/data/category/CategoriesImageHolder;->iconSize:I

    iget-object v3, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    iget-boolean v3, v3, Lcom/layar/data/category/CategoriesImageHolder;->needResize:Z

    .line 116
    invoke-static {v0, v1, v2, v3}, Lcom/layar/data/ImageCache;->downloadCategoryIcon(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    monitor-enter v0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    monitor-exit v0

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    iget-object v1, v1, Lcom/layar/data/category/CategoriesImageHolder;->bitmaps:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->category:I

    aput-object p1, v1, v2

    .line 127
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    iget-object v1, v1, Lcom/layar/data/category/CategoriesImageHolder;->noIcon:[Z

    iget v2, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->category:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/layar/data/category/CategoriesImageHolder;->task:Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;

    .line 133
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    iget-object v1, v1, Lcom/layar/data/category/CategoriesImageHolder;->iconsToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    invoke-virtual {v1}, Lcom/layar/data/category/CategoriesImageHolder;->load()V

    .line 122
    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 135
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    iget-object v1, v1, Lcom/layar/data/category/CategoriesImageHolder;->listener:Lcom/layar/data/category/CategoriesImageHolder$IconInvalidator;

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->this$0:Lcom/layar/data/category/CategoriesImageHolder;

    iget-object v1, v1, Lcom/layar/data/category/CategoriesImageHolder;->listener:Lcom/layar/data/category/CategoriesImageHolder$IconInvalidator;

    invoke-interface {v1}, Lcom/layar/data/category/CategoriesImageHolder$IconInvalidator;->iconInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/data/category/CategoriesImageHolder$DownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
