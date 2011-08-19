.class Lcom/ecareme/pixwe/view/common/SplashActivity$3;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/SplashActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    .line 155
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 162
    :sswitch_0
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    sget-object v0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/SplashActivity$3$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/SplashActivity$3$1;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity$3;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$1(Lcom/ecareme/pixwe/view/common/SplashActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 176
    :sswitch_1
    new-instance v0, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SplashActivity$GetAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 193
    :sswitch_2
    new-instance v0, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 196
    :sswitch_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$2(Lcom/ecareme/pixwe/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$2(Lcom/ecareme/pixwe/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 198
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v0, v2}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$1(Lcom/ecareme/pixwe/view/common/SplashActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x28 -> :sswitch_2
        0x32 -> :sswitch_3
    .end sparse-switch
.end method
