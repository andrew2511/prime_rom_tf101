.class Lcom/infraware/filemanager/FmFileSyncActivity$3;
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
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileSyncActivity$3;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    .line 202
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, strAction:Ljava/lang/String;
    const-string v1, "com.infraware.filemanager.webstorage.WebStorageAction.STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "login_fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileSyncActivity$3;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmFileSyncActivity;->onToastText(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelAccountOperation()V

    .line 213
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->cancelLogin()V

    .line 214
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->initProgress()V

    .line 215
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 216
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 217
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileSyncActivity$3;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileSyncActivity;->finish()V

    .line 220
    :cond_0
    return-void
.end method
