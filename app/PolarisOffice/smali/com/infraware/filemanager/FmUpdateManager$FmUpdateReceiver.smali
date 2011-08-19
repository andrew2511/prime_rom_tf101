.class public Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FmUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmUpdateManager;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/FmUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x2

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 178
    const-string v1, "com.infraware.polaris.office.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmUpdateManager;->onStopService(I)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v1, "com.infraware.polaris.office.ACTION_LATEST_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmUpdateManager;->onStopService(I)Z

    goto :goto_0

    .line 184
    :cond_2
    const-string v1, "com.infraware.polaris.office.ACTION_DISABLE_CONFIRM_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmUpdateManager;->onStopService(I)Z

    goto :goto_0

    .line 187
    :cond_3
    const-string v1, "com.infraware.polaris.office.ACTION_CONNECTION_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmUpdateManager;->onStopService(I)Z

    goto :goto_0

    .line 190
    :cond_4
    const-string v1, "com.infraware.polaris.office.ACTION_NETWORK_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmUpdateManager;->onStopService(I)Z

    goto :goto_0

    .line 193
    :cond_5
    const-string v1, "com.infraware.polaris.office.ACTION_FILE_WRITE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmUpdateManager;->onStopService(I)Z

    goto :goto_0

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$FmUpdateReceiver;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmUpdateManager;->onStopService(I)Z

    goto :goto_0
.end method
