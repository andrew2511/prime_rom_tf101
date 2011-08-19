.class Lnet/yostore/aws/view/common/SplashActivity$5;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/SplashActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/SplashActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/common/SplashActivity$5;)Lnet/yostore/aws/view/common/SplashActivity;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v7, 0x7f060006

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 269
    .end local p0
    :goto_0
    return-void

    .line 156
    .restart local p0
    :sswitch_0
    new-instance v2, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-direct {v2, v3, v4}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;-><init>(Lnet/yostore/aws/view/common/SplashActivity;Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;)V

    new-array v3, v6, [Ljava/lang/Void;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 166
    :sswitch_1
    new-instance v2, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-direct {v2, v3, v4}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;-><init>(Lnet/yostore/aws/view/common/SplashActivity;Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;)V

    new-array v3, v6, [Ljava/lang/Void;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 175
    :sswitch_2
    new-instance v2, Lnet/yostore/aws/view/common/SplashActivity$BindPLServiceTask;

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-direct {v2, v3, v4}, Lnet/yostore/aws/view/common/SplashActivity$BindPLServiceTask;-><init>(Lnet/yostore/aws/view/common/SplashActivity;Lnet/yostore/aws/view/common/SplashActivity$BindPLServiceTask;)V

    new-array v3, v6, [Ljava/lang/Void;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/SplashActivity$BindPLServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 187
    :sswitch_3
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 195
    new-instance v3, Lnet/yostore/aws/view/common/SplashActivity$5$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/common/SplashActivity$5$1;-><init>(Lnet/yostore/aws/view/common/SplashActivity$5;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 205
    :sswitch_4
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 211
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    const v3, 0x7f06000b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 213
    const v3, 0x7f06000f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 214
    new-instance v3, Lnet/yostore/aws/view/common/SplashActivity$5$2;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/common/SplashActivity$5$2;-><init>(Lnet/yostore/aws/view/common/SplashActivity$5;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 224
    :sswitch_5
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 229
    :cond_2
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$15(Lnet/yostore/aws/view/common/SplashActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/mear/Mear;->goOffLinePage(Landroid/content/Context;)V

    .line 233
    :goto_1
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 232
    .restart local p0
    :cond_3
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/mear/Mear;->goHome(Landroid/content/Context;)V

    goto :goto_1

    .line 236
    :sswitch_6
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 239
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 241
    :cond_4
    invoke-static {}, Lcom/ecareme/mear/Mear;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    .line 242
    .local v1, apicfg:Lnet/yostore/aws/api/ApiConfig;
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 243
    .local v0, accInfo:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$12(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_5

    if-eqz v0, :cond_5

    iget-object v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 244
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2, v6}, Lnet/yostore/aws/view/common/SplashActivity;->access$13(Lnet/yostore/aws/view/common/SplashActivity;Z)V

    .line 245
    new-instance v2, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-direct {v2, v3, v4}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;-><init>(Lnet/yostore/aws/view/common/SplashActivity;Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;)V

    new-array v3, v6, [Ljava/lang/Void;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/SplashActivity$BindMPServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 248
    :cond_5
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2, v5}, Lnet/yostore/aws/view/common/SplashActivity;->access$13(Lnet/yostore/aws/view/common/SplashActivity;Z)V

    .line 249
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$5;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lcom/ecareme/mear/Mear;->goLogin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
        0x28 -> :sswitch_2
        0x3c -> :sswitch_3
        0x46 -> :sswitch_4
        0x50 -> :sswitch_5
        0x5a -> :sswitch_6
    .end sparse-switch
.end method
