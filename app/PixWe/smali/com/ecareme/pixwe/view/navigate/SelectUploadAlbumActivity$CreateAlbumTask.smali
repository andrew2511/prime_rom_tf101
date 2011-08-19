.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;
.super Landroid/os/AsyncTask;
.source "SelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateAlbumTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "param"

    .prologue
    .line 401
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 402
    .local v3, msg:Landroid/os/Message;
    const/16 v4, 0xa

    iput v4, v3, Landroid/os/Message;->what:I

    .line 403
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    const-wide/16 v0, -0x1

    .line 405
    .local v0, albumFolder:J
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    :try_start_0
    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$1(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Lnet/yostore/aws/handler/PixWeDataHandler;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbum(Ljava/lang/String;)J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 413
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 408
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 410
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v2}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 418
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$2(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V

    .line 426
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$CreateAlbumTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
