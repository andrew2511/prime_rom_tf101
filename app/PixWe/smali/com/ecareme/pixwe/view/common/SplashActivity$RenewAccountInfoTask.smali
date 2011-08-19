.class Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenewAccountInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field accinfo:[B

.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/view/common/SplashActivity;[B)V
    .locals 1
    .parameter
    .parameter "accinfo"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    .line 369
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->accinfo:[B

    .line 370
    iput-object p2, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->accinfo:[B

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 376
    new-array v4, v9, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->publishProgress([Ljava/lang/Object;)V

    .line 377
    iget-object v4, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->accinfo:[B

    invoke-static {v4}, Lnet/yostore/utility/SimpleAES;->decodeFromBytes([B)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, userAcc:Ljava/lang/String;
    invoke-static {v3}, Lcom/ecareme/pixwe/PixWe;->parserApiConfig(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    .line 380
    .local v1, apicfg:Lnet/yostore/aws/api/ApiConfig;
    const-string v4, "userAcc"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v4, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v2

    .line 383
    .local v2, dbAccinf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    iget-object v4, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 384
    :cond_1
    sget-object v4, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 386
    :cond_2
    sget-object v4, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v2

    .line 388
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v4, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v5, v1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v6, v1, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {v0, v4, v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .local v0, accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v4, v2, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 390
    sget-object v4, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v4, v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->insertAccInfo(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 392
    :cond_3
    iget-object v4, v1, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 393
    iget-object v4, v1, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 394
    iget-object v4, v1, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 395
    sget-object v4, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v4, v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 396
    invoke-static {v1}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 398
    sget-object v4, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v4, v1}, Lnet/yostore/aws/handler/LoginHandler;->pixweInitData(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 399
    invoke-static {v1}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 400
    new-array v4, v9, [Ljava/lang/Integer;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->publishProgress([Ljava/lang/Object;)V

    .line 401
    new-instance v4, Ljava/lang/Long;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 420
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 421
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 422
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$3(Lcom/ecareme/pixwe/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 424
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 406
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    sget-object v0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask$1;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$1(Lcom/ecareme/pixwe/view/common/SplashActivity;Landroid/app/ProgressDialog;)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$2(Lcom/ecareme/pixwe/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$RenewAccountInfoTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
