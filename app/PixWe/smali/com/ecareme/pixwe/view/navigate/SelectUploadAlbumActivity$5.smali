.class Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;
.super Landroid/os/Handler;
.source "SelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    .line 234
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 238
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 240
    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5$1;-><init>(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/app/ProgressDialog;)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_3

    .line 248
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$15(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$15(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 253
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 255
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$16(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 257
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$16(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 259
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v4}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$10(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;J)V

    .line 260
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$11(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$14(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$15(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$15(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 265
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;->access$13(Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0

    .line 260
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
