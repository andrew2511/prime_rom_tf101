.class Lcom/infraware/filemanager/FmFileListActivity$4;
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
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileListActivity$4;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    .line 182
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 186
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListActivity$4;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v4}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getAdaptorMode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 187
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListActivity$4;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v4}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getAdaptorMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, strAction:Ljava/lang/String;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListActivity$4;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/FmFileListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 194
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 195
    .local v1, mobileInfo:Landroid/net/NetworkInfo;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 197
    .local v3, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListActivity$4;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a030b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/FmFileListActivity;->onToastText(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelAccountOperation()V

    .line 205
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelLogin()V

    .line 206
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->initProgress()V

    .line 207
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 208
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 210
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListActivity$4;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileListActivity;->finish()V

    .line 214
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListActivity$4;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a030c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/FmFileListActivity;->onToastText(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelAccountOperation()V

    .line 221
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelLogin()V

    .line 222
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->initProgress()V

    .line 223
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 224
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 226
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileListActivity$4;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileListActivity;->finish()V

    goto/16 :goto_0
.end method
