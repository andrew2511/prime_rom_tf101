.class Lcom/infraware/filemanager/FmFileListActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "FmFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmFileListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileListActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileListActivity$5;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    .line 235
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileListActivity$5;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getAdaptorMode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 241
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileListActivity$5;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getAdaptorMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, strAction:Ljava/lang/String;
    const-string v1, "com.infraware.filemanager.webstorage.WebStorageAction.STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "login_fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileListActivity$5;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmFileListActivity;->onToastText(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelAccountOperation()V

    .line 251
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelLogin()V

    .line 252
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->initProgress()V

    .line 253
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 254
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 255
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileListActivity$5;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileListActivity;->finish()V

    goto :goto_0
.end method
