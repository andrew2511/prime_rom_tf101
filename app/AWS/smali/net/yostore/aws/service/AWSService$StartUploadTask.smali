.class Lnet/yostore/aws/service/AWSService$StartUploadTask;
.super Landroid/os/AsyncTask;
.source "AWSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/AWSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private rtn:Z

.field final synthetic this$0:Lnet/yostore/aws/service/AWSService;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/service/AWSService;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter
    .parameter "apicfg"

    .prologue
    .line 250
    iput-object p1, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->this$0:Lnet/yostore/aws/service/AWSService;

    .line 248
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->rtn:Z

    .line 249
    iput-object p2, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    sput-boolean v4, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    .line 257
    :cond_0
    :goto_0
    sget-boolean v1, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    if-nez v1, :cond_1

    .line 268
    :goto_1
    iget-boolean v1, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->rtn:Z

    if-eqz v1, :cond_3

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 271
    :goto_2
    return-object v1

    .line 258
    :cond_1
    sget-boolean v1, Lnet/yostore/aws/service/AWSService;->isSpaceEnough:Z

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->this$0:Lnet/yostore/aws/service/AWSService;

    iget-object v2, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v1, v2}, Lnet/yostore/aws/service/AWSService;->access$11(Lnet/yostore/aws/service/AWSService;Lnet/yostore/aws/api/ApiConfig;)Z

    move-result v0

    .line 260
    .local v0, isQueueEmpty:Z
    if-eqz v0, :cond_0

    .line 261
    iput-boolean v0, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->rtn:Z

    goto :goto_1

    .line 265
    .end local v0           #isQueueEmpty:Z
    :cond_2
    sput-boolean v3, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    goto :goto_0

    .line 271
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/service/AWSService$StartUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 277
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 278
    sget-object v0, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->this$0:Lnet/yostore/aws/service/AWSService;

    sget-object v1, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v1, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    sget-object v3, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v3, v3, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/service/AWSService;->access$12(Lnet/yostore/aws/service/AWSService;JJJ)V

    .line 280
    :cond_0
    sput-object v7, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 281
    const/4 v0, 0x0

    sput-boolean v0, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    .line 282
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$13(Lnet/yostore/aws/service/AWSService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$7(Lnet/yostore/aws/service/AWSService;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0, v7}, Lnet/yostore/aws/service/AWSService;->access$14(Lnet/yostore/aws/service/AWSService;Lnet/yostore/aws/service/AWSService$StartUploadTask;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 302
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lnet/yostore/aws/service/AWSService$StartUploadTask;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-static {v0}, Lnet/yostore/aws/service/AWSService;->access$15(Lnet/yostore/aws/service/AWSService;)V

    .line 309
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/service/AWSService$StartUploadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 294
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 299
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/service/AWSService$StartUploadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
