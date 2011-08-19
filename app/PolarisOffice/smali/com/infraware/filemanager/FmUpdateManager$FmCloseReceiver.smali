.class public Lcom/infraware/filemanager/FmUpdateManager$FmCloseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FmCloseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmUpdateManager;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/FmUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmCloseReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 148
    const-string v1, "com.infraware.polaris.office.FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmCloseReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-static {v1}, Lcom/infraware/filemanager/FmUpdateManager;->access$1(Lcom/infraware/filemanager/FmUpdateManager;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmCloseReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-static {v1}, Lcom/infraware/filemanager/FmUpdateManager;->access$1(Lcom/infraware/filemanager/FmUpdateManager;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmCloseReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmUpdateManager;->onStopService(I)Z

    .line 154
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmCloseReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-static {v1}, Lcom/infraware/filemanager/FmUpdateManager;->access$1(Lcom/infraware/filemanager/FmUpdateManager;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmCloseReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmUpdateManager;->onSendBroadcastMsg()V

    .line 158
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmCloseReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-static {v1}, Lcom/infraware/filemanager/FmUpdateManager;->access$2(Lcom/infraware/filemanager/FmUpdateManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 161
    :cond_1
    return-void
.end method
