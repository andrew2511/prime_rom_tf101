.class Lnet/yostore/aws/view/common/LoginActivity$5;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/LoginActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/LoginActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v5, 0x7f060006

    const/high16 v2, 0x7f06

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 252
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local p0
    :sswitch_0
    iget-object v6, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    sget-object v0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    sget-object v1, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f06000d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/yostore/aws/view/common/LoginActivity$5$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/common/LoginActivity$5$1;-><init>(Lnet/yostore/aws/view/common/LoginActivity$5;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$13(Lnet/yostore/aws/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 162
    :sswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$14(Lnet/yostore/aws/view/common/LoginActivity;)Lnet/yostore/aws/view/common/LoginActivity$LoginTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v6, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    sget-object v0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    sget-object v1, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    const v5, 0x7f06000d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lnet/yostore/aws/view/common/LoginActivity$5$2;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/common/LoginActivity$5$2;-><init>(Lnet/yostore/aws/view/common/LoginActivity$5;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$13(Lnet/yostore/aws/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 169
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$14(Lnet/yostore/aws/view/common/LoginActivity;)Lnet/yostore/aws/view/common/LoginActivity$LoginTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 173
    :sswitch_2
    new-instance v0, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-direct {v0, v1, v7}, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;-><init>(Lnet/yostore/aws/view/common/LoginActivity;Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/LoginActivity$BindMPServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 176
    :sswitch_3
    new-instance v0, Lnet/yostore/aws/view/common/LoginActivity$BindPLServiceTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-direct {v0, v1, v7}, Lnet/yostore/aws/view/common/LoginActivity$BindPLServiceTask;-><init>(Lnet/yostore/aws/view/common/LoginActivity;Lnet/yostore/aws/view/common/LoginActivity$BindPLServiceTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/LoginActivity$BindPLServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 179
    :sswitch_4
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 181
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0, v7}, Lnet/yostore/aws/view/common/LoginActivity;->access$13(Lnet/yostore/aws/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0

    .line 187
    :sswitch_5
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 189
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0, v7}, Lnet/yostore/aws/view/common/LoginActivity;->access$13(Lnet/yostore/aws/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 192
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    new-instance v1, Lnet/yostore/aws/view/common/LoginActivity$5$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/LoginActivity$5$3;-><init>(Lnet/yostore/aws/view/common/LoginActivity$5;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 204
    :sswitch_6
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 206
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0, v7}, Lnet/yostore/aws/view/common/LoginActivity;->access$13(Lnet/yostore/aws/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 209
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    new-instance v1, Lnet/yostore/aws/view/common/LoginActivity$5$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/LoginActivity$5$4;-><init>(Lnet/yostore/aws/view/common/LoginActivity$5;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 222
    :sswitch_7
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 224
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0, v7}, Lnet/yostore/aws/view/common/LoginActivity;->access$13(Lnet/yostore/aws/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 226
    :cond_3
    sget-object v0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->goHome(Landroid/content/Context;)V

    .line 227
    sget-object p0, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 230
    .restart local p0
    :sswitch_8
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/LoginActivity;->access$15(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 232
    iget-object v0, p0, Lnet/yostore/aws/view/common/LoginActivity$5;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v0, v7}, Lnet/yostore/aws/view/common/LoginActivity;->access$13(Lnet/yostore/aws/view/common/LoginActivity;Landroid/app/ProgressDialog;)V

    .line 234
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lnet/yostore/aws/view/common/LoginActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 238
    const v1, 0x7f060003

    .line 239
    new-instance v2, Lnet/yostore/aws/view/common/LoginActivity$5$5;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/LoginActivity$5$5;-><init>(Lnet/yostore/aws/view/common/LoginActivity$5;)V

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
        0x50 -> :sswitch_7
        0x5a -> :sswitch_8
    .end sparse-switch
.end method
