.class Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;
.super Landroid/os/AsyncTask;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "folderRemoveTask"
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
.field folderId:Ljava/lang/String;

.field mdialog:Landroid/app/ProgressDialog;

.field response:Lnet/yostore/aws/api/entity/FolderRemoveResponse;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "folderId"

    .prologue
    .line 854
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 852
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->response:Lnet/yostore/aws/api/entity/FolderRemoveResponse;

    .line 853
    iput-object p2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->folderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 859
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->publishProgress([Ljava/lang/Object;)V

    .line 860
    new-instance v0, Lnet/yostore/aws/api/helper/FolderRemoveHelper;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->folderId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, helper:Lnet/yostore/aws/api/helper/FolderRemoveHelper;
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$2(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/FolderRemoveResponse;

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->response:Lnet/yostore/aws/api/entity/FolderRemoveResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 865
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 875
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 876
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 879
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 892
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->mdialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 895
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 896
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 897
    .local v0, _msg:Landroid/os/Message;
    const/16 v1, 0xb4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 898
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$7(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 899
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v3, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    new-array v2, v4, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 902
    .end local v0           #_msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 885
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 886
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$5(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->mdialog:Landroid/app/ProgressDialog;

    .line 887
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
