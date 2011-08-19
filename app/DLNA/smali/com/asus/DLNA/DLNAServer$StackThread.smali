.class public Lcom/asus/DLNA/DLNAServer$StackThread;
.super Ljava/lang/Thread;
.source "DLNAServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNAServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNAServer;


# direct methods
.method public constructor <init>(Lcom/asus/DLNA/DLNAServer;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/asus/DLNA/DLNAServer$StackThread;->this$0:Lcom/asus/DLNA/DLNAServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    :goto_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer$StackThread;->this$0:Lcom/asus/DLNA/DLNAServer;

    iget-object v0, v0, Lcom/asus/DLNA/DLNAServer;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->waitCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/asus/DLNA/DLNAServer$StackThread;->this$0:Lcom/asus/DLNA/DLNAServer;

    invoke-static {v0}, Lcom/asus/DLNA/DLNAServer;->access$100(Lcom/asus/DLNA/DLNAServer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method
