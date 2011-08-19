.class Lcom/ecareme/pixwe/view/common/LoginActivity$4;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/LoginActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v4, 0x7f060065

    const/high16 v2, 0x7f06

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 176
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 261
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local p0
    :sswitch_0
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    sget-object v0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/LoginActivity$4$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$4$1;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity$4;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$9(Lcom/ecareme/pixwe/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 187
    :sswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$10(Lcom/ecareme/pixwe/view/common/LoginActivity;)Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    sget-object v0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/LoginActivity$4$2;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$4$2;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity$4;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$9(Lcom/ecareme/pixwe/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 194
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$10(Lcom/ecareme/pixwe/view/common/LoginActivity;)Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/LoginActivity$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 198
    :sswitch_2
    new-instance v0, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-direct {v0, v1, v7}, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity;Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/LoginActivity$BindUploadServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 201
    :sswitch_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 203
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$9(Lcom/ecareme/pixwe/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 209
    :sswitch_4
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 211
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$9(Lcom/ecareme/pixwe/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 214
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    const v1, 0x7f06006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/ecareme/pixwe/view/common/LoginActivity$4$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$4$3;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity$4;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 226
    :sswitch_5
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 228
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$9(Lcom/ecareme/pixwe/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 231
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 233
    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/ecareme/pixwe/view/common/LoginActivity$4$4;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/LoginActivity$4$4;-><init>(Lcom/ecareme/pixwe/view/common/LoginActivity$4;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 244
    :sswitch_6
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 246
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$9(Lcom/ecareme/pixwe/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 248
    :cond_3
    sget-object v0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 249
    sget-object p0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 252
    .restart local p0
    :sswitch_7
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$11(Lcom/ecareme/pixwe/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 254
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/LoginActivity$4;->this$0:Lcom/ecareme/pixwe/view/common/LoginActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/LoginActivity;->access$9(Lcom/ecareme/pixwe/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 256
    :cond_4
    sget-object v0, Lcom/ecareme/pixwe/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goLogin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 177
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
