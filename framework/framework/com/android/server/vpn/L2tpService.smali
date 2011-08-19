.class Lcom/android/server/vpn/L2tpService;
.super Lcom/android/server/vpn/VpnService;
.source "L2tpService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/L2tpProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;-><init>()V

    return-void
.end method


# virtual methods
.method protected connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    .line 31
    .local v0, p:Landroid/net/vpn/L2tpProfile;
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpService;->getDaemons()Lcom/android/server/vpn/VpnDaemons;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v2

    :goto_14
    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/server/vpn/VpnDaemons;->startL2tp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    .line 34
    return-void

    .line 31
    :cond_18
    const/4 v2, 0x0

    goto :goto_14
.end method
