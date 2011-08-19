.class Lnet/yostore/aws/view/navigate/LibActivity$1;
.super Landroid/os/Handler;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/LibActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    .line 221
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/LibActivity$1;)Lnet/yostore/aws/view/navigate/LibActivity;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v7, 0x7f060094

    const v6, 0x7f060019

    const v5, 0x7f060003

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 225
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 226
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 236
    :sswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 242
    :sswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 248
    :sswitch_2
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 254
    :sswitch_3
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 258
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 260
    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 263
    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$1$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$1$1;-><init>(Lnet/yostore/aws/view/navigate/LibActivity$1;)V

    .line 262
    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 274
    :sswitch_4
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 277
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 279
    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 282
    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$1$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$1$2;-><init>(Lnet/yostore/aws/view/navigate/LibActivity$1;)V

    .line 281
    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 292
    :sswitch_5
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 295
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/handler/LoginHandler;->doLogout(Landroid/content/Context;)Z

    .line 296
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 298
    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 301
    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$1$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$1$3;-><init>(Lnet/yostore/aws/view/navigate/LibActivity$1;)V

    .line 300
    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 308
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 312
    :sswitch_6
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 313
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 319
    :sswitch_7
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/LibActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 324
    :cond_4
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    .local v0, textView:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 326
    const v1, 0x7f0600ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 327
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 331
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 335
    const v2, 0x7f060005

    new-instance v3, Lnet/yostore/aws/view/navigate/LibActivity$1$4;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/navigate/LibActivity$1$4;-><init>(Lnet/yostore/aws/view/navigate/LibActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 344
    .end local v0           #textView:Landroid/widget/TextView;
    :sswitch_8
    new-instance v1, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v1, v2, v4}, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;)V

    invoke-virtual {v1, v4}, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 348
    :sswitch_9
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/LibActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 349
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 355
    :sswitch_a
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 358
    :cond_5
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$24(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 362
    :sswitch_b
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 363
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 365
    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 367
    const v2, 0x7f0600b0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 370
    new-instance v2, Lnet/yostore/aws/view/navigate/LibActivity$1$5;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/LibActivity$1$5;-><init>(Lnet/yostore/aws/view/navigate/LibActivity$1;)V

    .line 369
    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 380
    :sswitch_c
    new-instance v1, Lnet/yostore/aws/view/navigate/LibActivity$getPlaylistTask;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v1, v2, v4}, Lnet/yostore/aws/view/navigate/LibActivity$getPlaylistTask;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/LibActivity$getPlaylistTask;)V

    invoke-virtual {v1, v4}, Lnet/yostore/aws/view/navigate/LibActivity$getPlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 384
    :sswitch_d
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 385
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 387
    :cond_7
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Success"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 390
    :sswitch_e
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 391
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 393
    :cond_8
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 397
    :sswitch_f
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 398
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 400
    :cond_9
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060096

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 405
    :sswitch_10
    new-instance v1, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$1;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v1, v2, v4}, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/LibActivity$moreTask;)V

    invoke-virtual {v1, v4}, Lnet/yostore/aws/view/navigate/LibActivity$moreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
        0x32 -> :sswitch_3
        0x3c -> :sswitch_4
        0x46 -> :sswitch_5
        0x50 -> :sswitch_6
        0x5a -> :sswitch_7
        0x64 -> :sswitch_8
        0x6e -> :sswitch_9
        0x78 -> :sswitch_a
        0x82 -> :sswitch_b
        0x8c -> :sswitch_c
        0x96 -> :sswitch_d
        0xa0 -> :sswitch_e
        0xaa -> :sswitch_f
        0xb4 -> :sswitch_10
    .end sparse-switch
.end method
