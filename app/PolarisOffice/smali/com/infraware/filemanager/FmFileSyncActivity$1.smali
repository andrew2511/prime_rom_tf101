.class Lcom/infraware/filemanager/FmFileSyncActivity$1;
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
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileSyncActivity$1;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    .line 138
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, strAction:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileSyncActivity$1;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileSyncActivity;->access$0(Lcom/infraware/filemanager/FmFileSyncActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;

    move-result-object v1

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->setFileList(Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileSyncActivity$1;->this$0:Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileSyncActivity;->access$0(Lcom/infraware/filemanager/FmFileSyncActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->updateListControl()V

    .line 148
    :cond_0
    return-void
.end method
