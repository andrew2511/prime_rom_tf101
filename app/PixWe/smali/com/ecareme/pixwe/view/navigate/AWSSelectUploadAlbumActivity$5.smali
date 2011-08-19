.class Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;
.super Landroid/os/Handler;
.source "AWSSelectUploadAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    .line 151
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;)Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0x7f06006b

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 157
    iget-object v6, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v5, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5$1;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5$1;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_3

    .line 165
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->albumList:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v2, v2, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iput-object v1, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 174
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    .line 175
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-wide v4, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->awsFolder:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->defaultAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->defaultAlbumName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v1, v4, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 177
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    invoke-direct {v0, v2, v1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-object v4, v4, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->defaultAlbumName:Ljava/lang/String;

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;

    iget-wide v4, v2, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity;->awsFolder:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSSelectUploadAlbumActivity$CreateAlbumTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
