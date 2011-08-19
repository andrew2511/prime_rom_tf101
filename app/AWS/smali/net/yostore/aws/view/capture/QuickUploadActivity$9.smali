.class Lnet/yostore/aws/view/capture/QuickUploadActivity$9;
.super Ljava/lang/Thread;
.source "QuickUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;->okClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    .line 470
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity$9;)Lnet/yostore/aws/view/capture/QuickUploadActivity;
    .locals 1
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 502
    :try_start_0
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$9(Lnet/yostore/aws/view/capture/QuickUploadActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$10(Lnet/yostore/aws/view/capture/QuickUploadActivity;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v7

    .line 514
    .local v7, rootid:J
    :try_start_1
    new-instance v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$11(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$12(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$12(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$12(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v6, 0x5

    const-string v9, ""

    invoke-direct/range {v0 .. v9}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)V

    .line 515
    .local v0, ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v1, v0}, Lnet/yostore/aws/service/AWSServiceInterface;->addUploadItem(Lnet/yostore/aws/sqlite/entity/UploadItem;)Z

    .line 516
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/AWSServiceInterface;->startUpload()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    .end local v0           #ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    .end local v7           #rootid:J
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$6(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 528
    :goto_1
    :try_start_3
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-virtual {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->finish()V

    .line 549
    :goto_2
    return-void

    .line 527
    :catch_0
    move-exception v1

    move-object v10, v1

    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 530
    .end local v10           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v10, v1

    .line 533
    .restart local v10       #e:Ljava/lang/Exception;
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$13(Lnet/yostore/aws/view/capture/QuickUploadActivity;Ljava/lang/String;)V

    .line 536
    :try_start_4
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$6(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 539
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0600b1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0600d1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 540
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060026

    new-instance v3, Lnet/yostore/aws/view/capture/QuickUploadActivity$9$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$9$1;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity$9;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 547
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 538
    :catch_2
    move-exception v1

    move-object v11, v1

    .local v11, ex:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 519
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v7       #rootid:J
    :catch_3
    move-exception v1

    goto :goto_0
.end method
