.class Landroid/net/EthernetDataTracker$1;
.super Ljava/lang/Object;
.source "EthernetDataTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/EthernetDataTracker;->runDhcp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/EthernetDataTracker;


# direct methods
.method constructor <init>(Landroid/net/EthernetDataTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 141
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 142
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {}, Landroid/net/EthernetDataTracker;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 143
    const-string v2, "Ethernet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCP request error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_2c
    return-void

    .line 146
    :cond_2d
    iget-object v2, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    #setter for: Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v3}, Landroid/net/EthernetDataTracker;->access$302(Landroid/net/EthernetDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 147
    iget-object v2, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$300(Landroid/net/EthernetDataTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-static {}, Landroid/net/EthernetDataTracker;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$400(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$500(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/net/EthernetDataTracker$1;->this$0:Landroid/net/EthernetDataTracker;

    #getter for: Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/EthernetDataTracker;->access$400(Landroid/net/EthernetDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 151
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2c
.end method
