.class final Lcom/asus/DLNA/DLNAServer$HandlerStack;
.super Landroid/os/Handler;
.source "DLNAServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNAServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandlerStack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNAServer;


# direct methods
.method private constructor <init>(Lcom/asus/DLNA/DLNAServer;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/asus/DLNA/DLNAServer$HandlerStack;->this$0:Lcom/asus/DLNA/DLNAServer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/DLNA/DLNAServer;Lcom/asus/DLNA/DLNAServer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/asus/DLNA/DLNAServer$HandlerStack;-><init>(Lcom/asus/DLNA/DLNAServer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer$HandlerStack;->this$0:Lcom/asus/DLNA/DLNAServer;

    iget-object v1, v1, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer$HandlerStack;->this$0:Lcom/asus/DLNA/DLNAServer;

    iget-object v1, v1, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->getCommandToHandle()Lcom/awox/jUPnPCP/UPnPCommand;

    move-result-object v0

    .line 102
    .local v0, theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    :goto_0
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPCommand;->ExecuteCommandCompletedActionHandlers()Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer$HandlerStack;->this$0:Lcom/asus/DLNA/DLNAServer;

    invoke-virtual {v1, v0}, Lcom/asus/DLNA/DLNAServer;->onCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer$HandlerStack;->this$0:Lcom/asus/DLNA/DLNAServer;

    iget-object v1, v1, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1, v0}, Lcom/awox/jUPnPCP/UPnPStack;->handledCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 108
    iget-object v1, p0, Lcom/asus/DLNA/DLNAServer$HandlerStack;->this$0:Lcom/asus/DLNA/DLNAServer;

    iget-object v1, v1, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->getCommandToHandle()Lcom/awox/jUPnPCP/UPnPCommand;

    move-result-object v0

    goto :goto_0
.end method
