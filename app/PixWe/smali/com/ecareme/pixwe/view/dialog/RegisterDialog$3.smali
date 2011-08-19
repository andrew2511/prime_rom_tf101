.class Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;
.super Landroid/os/Handler;
.source "RegisterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/high16 v4, 0x7f06

    const/4 v8, 0x0

    const v2, 0x7f060065

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 187
    :sswitch_0
    iget-object v6, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$1;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 195
    :sswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$19(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v6, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$2;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$2;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    .line 202
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$19(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 206
    :sswitch_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$20(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$19(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$LoginTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v6, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$3;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$3;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    .line 213
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$20(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 217
    :sswitch_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$16(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 219
    new-instance v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$BindAWSServiceTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-direct {v0, v1, v7}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$BindAWSServiceTask;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Lcom/ecareme/pixwe/view/dialog/RegisterDialog$BindAWSServiceTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$BindAWSServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 222
    :sswitch_4
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 224
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0

    .line 230
    :sswitch_5
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 232
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    .line 235
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    const v1, 0x7f06006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$4;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$4;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 247
    :sswitch_6
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 249
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    .line 252
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$5;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$5;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 265
    :sswitch_7
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 267
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$17(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;->onRegisterStatusListener(I)V

    goto/16 :goto_0

    .line 274
    :sswitch_8
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 276
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    .line 278
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 280
    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$6;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$6;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 293
    :sswitch_9
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 295
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    .line 297
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    const v1, 0x7f060085

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060062

    new-instance v2, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$7;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$7;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 308
    :sswitch_a
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 309
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$21(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 310
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$18(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Landroid/app/ProgressDialog;)V

    .line 312
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$8;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$8;-><init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V

    .line 312
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 185
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
        0x64 -> :sswitch_9
        0x6e -> :sswitch_a
    .end sparse-switch
.end method
