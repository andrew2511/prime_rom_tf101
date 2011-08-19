.class Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenewAccountTask"
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
.field accinfo:[B

.field final synthetic this$0:Lnet/yostore/aws/view/common/SplashActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;[B)V
    .locals 1
    .parameter
    .parameter "accinfo"

    .prologue
    .line 599
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    .line 597
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->accinfo:[B

    .line 598
    iput-object p2, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->accinfo:[B

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 603
    new-array v5, v10, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 604
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->accinfo:[B

    invoke-static {v5}, Lnet/yostore/utility/SimpleAES;->decodeFromBytes([B)Ljava/lang/String;

    move-result-object v4

    .line 605
    .local v4, userAcc:Ljava/lang/String;
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-virtual {v5, v4}, Lnet/yostore/aws/view/common/SplashActivity;->parserApiConfig(Ljava/lang/String;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    .line 606
    .local v2, apicfg:Lnet/yostore/aws/api/ApiConfig;
    const-string v5, "userAcc"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v1

    .line 608
    .local v1, accinf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v5, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 609
    :cond_1
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->removeAccInfo(Landroid/content/Context;)V

    .line 611
    :cond_2
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v1

    .line 612
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AccInfo;

    iget-object v5, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v6, v2, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v7, v2, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {v0, v5, v6, v7, v8}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .local v0, accInf:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v5, v1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 614
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->insertAccInfo(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 616
    :cond_3
    iget-object v5, v2, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 617
    iget-object v5, v2, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 618
    iget-object v5, v2, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 619
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V

    .line 620
    sput-object v2, Lcom/ecareme/mear/Mear;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 621
    iget-object v5, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    sput-object v5, Lcom/ecareme/mear/Mear;->userId:Ljava/lang/String;

    .line 622
    invoke-static {v2}, Lcom/ecareme/mear/Mear;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 624
    iget v5, v2, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccFirstGate:I

    if-lez v5, :cond_4

    .line 625
    iget v5, v2, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccFirstGate:I

    sput v5, Lcom/ecareme/mear/Mear;->mearBlockFreeAccFirstGate:I

    .line 626
    :cond_4
    iget v5, v2, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccAfterFGate:I

    if-lez v5, :cond_5

    .line 627
    iget v5, v2, Lnet/yostore/aws/api/ApiConfig;->mearBlockFreeAccAfterFGate:I

    sput v5, Lcom/ecareme/mear/Mear;->mearBlockFreeAccAfterFGate:I

    .line 629
    :cond_5
    new-instance v3, Lnet/yostore/aws/handler/MearDataHandler;

    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 630
    .local v3, md:Lnet/yostore/aws/handler/MearDataHandler;
    invoke-virtual {v3}, Lnet/yostore/aws/handler/MearDataHandler;->createMetaToPropFind()J

    .line 631
    invoke-virtual {v3}, Lnet/yostore/aws/handler/MearDataHandler;->createLibToPropFind()J

    .line 632
    invoke-virtual {v3}, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFind()J

    .line 633
    invoke-virtual {v3}, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFind()J

    .line 634
    invoke-static {v2}, Lcom/ecareme/mear/Mear;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 635
    invoke-static {}, Lcom/ecareme/mear/Mear;->haveInternet()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 636
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v5, v9}, Lnet/yostore/aws/view/common/SplashActivity;->access$13(Lnet/yostore/aws/view/common/SplashActivity;Z)V

    .line 639
    :goto_0
    new-array v5, v10, [Ljava/lang/Integer;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 640
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 638
    :cond_6
    iget-object v5, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v5, v10}, Lnet/yostore/aws/view/common/SplashActivity;->access$13(Lnet/yostore/aws/view/common/SplashActivity;Z)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 655
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 656
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 657
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 646
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 647
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$6(Lnet/yostore/aws/view/common/SplashActivity;Landroid/app/ProgressDialog;)V

    .line 651
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$RenewAccountTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
