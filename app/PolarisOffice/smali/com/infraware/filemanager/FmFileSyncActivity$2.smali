.class Lcom/infraware/filemanager/FmFileSyncActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FmFileSyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmFileSyncActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileSyncActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmFileSyncActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileSyncActivity$2;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    .line 154
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, strAction:Ljava/lang/String;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileSyncActivity$2;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/FmFileSyncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 162
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 163
    .local v1, mobileInfo:Landroid/net/NetworkInfo;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 165
    .local v3, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileSyncActivity$2;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a030b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/FmFileSyncActivity;->onToastText(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelAccountOperation()V

    .line 172
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelLogin()V

    .line 173
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->initProgress()V

    .line 174
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 175
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 177
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileSyncActivity$2;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileSyncActivity;->finish()V

    .line 181
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileSyncActivity$2;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a030c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/FmFileSyncActivity;->onToastText(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelAccountOperation()V

    .line 188
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelLogin()V

    .line 189
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->initProgress()V

    .line 190
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 191
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 193
    iget-object v4, p0, Lcom/infraware/filemanager/FmFileSyncActivity$2;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileSyncActivity;->finish()V

    .line 196
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #mobileInfo:Landroid/net/NetworkInfo;
    .end local v3           #wifiInfo:Landroid/net/NetworkInfo;
    :cond_1
    return-void
.end method
