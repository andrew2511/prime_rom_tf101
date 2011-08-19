.class Lcom/android/server/vpn/L2tpIpsecService;
.super Lcom/android/server/vpn/VpnService;
.source "L2tpIpsecService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/L2tpIpsecProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final IPSEC:Ljava/lang/String; = "racoon"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;-><init>()V

    return-void
.end method


# virtual methods
.method protected connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/L2tpIpsecProfile;

    .line 34
    .local v2, p:Landroid/net/vpn/L2tpIpsecProfile;
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecService;->getDaemons()Lcom/android/server/vpn/VpnDaemons;

    move-result-object v0

    .line 37
    .local v0, daemons:Lcom/android/server/vpn/VpnDaemons;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v3, v4, v5}, Lcom/android/server/vpn/VpnDaemons;->startIpsecForL2tp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v1

    .line 41
    .local v1, ipsec:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v1}, Lcom/android/server/vpn/DaemonProxy;->closeControlSocket()V

    .line 43
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/android/server/vpn/L2tpIpsecService;->sleep(I)V

    .line 46
    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->isSecretEnabled()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getSecretString()Ljava/lang/String;

    move-result-object v3

    :goto_65
    invoke-virtual {v0, p1, v3, p2, p3}, Lcom/android/server/vpn/VpnDaemons;->startL2tp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    .line 49
    return-void

    .line 46
    :cond_69
    const/4 v3, 0x0

    goto :goto_65
.end method
