.class Lcom/layar/core/StreamTextureManager$DownloadTask;
.super Landroid/os/AsyncTask;
.source "StreamTextureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/core/StreamTextureManager;
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

.field final synthetic this$0:Lcom/layar/core/StreamTextureManager;


# direct methods
.method public constructor <init>(Lcom/layar/core/StreamTextureManager;I)V
    .locals 0
    .parameter
    .parameter "category"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/layar/core/StreamTextureManager$DownloadTask;->this$0:Lcom/layar/core/StreamTextureManager;

    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 77
    iput p2, p0, Lcom/layar/core/StreamTextureManager$DownloadTask;->category:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 82
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/category/CategoryManager;->getCategoryBaseURL()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, baseUrl:Ljava/lang/String;
    iget v1, p0, Lcom/layar/core/StreamTextureManager$DownloadTask;->category:I

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/layar/data/ImageCache;->downloadCategoryIcon(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/core/StreamTextureManager$DownloadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager$DownloadTask;->this$0:Lcom/layar/core/StreamTextureManager;

    iget-object v0, v0, Lcom/layar/core/StreamTextureManager;->bitmaps:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/layar/core/StreamTextureManager$DownloadTask;->category:I

    aput-object p1, v0, v1

    .line 90
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager$DownloadTask;->this$0:Lcom/layar/core/StreamTextureManager;

    iget-object v0, v0, Lcom/layar/core/StreamTextureManager;->noIcon:[Z

    iget v1, p0, Lcom/layar/core/StreamTextureManager$DownloadTask;->category:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/layar/core/StreamTextureManager$DownloadTask;->this$0:Lcom/layar/core/StreamTextureManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/layar/core/StreamTextureManager;->task:Lcom/layar/core/StreamTextureManager$DownloadTask;

    .line 95
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/core/StreamTextureManager$DownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
