.class Lcom/ecareme/pixwe/view/common/RegisterActivity$3;
.super Landroid/os/Handler;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/RegisterActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    .line 187
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)Lcom/ecareme/pixwe/view/common/RegisterActivity;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    return-object v0
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

    .line 191
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 316
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local p0
    :sswitch_0
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$1;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 202
    :sswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$19(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$2;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$2;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 209
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$19(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 213
    :sswitch_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$20(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$19(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v6, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f06006c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$3;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$3;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 220
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$20(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 224
    :sswitch_3
    new-instance v0, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-direct {v0, v1, v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;)V

    new-array v1, v3, [Ljava/lang/Void;

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity$BindAWSServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 227
    :sswitch_4
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 229
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0

    .line 235
    :sswitch_5
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 237
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 240
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    const v1, 0x7f06006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$4;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$4;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 252
    :sswitch_6
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 254
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 257
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$5;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$5;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 270
    :sswitch_7
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 272
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 275
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 278
    .restart local p0
    :sswitch_8
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 280
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$12(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goLogin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 285
    :sswitch_9
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 286
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 287
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 289
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    const v1, 0x7f060085

    .line 289
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060062

    new-instance v2, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$6;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$6;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 299
    :sswitch_a
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$21(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 301
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0, v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$18(Lcom/ecareme/pixwe/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 303
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$7;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$3$7;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$3;)V

    .line 303
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 192
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
