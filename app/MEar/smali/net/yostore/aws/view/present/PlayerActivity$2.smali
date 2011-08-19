.class Lnet/yostore/aws/view/present/PlayerActivity$2;
.super Landroid/os/Handler;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/PlayerActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    .line 205
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/PlayerActivity$2;)Lnet/yostore/aws/view/present/PlayerActivity;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f060094

    const v4, 0x7f060019

    const v3, 0x7f060003

    const/4 v2, 0x1

    .line 209
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 220
    :sswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 226
    :sswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    goto :goto_0

    .line 231
    :sswitch_2
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 237
    :sswitch_3
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 240
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$2$1;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$2$1;-><init>(Lnet/yostore/aws/view/present/PlayerActivity$2;)V

    .line 245
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 257
    :sswitch_4
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 260
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 265
    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$2$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$2$2;-><init>(Lnet/yostore/aws/view/present/PlayerActivity$2;)V

    .line 264
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 275
    :sswitch_5
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 278
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$2$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$2$3;-><init>(Lnet/yostore/aws/view/present/PlayerActivity$2;)V

    .line 283
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 291
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 296
    :sswitch_6
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 299
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$14(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 303
    :sswitch_7
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 306
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 308
    const v1, 0x7f0600b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 311
    new-instance v1, Lnet/yostore/aws/view/present/PlayerActivity$2$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/PlayerActivity$2$4;-><init>(Lnet/yostore/aws/view/present/PlayerActivity$2;)V

    .line 310
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 321
    :sswitch_8
    new-instance v0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-direct {v0, v1, v6}, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;)V

    invoke-virtual {v0, v6}, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 325
    :sswitch_9
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 328
    :cond_6
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Success"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 331
    :sswitch_a
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 334
    :cond_7
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 338
    :sswitch_b
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 339
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 341
    :cond_8
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$2;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060096

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
        0x32 -> :sswitch_3
        0x3c -> :sswitch_4
        0x46 -> :sswitch_5
        0x78 -> :sswitch_6
        0x82 -> :sswitch_7
        0x8c -> :sswitch_8
        0x96 -> :sswitch_9
        0xa0 -> :sswitch_a
        0xaa -> :sswitch_b
    .end sparse-switch
.end method
