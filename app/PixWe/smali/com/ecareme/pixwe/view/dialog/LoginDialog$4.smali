.class Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;
.super Landroid/os/Handler;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/dialog/LoginDialog;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    .line 164
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/high16 v5, 0x7f06

    const v2, 0x7f060065

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 171
    :sswitch_0
    iget-object v6, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    sget-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$1;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$10(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 179
    :sswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$11(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v6, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    sget-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    const v5, 0x7f06006c

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$2;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$2;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$10(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Landroid/app/ProgressDialog;)V

    .line 186
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$11(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 190
    :sswitch_2
    new-instance v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$BindUploadServiceTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-direct {v0, v1, v7}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$BindUploadServiceTask;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Lcom/ecareme/pixwe/view/dialog/LoginDialog$BindUploadServiceTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$BindUploadServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$8(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    goto :goto_0

    .line 194
    :sswitch_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$10(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0

    .line 202
    :sswitch_4
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 204
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$10(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Landroid/app/ProgressDialog;)V

    .line 207
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    const v1, 0x7f06006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$3;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 219
    :sswitch_5
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 221
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$10(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Landroid/app/ProgressDialog;)V

    .line 224
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 226
    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$4;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$4;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 238
    :sswitch_6
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 240
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$10(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Landroid/app/ProgressDialog;)V

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$9(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;->onLoginStatusListener(I)V

    goto/16 :goto_0

    .line 247
    :sswitch_7
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$12(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 249
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$10(Lcom/ecareme/pixwe/view/dialog/LoginDialog;Landroid/app/ProgressDialog;)V

    .line 253
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$5;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$4$5;-><init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog$4;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x28 -> :sswitch_2
        0x32 -> :sswitch_3
        0x3c -> :sswitch_4
        0x46 -> :sswitch_5
        0x50 -> :sswitch_6
        0x5a -> :sswitch_7
    .end sparse-switch
.end method
