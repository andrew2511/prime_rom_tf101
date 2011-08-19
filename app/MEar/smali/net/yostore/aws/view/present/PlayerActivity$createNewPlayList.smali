.class Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;
.super Landroid/os/AsyncTask;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "createNewPlayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private _msg:Landroid/os/Message;

.field folderid:J

.field playlistName:Ljava/lang/String;

.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "playlistName"

    .prologue
    .line 793
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    .line 791
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 788
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->_msg:Landroid/os/Message;

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->playlistName:Ljava/lang/String;

    .line 790
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->folderid:J

    .line 792
    iput-object p2, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->playlistName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 798
    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->publishProgress([Ljava/lang/Object;)V

    .line 799
    new-instance v2, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    sget-wide v4, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->playlistName:Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v2, v4, v5, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .local v2, helper:Lnet/yostore/aws/api/helper/FolderCreateHelper;
    const/4 v3, 0x0

    .line 802
    .local v3, response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$0(Lnet/yostore/aws/view/present/PlayerActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    move-object v3, v0

    .line 803
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->folderid:J

    .line 805
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 808
    :goto_0
    return-object v4

    .line 807
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 808
    .local v1, e1:Lnet/yostore/aws/api/exception/APIException;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 824
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->publishProgress([Ljava/lang/Object;)V

    .line 825
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-wide v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->folderid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 826
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    iget-wide v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->folderid:J

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$4(Lnet/yostore/aws/view/present/PlayerActivity;J)V

    .line 831
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060094

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 816
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$2(Lnet/yostore/aws/view/present/PlayerActivity;Landroid/app/ProgressDialog;)V

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$createNewPlayList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
