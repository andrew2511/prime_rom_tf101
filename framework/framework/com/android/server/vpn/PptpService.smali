.class Lcom/android/server/vpn/PptpService;
.super Lcom/android/server/vpn/VpnService;
.source "PptpService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/PptpProfile;",
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
    invoke-virtual {p0}, Lcom/android/server/vpn/PptpService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/PptpProfile;

    .line 31
    .local v0, p:Landroid/net/vpn/PptpProfile;
    invoke-virtual {p0}, Lcom/android/server/vpn/PptpService;->getDaemons()Lcom/android/server/vpn/VpnDaemons;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/vpn/PptpProfile;->isEncryptionEnabled()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/vpn/VpnDaemons;->startPptp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/vpn/DaemonProxy;

    .line 33
    return-void
.end method
