.class Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;
.super Landroid/os/AsyncTask;
.source "AWSSelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;
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
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .parameter "param"

    .prologue
    .line 231
    if-eqz p1, :cond_1

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 232
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, awsFolderId:Ljava/lang/String;
    const-wide/16 v0, -0x3e7

    .line 235
    .local v0, albumFolder:J
    iget-object v3, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    .line 236
    .local v3, ctx:Landroid/content/Context;
    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v6, v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    invoke-virtual {v6, v5}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbum(Ljava/lang/String;)J

    move-result-wide v0

    .line 237
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 238
    new-instance v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;

    iget-object v7, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    new-instance v6, Ljava/lang/Long;

    const-string v7, "1"

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 252
    .end local v0           #albumFolder:J
    .end local v2           #awsFolderId:Ljava/lang/String;
    .end local v3           #ctx:Landroid/content/Context;
    .end local v5           #name:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 241
    .restart local v0       #albumFolder:J
    .restart local v2       #awsFolderId:Ljava/lang/String;
    .restart local v3       #ctx:Landroid/content/Context;
    .restart local v5       #name:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/Long;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0           #albumFolder:J
    .end local v2           #awsFolderId:Ljava/lang/String;
    .end local v3           #ctx:Landroid/content/Context;
    .end local v5           #name:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 250
    .local v4, e:Lnet/yostore/aws/api/exception/APIException;
    new-instance v6, Ljava/lang/Long;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v4           #e:Lnet/yostore/aws/api/exception/APIException;
    :cond_1
    new-instance v6, Ljava/lang/Long;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 265
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 266
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 267
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v1, v1, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 258
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
