.class Lcom/asus/DMS/DLNAServerService$1;
.super Lcom/asus/DMS/ServiceCommunication$Stub;
.source "DLNAServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DMS/DLNAServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DMS/DLNAServerService;


# direct methods
.method constructor <init>(Lcom/asus/DMS/DLNAServerService;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-direct {p0}, Lcom/asus/DMS/ServiceCommunication$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ClearDatabase()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->ClearDatabase()Z

    move-result v0

    goto :goto_0
.end method

.method public DisableDMS()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-virtual {v0}, Lcom/asus/DMS/DLNAServerService;->doDisableDMS()V

    .line 70
    return-void
.end method

.method public EnableDMS()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-virtual {v0}, Lcom/asus/DMS/DLNAServerService;->doEnableDMS()V

    .line 65
    return-void
.end method

.method public ForceUpdate()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->ForceUpdate()V

    .line 117
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsDMSRunning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsUpdating()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->IsUpdating()Z

    move-result v0

    goto :goto_0
.end method

.method public RemoveSharedFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "aSharedFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->RemoveSharedFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public Restart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->Restart()Z

    move-result v0

    goto :goto_0
.end method

.method public SetMediaType(ZZZ)Z
    .locals 1
    .parameter "afVideo"
    .parameter "afAudio"
    .parameter "afImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->SetMediaType(ZZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public UpdateConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-virtual {v1}, Lcom/asus/DMS/DLNAServerService;->doUpdateConfiguration()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public addSharedFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "aSharedFolder"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->addSharedFolder(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFriendlyName(Ljava/lang/String;)Z
    .locals 1
    .parameter "aFriendlyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DMS/DLNAServerService$1;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-static {v0}, Lcom/asus/DMS/DLNAServerService;->access$000(Lcom/asus/DMS/DLNAServerService;)Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/asus/DMS/DLNAServerService$DLNAServerServiceThread;->SetFriendlyName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
