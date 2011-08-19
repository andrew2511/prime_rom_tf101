.class Lcom/infraware/filemanager/FmFileListActivity$3;
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
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileListActivity$3;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    .line 163
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, strAction:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileListActivity$3;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getAdaptorMode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileListActivity$3;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getAdaptorMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileListActivity$3;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v1

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->setFileList(Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileListActivity$3;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileListActivity;->access$1(Lcom/infraware/filemanager/FmFileListActivity;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 176
    :cond_0
    return-void
.end method
