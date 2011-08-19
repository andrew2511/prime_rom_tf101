.class Landroid/net/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfigStore$1;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DNS_KEY:Ljava/lang/String; = "dns"

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field private static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IPCONFIG_FILE_VERSION:I = 0x1

.field private static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field private static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field private static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field private static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field private static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static sConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sLastPriority:I

.field private static sNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_39

    move v0, v2

    :goto_c
    sput-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    .line 120
    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-void

    :cond_39
    move v0, v1

    .line 103
    goto :goto_c
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    return-void
.end method

.method private static addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V
    .registers 7
    .parameter "linkProperties"
    .parameter "config"

    .prologue
    .line 1180
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 1181
    .local v3, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {p0, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_a

    .line 1183
    .end local v3           #linkAddr:Landroid/net/LinkAddress;
    :cond_1a
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getGateways()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1184
    .local v1, gateway:Ljava/net/InetAddress;
    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addGateway(Ljava/net/InetAddress;)V

    goto :goto_24

    .line 1186
    .end local v1           #gateway:Ljava/net/InetAddress;
    :cond_34
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1187
    .local v0, dns:Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3e

    .line 1189
    .end local v0           #dns:Ljava/net/InetAddress;
    :cond_4e
    return-void
.end method

.method static addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 300
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 301
    .local v0, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 302
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    return v1
.end method

.method private static addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 11
    .parameter "config"

    .prologue
    .line 800
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 801
    .local v0, netId:I
    const/4 v6, 0x1

    .line 803
    .local v6, updateFailed:Z
    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    const/4 v1, 0x1

    move v5, v1

    .line 805
    .local v5, newNetwork:Z
    :goto_8
    if-eqz v5, :cond_24

    .line 806
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I

    move-result v0

    .line 807
    if-gez v0, :cond_24

    .line 808
    const-string p0, "WifiConfigStore"

    .end local p0
    const-string v1, "Failed to add a network!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance p0, Landroid/net/wifi/NetworkUpdateResult;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    move-object v1, p0

    move p0, v0

    .end local v0           #netId:I
    .local p0, netId:I
    move v0, v6

    .line 1074
    .end local v5           #newNetwork:Z
    .end local v6           #updateFailed:Z
    .local v0, updateFailed:Z
    :goto_20
    return-object v1

    .line 803
    .local v0, netId:I
    .restart local v6       #updateFailed:Z
    .local p0, config:Landroid/net/wifi/WifiConfiguration;
    :cond_21
    const/4 v1, 0x0

    move v5, v1

    goto :goto_8

    .restart local v5       #newNetwork:Z
    :cond_24
    move v4, v0

    .line 815
    .end local v0           #netId:I
    .local v4, netId:I
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_78

    const-string/jumbo v0, "ssid"

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 820
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 1042
    .end local v6           #updateFailed:Z
    .local v1, updateFailed:Z
    :goto_4f
    if-eqz v1, :cond_440

    .line 1043
    if-eqz v5, :cond_6e

    .line 1044
    invoke-static {v4}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    .line 1045
    const-string p0, "WifiConfigStore"

    .end local p0           #config:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set a network variable, removed network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_6e
    new-instance p0, Landroid/net/wifi/NetworkUpdateResult;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    move v0, v1

    .end local v1           #updateFailed:Z
    .local v0, updateFailed:Z
    move-object v1, p0

    move p0, v4

    .end local v4           #netId:I
    .local p0, netId:I
    goto :goto_20

    .line 824
    .end local v0           #updateFailed:Z
    .restart local v4       #netId:I
    .restart local v6       #updateFailed:Z
    .local p0, config:Landroid/net/wifi/WifiConfiguration;
    :cond_78
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_a2

    const-string v0, "bssid"

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 829
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set BSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 830
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto :goto_4f

    .line 833
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_a2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, allowedKeyManagementString:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-eqz v1, :cond_d5

    const-string v1, "key_mgmt"

    invoke-static {v4, v1, v0}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 840
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set key_mgmt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #allowedKeyManagementString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 842
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 845
    .end local v1           #updateFailed:Z
    .restart local v0       #allowedKeyManagementString:Ljava/lang/String;
    .restart local v6       #updateFailed:Z
    :cond_d5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .end local v0           #allowedKeyManagementString:Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, allowedProtocolsString:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-eqz v1, :cond_109

    const-string/jumbo v1, "proto"

    invoke-static {v4, v1, v0}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_109

    .line 852
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #allowedProtocolsString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 854
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 858
    .end local v1           #updateFailed:Z
    .restart local v0       #allowedProtocolsString:Ljava/lang/String;
    .restart local v6       #updateFailed:Z
    :cond_109
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .end local v0           #allowedProtocolsString:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 859
    const-string/jumbo v0, "psk_key_type"

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_148

    .line 863
    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v0, :cond_47d

    .line 864
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": failed to set WAPI_PSK key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 872
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_148
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_375

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_375

    const-string/jumbo v0, "psk"

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_375

    .line 877
    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v0, :cond_47d

    .line 878
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set psk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 883
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_182
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 884
    const-string v0, "cert_index"

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c0

    .line 888
    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v0, :cond_47d

    .line 889
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": failed to set WAPI_CERT index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 894
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_1c0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    if-eqz v0, :cond_1f0

    const-string/jumbo v0, "wapi_as_cert"

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f0

    .line 899
    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v0, :cond_47d

    .line 900
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set WAPI_CERT as cert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 906
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_1f0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v0, :cond_375

    const-string/jumbo v0, "wapi_user_cert"

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_375

    .line 911
    sget-boolean v0, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v0, :cond_47d

    .line 912
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set WAPI_CERT user cert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 920
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_220
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, allowedAuthAlgorithmsString:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-eqz v1, :cond_253

    const-string v1, "auth_alg"

    invoke-static {v4, v1, v0}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_253

    .line 927
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set auth_alg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #allowedAuthAlgorithmsString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 929
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 932
    .end local v1           #updateFailed:Z
    .restart local v0       #allowedAuthAlgorithmsString:Ljava/lang/String;
    .restart local v6       #updateFailed:Z
    :cond_253
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .end local v0           #allowedAuthAlgorithmsString:Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, allowedPairwiseCiphersString:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-eqz v1, :cond_286

    const-string v1, "pairwise"

    invoke-static {v4, v1, v0}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_286

    .line 940
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set pairwise: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #allowedPairwiseCiphersString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 942
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 945
    .end local v1           #updateFailed:Z
    .restart local v0       #allowedPairwiseCiphersString:Ljava/lang/String;
    .restart local v6       #updateFailed:Z
    :cond_286
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .end local v0           #allowedPairwiseCiphersString:Ljava/lang/String;
    sget-object v1, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, allowedGroupCiphersString:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-eqz v1, :cond_2b9

    const-string v1, "group"

    invoke-static {v4, v1, v0}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b9

    .line 952
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #allowedGroupCiphersString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 954
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 959
    .end local v1           #updateFailed:Z
    .restart local v0       #allowedGroupCiphersString:Ljava/lang/String;
    .restart local v6       #updateFailed:Z
    :cond_2b9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v0           #allowedGroupCiphersString:Ljava/lang/String;
    if-eqz v0, :cond_2ef

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ef

    const-string/jumbo v0, "psk"

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ef

    .line 964
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set psk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 965
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 968
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_2ef
    const/4 v0, 0x0

    .line 969
    .local v0, hasSetKey:Z
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v1, :cond_347

    .line 970
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_347

    .line 973
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_344

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_344

    .line 974
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .end local v0           #hasSetKey:Z
    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v4, v0, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_343

    .line 978
    const-string v0, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set wep_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v3, v1

    .end local v1           #i:I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 981
    .end local v6           #updateFailed:Z
    .local v1, updateFailed:Z
    goto/16 :goto_4f

    .line 983
    .local v1, i:I
    .restart local v6       #updateFailed:Z
    :cond_343
    const/4 v0, 0x1

    .line 970
    .restart local v0       #hasSetKey:Z
    :cond_344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f5

    .line 988
    .end local v1           #i:I
    :cond_347
    if-eqz v0, :cond_375

    .line 989
    const-string/jumbo v0, "wep_tx_keyidx"

    .end local v0           #hasSetKey:Z
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_375

    .line 993
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to set wep_tx_keyidx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 996
    .end local v6           #updateFailed:Z
    .local v1, updateFailed:Z
    goto/16 :goto_4f

    .line 1003
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_375
    const-string/jumbo v0, "priority"

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a7

    .line 1007
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": failed to set priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 1009
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 1012
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_3a7
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v0, :cond_3e2

    const-string/jumbo v0, "scan_ssid"

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_3e0

    const/4 v1, 0x1

    :goto_3b3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e2

    .line 1016
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": failed to set hiddenSSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 1018
    .end local v6           #updateFailed:Z
    .restart local v1       #updateFailed:Z
    goto/16 :goto_4f

    .line 1012
    .end local v1           #updateFailed:Z
    .restart local v6       #updateFailed:Z
    :cond_3e0
    const/4 v1, 0x0

    goto :goto_3b3

    .line 1022
    :cond_3e2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_3e7
    if-ge v2, v3, :cond_43c

    aget-object v1, v0, v2

    .line 1023
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v8

    .line 1024
    .local v8, varName:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    .line 1025
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_437

    .line 1026
    iget-object v9, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v9, :cond_47b

    .line 1027
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    if-nez v1, :cond_432

    const-string v1, "NULL"

    .line 1029
    .end local v7           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :goto_401
    invoke-static {v4, v8, v1}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_438

    .line 1033
    const-string v0, "WifiConfigStore"

    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #i$:I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .end local v3           #len$:I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": failed to set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 1035
    .end local v6           #updateFailed:Z
    .local v1, updateFailed:Z
    goto/16 :goto_4f

    .line 1027
    .end local v1           #updateFailed:Z
    .restart local v0       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #updateFailed:Z
    .restart local v7       #value:Ljava/lang/String;
    :cond_432
    invoke-static {v7}, Landroid/net/wifi/WifiConfigStore;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_401

    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_437
    move-object v1, v7

    .line 1022
    .end local v7           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :cond_438
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_3e7

    .line 1039
    .end local v8           #varName:Ljava/lang/String;
    :cond_43c
    const/4 v0, 0x0

    .end local v6           #updateFailed:Z
    .local v0, updateFailed:Z
    move v1, v0

    .end local v0           #updateFailed:Z
    .local v1, updateFailed:Z
    goto/16 :goto_4f

    .line 1060
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_440
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1061
    :try_start_443
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1062
    .local v0, sConfig:Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2
    :try_end_450
    .catchall {:try_start_443 .. :try_end_450} :catchall_475

    .line 1063
    if-nez v0, :cond_466

    .line 1064
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .end local v0           #sConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1065
    .restart local v0       #sConfig:Landroid/net/wifi/WifiConfiguration;
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1066
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1067
    :try_start_45c
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .end local v5           #newNetwork:Z
    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    monitor-exit v2
    :try_end_466
    .catchall {:try_start_45c .. :try_end_466} :catchall_478

    .line 1070
    :cond_466
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1072
    invoke-static {v0, p0}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object p0

    .line 1073
    .local p0, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {p0, v4}, Landroid/net/wifi/NetworkUpdateResult;->setNetworkId(I)V

    move v0, v1

    .end local v1           #updateFailed:Z
    .local v0, updateFailed:Z
    move-object v1, p0

    move p0, v4

    .line 1074
    .end local v4           #netId:I
    .local p0, netId:I
    goto/16 :goto_20

    .line 1062
    .end local v0           #updateFailed:Z
    .end local p0           #netId:I
    .restart local v1       #updateFailed:Z
    .restart local v4       #netId:I
    .restart local v5       #newNetwork:Z
    :catchall_475
    move-exception p0

    :try_start_476
    monitor-exit v2
    :try_end_477
    .catchall {:try_start_476 .. :try_end_477} :catchall_475

    throw p0

    .line 1068
    .end local v5           #newNetwork:Z
    .local v0, sConfig:Landroid/net/wifi/WifiConfiguration;
    :catchall_478
    move-exception p0

    :try_start_479
    monitor-exit v2
    :try_end_47a
    .catchall {:try_start_479 .. :try_end_47a} :catchall_478

    throw p0

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #newNetwork:Z
    .restart local v6       #updateFailed:Z
    .restart local v7       #value:Ljava/lang/String;
    .restart local v8       #varName:Ljava/lang/String;
    .local p0, config:Landroid/net/wifi/WifiConfiguration;
    :cond_47b
    move-object v1, v7

    .end local v7           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    goto :goto_401

    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v1           #value:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v8           #varName:Ljava/lang/String;
    :cond_47d
    move v1, v6

    .end local v6           #updateFailed:Z
    .local v1, updateFailed:Z
    goto/16 :goto_4f
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .registers 7
    .parameter "config"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1440
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, key:Ljava/lang/String;
    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    .line 1442
    .end local v0           #key:Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1444
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_22

    .line 1445
    .end local v0           #key:Ljava/lang/String;
    :cond_50
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_6c

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_22

    .line 1448
    .end local v0           #key:Ljava/lang/String;
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_22
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "string"

    .prologue
    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static disableNetwork(I)Z
    .registers 6
    .parameter "netId"

    .prologue
    .line 355
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z

    move-result v1

    .line 356
    .local v1, ret:Z
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 357
    :try_start_7
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 358
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_18

    const/4 v3, 0x1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 359
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1d

    .line 360
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 361
    return v1

    .line 359
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v3
.end method

.method static dump()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1455
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1456
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, LS:Ljava/lang/String;
    const-string/jumbo v4, "sLastPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget v5, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1458
    const-string v4, "Configured networks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1459
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1460
    .local v1, conf:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    .line 1462
    .end local v1           #conf:Landroid/net/wifi/WifiConfiguration;
    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static enableAllNetworks()V
    .registers 7

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, networkEnabledStateChanged:Z
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 171
    :try_start_4
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 172
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_e

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 173
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 174
    const/4 v2, 0x1

    .line 175
    const/4 v4, 0x2

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_e

    .line 181
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2f
    move-exception v4

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v4

    .line 177
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_32
    :try_start_32
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enable network failed on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 181
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_2f

    .line 183
    if-eqz v2, :cond_56

    .line 184
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 185
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 187
    :cond_56
    return-void
.end method

.method static enableNetwork(IZ)Z
    .registers 3
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 331
    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v0

    .line 332
    .local v0, ret:Z
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 333
    return v0
.end method

.method static enableNetworkWithoutBroadcast(IZ)Z
    .registers 7
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 337
    invoke-static {p0, p1}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    move-result v1

    .line 339
    .local v1, ret:Z
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 340
    :try_start_7
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 341
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_18

    const/4 v3, 0x2

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 342
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    .line 344
    if-eqz p1, :cond_1e

    .line 345
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 347
    :cond_1e
    return v1

    .line 342
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method static forgetNetwork(I)V
    .registers 4
    .parameter "netId"

    .prologue
    .line 279
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 280
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 281
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v0

    .line 282
    :try_start_c
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 284
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 285
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 289
    :goto_1c
    return-void

    .line 283
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1

    .line 287
    :cond_20
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public static getConfigFile()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1466
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static getConfiguredNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 157
    :try_start_8
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 158
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 160
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    .line 161
    return-object v2
.end method

.method static getIpConfiguration(I)Landroid/net/DhcpInfoInternal;
    .registers 8
    .parameter "netId"

    .prologue
    .line 442
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 443
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    .line 445
    .local v5, linkProperties:Landroid/net/LinkProperties;
    if-eqz v5, :cond_6f

    .line 446
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 447
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 448
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 449
    .local v4, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 450
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getGateways()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 451
    .local v2, gateways:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 452
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/DhcpInfoInternal;->gateway:Ljava/lang/String;

    .line 454
    :cond_43
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    iput v6, v0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 455
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 456
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 457
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 458
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 462
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #gateways:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_6f
    return-object v0
.end method

.method static getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 5
    .parameter "netId"

    .prologue
    .line 427
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v1

    .line 428
    :try_start_3
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 429
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1b

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v1

    move-object v1, v2

    .line 431
    :goto_1a
    return-object v1

    .line 430
    :cond_1b
    monitor-exit v1

    .line 431
    const/4 v1, 0x0

    goto :goto_1a

    .line 430
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method static getProxyProperties(I)Landroid/net/ProxyProperties;
    .registers 4
    .parameter "netId"

    .prologue
    .line 488
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    .line 489
    .local v0, linkProperties:Landroid/net/LinkProperties;
    if-eqz v0, :cond_10

    .line 490
    new-instance v1, Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    .line 492
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method static initialize(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 144
    const-string v0, "WifiConfigStore"

    const-string v1, "Loading config and enabling all networks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sput-object p0, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    .line 146
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 147
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 148
    return-void
.end method

.method static isUsingStaticIp(I)Z
    .registers 5
    .parameter "netId"

    .prologue
    .line 499
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v1

    .line 500
    :try_start_3
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 501
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1b

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v2, v3, :cond_1b

    .line 502
    const/4 v2, 0x1

    monitor-exit v1

    move v1, v2

    .line 505
    :goto_1a
    return v1

    .line 504
    :cond_1b
    monitor-exit v1

    .line 505
    const/4 v1, 0x0

    goto :goto_1a

    .line 504
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method static loadConfiguredNetworks()V
    .registers 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 515
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, listStr:Ljava/lang/String;
    sput v6, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 518
    sget-object v6, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v6

    .line 519
    :try_start_c
    sget-object v7, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 520
    sget-object v7, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 522
    if-nez v4, :cond_1a

    .line 523
    monitor-exit v6

    .line 556
    :goto_19
    return-void

    .line 525
    :cond_1a
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_21
    array-length v7, v3

    if-ge v2, v7, :cond_96

    .line 528
    aget-object v7, v3, v2

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 530
    .local v5, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_8b

    .line 532
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    :try_start_32
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3a} :catch_79

    .line 536
    :try_start_3a
    array-length v7, v5

    if-le v7, v10, :cond_92

    .line 537
    const/4 v7, 0x3

    aget-object v7, v5, v7

    const-string v8, "[CURRENT]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v11, :cond_7c

    .line 538
    const/4 v7, 0x0

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 546
    :goto_4b
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 547
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sget v8, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-le v7, v8, :cond_58

    .line 548
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    sput v7, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 550
    :cond_58
    sget-object v7, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v7, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 533
    :catch_79
    move-exception v7

    move-object v1, v7

    .line 534
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_76

    .line 539
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_7c
    const/4 v7, 0x3

    aget-object v7, v5, v7

    const-string v8, "[DISABLED]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v11, :cond_8e

    .line 540
    const/4 v7, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_4b

    .line 553
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i:I
    .end local v3           #lines:[Ljava/lang/String;
    .end local v5           #result:[Ljava/lang/String;
    :catchall_8b
    move-exception v7

    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_3a .. :try_end_8d} :catchall_8b

    throw v7

    .line 542
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #i:I
    .restart local v3       #lines:[Ljava/lang/String;
    .restart local v5       #result:[Ljava/lang/String;
    :cond_8e
    const/4 v7, 0x2

    :try_start_8f
    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_4b

    .line 544
    :cond_92
    const/4 v7, 0x2

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_4b

    .line 553
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #result:[Ljava/lang/String;
    :cond_96
    monitor-exit v6
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_8b

    .line 554
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 555
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    goto/16 :goto_19
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 1420
    array-length v1, p1

    .line 1422
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_19

    .line 1425
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v0

    .line 1433
    :goto_15
    return v2

    .line 1424
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1431
    :cond_19
    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to look-up a string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v2, -0x1

    goto :goto_15
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 1400
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1401
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1405
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 1407
    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 1408
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 1412
    :cond_29
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    .line 1413
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1416
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static markAllNetworksDisabled()V
    .registers 1

    .prologue
    .line 582
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 583
    return-void
.end method

.method private static markAllNetworksDisabledExcept(I)V
    .registers 5
    .parameter "netId"

    .prologue
    .line 572
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 573
    :try_start_3
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 574
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_d

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, p0, :cond_d

    .line 575
    const/4 v3, 0x1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_d

    .line 578
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_23
    move-exception v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 579
    return-void
.end method

.method private static readIpAndProxyConfigurations()V
    .registers 13

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 684
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    sget-object v4, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_213
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_12} :catch_21f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_21a

    .line 687
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v3, in:Ljava/io/DataInputStream;
    :try_start_12
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 688
    const-string v0, "WifiConfigStore"

    const-string v1, "Bad version on IP configuration file, ignore read"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_201
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_20} :catch_18c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_1c3

    .line 786
    if-eqz v3, :cond_25

    .line 788
    :try_start_22
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_20e

    :cond_25
    :goto_25
    move-object v0, v3

    .line 792
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_26
    :goto_26
    return-void

    .line 727
    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .restart local v3       #in:Ljava/io/DataInputStream;
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v5, linkProperties:Landroid/net/LinkProperties;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .local v8, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_27
    :try_start_27
    const-string v9, "eos"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_201
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2c} :catch_171
    .catch Ljava/io/EOFException; {:try_start_27 .. :try_end_2c} :catch_18c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_1c3

    move-result v9

    if-eqz v9, :cond_14a

    .line 737
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1f8

    .line 738
    .end local v0           #key:Ljava/lang/String;
    :try_start_32
    sget-object v9, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_201
    .catch Ljava/io/EOFException; {:try_start_32 .. :try_end_35} :catch_18c
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_1c3

    .line 739
    :try_start_35
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    sget-object v10, Landroid/net/wifi/WifiConfigStore;->sNetworkIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #id:I
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 742
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_198

    .line 743
    const-string v0, "WifiConfigStore"

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    const-string v1, "configuration found for missing network, ignored"

    .end local v1           #exclusionList:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    :goto_50
    :pswitch_50
    monitor-exit v9
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_1c0

    .line 693
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    .end local v6           #proxyHost:Ljava/lang/String;
    .end local v7           #proxyPort:I
    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_51
    :goto_51
    const/4 v1, -0x1

    .line 694
    .local v1, id:I
    :try_start_52
    sget-object v2, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 695
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 696
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .line 697
    .restart local v5       #linkProperties:Landroid/net/LinkProperties;
    const/4 v4, 0x0

    .line 698
    .local v4, proxyHost:Ljava/lang/String;
    const/4 v6, -0x1

    .line 699
    .local v6, proxyPort:I
    const/4 v0, 0x0

    .local v0, exclusionList:Ljava/lang/String;
    move-object v8, v7

    .end local v7           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    move v7, v6

    .end local v6           #proxyPort:I
    .local v7, proxyPort:I
    move-object v6, v4

    .end local v4           #proxyHost:Ljava/lang/String;
    .local v6, proxyHost:Ljava/lang/String;
    move-object v4, v2

    .end local v2           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move v2, v1

    .end local v1           #id:I
    .local v2, id:I
    move-object v1, v0

    .line 703
    .end local v0           #exclusionList:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    :goto_64
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_67
    .catchall {:try_start_52 .. :try_end_67} :catchall_201
    .catch Ljava/io/EOFException; {:try_start_52 .. :try_end_67} :catch_18c
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_67} :catch_1c3

    move-result-object v0

    .line 705
    .local v0, key:Ljava/lang/String;
    :try_start_68
    const-string v9, "id"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 706
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .end local v2           #id:I
    .local v0, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v8

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    move-object v12, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .local v12, exclusionList:Ljava/lang/String;
    move v1, v0

    .end local v0           #id:I
    .local v1, id:I
    move-object v0, v12

    .end local v12           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    :goto_7b
    move-object v8, v7

    .end local v7           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    move v7, v6

    .end local v6           #proxyPort:I
    .local v7, proxyPort:I
    move-object v6, v4

    .end local v4           #proxyHost:Ljava/lang/String;
    .local v6, proxyHost:Ljava/lang/String;
    move-object v4, v2

    .end local v2           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move v2, v1

    .end local v1           #id:I
    .local v2, id:I
    move-object v1, v0

    .line 734
    .end local v0           #exclusionList:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    goto :goto_64

    .line 707
    .local v0, key:Ljava/lang/String;
    :cond_82
    const-string v9, "ipAssignment"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 708
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .end local v0           #key:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v0

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v0, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v8

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    move-object v12, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .restart local v12       #exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v0

    .end local v0           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v0, v12

    .end local v12           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    goto :goto_7b

    .line 709
    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_9a
    const-string v9, "linkAddress"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    .line 710
    new-instance v0, Landroid/net/LinkAddress;

    .end local v0           #key:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-direct {v0, v9, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 712
    .local v0, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    move-object v0, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v8

    .line 713
    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    goto :goto_7b

    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_bd
    const-string v9, "gateway"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 714
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .end local v0           #key:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->addGateway(Ljava/net/InetAddress;)V

    move-object v0, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v8

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    goto :goto_7b

    .line 716
    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_d7
    const-string v9, "dns"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f1

    .line 717
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .end local v0           #key:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    move-object v0, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v8

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    goto :goto_7b

    .line 719
    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_f1
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10b

    .line 720
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .end local v0           #key:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v0

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v0, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    move-object v12, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .restart local v12       #exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v0

    .end local v0           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    move-object v0, v12

    .end local v12           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    goto/16 :goto_7b

    .line 721
    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_10b
    const-string/jumbo v9, "proxyHost"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_121

    .line 722
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v0, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v8

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    move-object v12, v0

    .end local v0           #proxyHost:Ljava/lang/String;
    .local v12, proxyHost:Ljava/lang/String;
    move-object v0, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v12

    .end local v12           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    goto/16 :goto_7b

    .line 723
    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_121
    const-string/jumbo v9, "proxyPort"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_137

    .line 724
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .end local v7           #proxyPort:I
    .local v0, proxyPort:I
    move-object v7, v8

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    move v12, v0

    .end local v0           #proxyPort:I
    .local v12, proxyPort:I
    move-object v0, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v12

    .end local v12           #proxyPort:I
    .local v6, proxyPort:I
    goto/16 :goto_7b

    .line 725
    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_137
    const-string v9, "exclusionList"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 726
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .end local v1           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v8

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    goto/16 :goto_7b

    .line 730
    .local v0, key:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_14a
    const-string v9, "WifiConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore unknown key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #key:Ljava/lang/String;
    const-string/jumbo v10, "while reading"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catchall {:try_start_68 .. :try_end_169} :catchall_201
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_169} :catch_171
    .catch Ljava/io/EOFException; {:try_start_68 .. :try_end_169} :catch_18c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_169} :catch_1c3

    move-object v0, v1

    .end local v1           #exclusionList:Ljava/lang/String;
    .local v0, exclusionList:Ljava/lang/String;
    move v1, v2

    .end local v2           #id:I
    .local v1, id:I
    move-object v2, v4

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v2, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    move-object v4, v6

    .end local v6           #proxyHost:Ljava/lang/String;
    .local v4, proxyHost:Ljava/lang/String;
    move v6, v7

    .end local v7           #proxyPort:I
    .local v6, proxyPort:I
    move-object v7, v8

    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .local v7, proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    goto/16 :goto_7b

    .line 732
    .end local v0           #exclusionList:Ljava/lang/String;
    .local v1, exclusionList:Ljava/lang/String;
    .local v2, id:I
    .local v4, ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v6, proxyHost:Ljava/lang/String;
    .local v7, proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :catch_171
    move-exception v0

    .line 733
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_172
    const-string v9, "WifiConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore invalid address while reading"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18a
    .catchall {:try_start_172 .. :try_end_18a} :catchall_201
    .catch Ljava/io/EOFException; {:try_start_172 .. :try_end_18a} :catch_18c
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_18a} :catch_1c3

    goto/16 :goto_64

    .line 782
    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #id:I
    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    .end local v6           #proxyHost:Ljava/lang/String;
    .end local v7           #proxyPort:I
    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :catch_18c
    move-exception v0

    move-object v0, v3

    .line 786
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v0, in:Ljava/io/DataInputStream;
    :goto_18e
    if-eqz v0, :cond_26

    .line 788
    :try_start_190
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_195

    goto/16 :goto_26

    .line 789
    :catch_195
    move-exception v1

    goto/16 :goto_26

    .line 745
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v4       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v5       #linkProperties:Landroid/net/LinkProperties;
    .restart local v6       #proxyHost:Ljava/lang/String;
    .restart local v7       #proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_198
    :try_start_198
    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 746
    sget-object v2, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v10

    aget v2, v2, v10

    packed-switch v2, :pswitch_data_226

    .line 755
    const-string v2, "WifiConfigStore"

    const-string v4, "Ignore invalid ip assignment while reading"

    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :goto_1ac
    :pswitch_1ac
    sget-object v2, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_230

    .line 773
    const-string v0, "WifiConfigStore"

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    const-string v1, "Ignore invalid proxy settings while reading"

    .end local v1           #exclusionList:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 777
    :catchall_1c0
    move-exception v0

    monitor-exit v9
    :try_end_1c2
    .catchall {:try_start_198 .. :try_end_1c2} :catchall_1c0

    :try_start_1c2
    throw v0
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_201
    .catch Ljava/io/EOFException; {:try_start_1c2 .. :try_end_1c3} :catch_18c
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c3} :catch_1c3

    .line 783
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    .end local v6           #proxyHost:Ljava/lang/String;
    .end local v7           #proxyPort:I
    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :catch_1c3
    move-exception v0

    move-object v1, v3

    .line 784
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v0, e:Ljava/io/IOException;
    .local v1, in:Ljava/io/DataInputStream;
    :goto_1c5
    :try_start_1c5
    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dd
    .catchall {:try_start_1c5 .. :try_end_1dd} :catchall_215

    .line 786
    if-eqz v1, :cond_222

    .line 788
    :try_start_1df
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e2} :catch_20a

    move-object v0, v1

    .line 789
    .end local v1           #in:Ljava/io/DataInputStream;
    .local v0, in:Ljava/io/DataInputStream;
    goto/16 :goto_26

    .line 749
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    .local v1, exclusionList:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v4       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v5       #linkProperties:Landroid/net/LinkProperties;
    .restart local v6       #proxyHost:Ljava/lang/String;
    .restart local v7       #proxyPort:I
    .restart local v8       #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :pswitch_1e5
    :try_start_1e5
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_1ac

    .line 761
    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    :pswitch_1e8
    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 762
    new-instance v0, Landroid/net/ProxyProperties;

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v0, v6, v7, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 764
    .local v0, proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_50

    .line 767
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_1f4
    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :try_end_1f6
    .catchall {:try_start_1e5 .. :try_end_1f6} :catchall_1c0

    goto/16 :goto_50

    .line 779
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #id:I
    .restart local v4       #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    :cond_1f8
    :try_start_1f8
    const-string v0, "WifiConfigStore"

    const-string v1, "Missing id while parsing configuration"

    .end local v1           #exclusionList:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ff
    .catchall {:try_start_1f8 .. :try_end_1ff} :catchall_201
    .catch Ljava/io/EOFException; {:try_start_1f8 .. :try_end_1ff} :catch_18c
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_1ff} :catch_1c3

    goto/16 :goto_51

    .line 786
    .end local v2           #id:I
    .end local v4           #ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    .end local v6           #proxyHost:Ljava/lang/String;
    .end local v7           #proxyPort:I
    .end local v8           #proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :catchall_201
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .local v0, in:Ljava/io/DataInputStream;
    :goto_204
    if-eqz v0, :cond_209

    .line 788
    :try_start_206
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_209} :catch_211

    .line 789
    .end local v0           #in:Ljava/io/DataInputStream;
    :cond_209
    :goto_209
    throw v1

    .local v1, in:Ljava/io/DataInputStream;
    :catch_20a
    move-exception v0

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto/16 :goto_26

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_20e
    move-exception v0

    goto/16 :goto_25

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :catch_211
    move-exception v0

    goto :goto_209

    .line 786
    :catchall_213
    move-exception v1

    goto :goto_204

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_215
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    move-object v1, v12

    goto :goto_204

    .line 783
    :catch_21a
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    move-object v0, v12

    goto :goto_1c5

    .line 782
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :catch_21f
    move-exception v1

    goto/16 :goto_18e

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_222
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto/16 :goto_26

    .line 746
    nop

    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_1e5
        :pswitch_1e5
        :pswitch_1ac
    .end packed-switch

    .line 759
    :pswitch_data_230
    .packed-switch 0x1
        :pswitch_1e8
        :pswitch_1f4
        :pswitch_50
    .end packed-switch
.end method

.method private static readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .registers 15
    .parameter "config"

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 1199
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1200
    .local v6, netId:I
    if-gez v6, :cond_8

    .line 1388
    :cond_7
    :goto_7
    return-void

    .line 1210
    :cond_8
    const-string/jumbo v10, "ssid"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1211
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_80

    .line 1212
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1217
    :goto_17
    const-string v10, "bssid"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1218
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_83

    .line 1219
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1224
    :goto_25
    const-string/jumbo v10, "priority"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1225
    iput v12, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1226
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3a

    .line 1228
    :try_start_34
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3a} :catch_282

    .line 1233
    :cond_3a
    :goto_3a
    const-string/jumbo v10, "scan_ssid"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1234
    iput-boolean v11, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1235
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 1237
    :try_start_49
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_86

    const/4 v10, 0x1

    :goto_50
    iput-boolean v10, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_52} :catch_27f

    .line 1242
    :cond_52
    :goto_52
    const-string/jumbo v10, "wep_tx_keyidx"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1243
    iput v12, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1244
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_67

    .line 1246
    :try_start_61
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_67} :catch_27c

    .line 1251
    :cond_67
    :goto_67
    const/4 v2, 0x0

    .local v2, i:I
    :goto_68
    const/4 v10, 0x4

    if-ge v2, v10, :cond_8d

    .line 1252
    sget-object v10, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1254
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_88

    .line 1255
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v10, v2

    .line 1251
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 1214
    .end local v2           #i:I
    :cond_80
    iput-object v13, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_17

    .line 1221
    :cond_83
    iput-object v13, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_25

    :cond_86
    move v10, v11

    .line 1237
    goto :goto_50

    .line 1257
    .restart local v2       #i:I
    :cond_88
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v13, v10, v2

    goto :goto_7d

    .line 1261
    :cond_8d
    const-string/jumbo v10, "psk"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1262
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c8

    .line 1263
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1268
    :goto_9c
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v11, "proto"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1270
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_cb

    .line 1271
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1272
    .local v8, vals:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b4
    if-ge v3, v5, :cond_cb

    aget-object v7, v0, v3

    .line 1273
    .local v7, val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1275
    .local v4, index:I
    if-ltz v4, :cond_c5

    .line 1276
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1272
    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    .line 1265
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_c8
    iput-object v13, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9c

    .line 1281
    :cond_cb
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "key_mgmt"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1283
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f6

    .line 1284
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1285
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_e2
    if-ge v3, v5, :cond_f6

    aget-object v7, v0, v3

    .line 1286
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1288
    .restart local v4       #index:I
    if-ltz v4, :cond_f3

    .line 1289
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1285
    :cond_f3
    add-int/lit8 v3, v3, 0x1

    goto :goto_e2

    .line 1294
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_f6
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "auth_alg"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1296
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_121

    .line 1297
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1298
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_10d
    if-ge v3, v5, :cond_121

    aget-object v7, v0, v3

    .line 1299
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1301
    .restart local v4       #index:I
    if-ltz v4, :cond_11e

    .line 1302
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1298
    :cond_11e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10d

    .line 1307
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_121
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "pairwise"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1309
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14c

    .line 1310
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1311
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_138
    if-ge v3, v5, :cond_14c

    aget-object v7, v0, v3

    .line 1312
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1314
    .restart local v4       #index:I
    if-ltz v4, :cond_149

    .line 1315
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1311
    :cond_149
    add-int/lit8 v3, v3, 0x1

    goto :goto_138

    .line 1320
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_14c
    iget v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "group"

    invoke-static {v10, v11}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1322
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_177

    .line 1323
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1324
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_163
    if-ge v3, v5, :cond_177

    aget-object v7, v0, v3

    .line 1325
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1327
    .restart local v4       #index:I
    if-ltz v4, :cond_174

    .line 1328
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1324
    :cond_174
    add-int/lit8 v3, v3, 0x1

    goto :goto_163

    .line 1334
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_177
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_17b
    if-ge v3, v5, :cond_19b

    aget-object v1, v0, v3

    .line 1335
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1337
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_198

    .line 1338
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v10, :cond_195

    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1339
    :cond_195
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1334
    :cond_198
    add-int/lit8 v3, v3, 0x1

    goto :goto_17b

    .line 1344
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_19b
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_1da

    .line 1345
    const-string/jumbo v10, "psk_key_type"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1346
    iput v12, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 1347
    sget-boolean v10, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v10, :cond_1c9

    .line 1348
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_PSK key type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_1c9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1352
    :try_start_1cf
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I
    :try_end_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_1cf .. :try_end_1d5} :catch_1d7

    goto/16 :goto_7

    .line 1353
    :catch_1d7
    move-exception v10

    goto/16 :goto_7

    .line 1356
    :cond_1da
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1357
    const-string v10, "cert_index"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1358
    iput v12, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 1359
    sget-boolean v10, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v10, :cond_207

    .line 1360
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_207
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_213

    .line 1364
    :try_start_20d
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I
    :try_end_213
    .catch Ljava/lang/NumberFormatException; {:try_start_20d .. :try_end_213} :catch_27a

    .line 1368
    :cond_213
    :goto_213
    const-string/jumbo v10, "wapi_as_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1369
    sget-boolean v10, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v10, :cond_236

    .line 1370
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT as cert "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_236
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_273

    .line 1373
    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1377
    :goto_242
    const-string/jumbo v10, "wapi_user_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1378
    sget-boolean v10, Landroid/net/wifi/WifiConfigStore;->DBG:Z

    if-eqz v10, :cond_265

    .line 1379
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT user cert "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_265
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_276

    .line 1382
    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_7

    .line 1375
    :cond_273
    iput-object v13, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto :goto_242

    .line 1384
    :cond_276
    iput-object v13, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_7

    .line 1365
    :catch_27a
    move-exception v10

    goto :goto_213

    .line 1247
    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_27c
    move-exception v10

    goto/16 :goto_67

    .line 1238
    :catch_27f
    move-exception v10

    goto/16 :goto_52

    .line 1229
    :catch_282
    move-exception v10

    goto/16 :goto_3a
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "string"

    .prologue
    const/4 v2, 0x1

    .line 1391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_b

    const-string v0, ""

    .line 1392
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static removeNetwork(I)Z
    .registers 5
    .parameter "netId"

    .prologue
    .line 314
    invoke-static {p0}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v0

    .line 315
    .local v0, ret:Z
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v1

    .line 316
    if-eqz v0, :cond_12

    :try_start_9
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 318
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 319
    return v0

    .line 317
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2
.end method

.method static saveConfig()Z
    .registers 1

    .prologue
    .line 368
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    move-result v0

    return v0
.end method

.method static saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 7
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 258
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v4, :cond_31

    const/4 v3, 0x1

    move v1, v3

    .line 259
    .local v1, newNetwork:Z
    :goto_8
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 260
    .local v2, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 262
    .local v0, netId:I
    if-eqz v1, :cond_2a

    if-eq v0, v4, :cond_2a

    .line 263
    invoke-static {v0, v5}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z

    .line 264
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v3

    .line 265
    :try_start_1a
    sget-object v4, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x2

    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 266
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_33

    .line 268
    :cond_2a
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 269
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 270
    return-object v2

    .end local v0           #netId:I
    .end local v1           #newNetwork:Z
    .end local v2           #result:Landroid/net/wifi/NetworkUpdateResult;
    .restart local p0
    :cond_31
    move v1, v5

    .line 258
    goto :goto_8

    .line 266
    .end local p0
    .restart local v0       #netId:I
    .restart local v1       #newNetwork:Z
    .restart local v2       #result:Landroid/net/wifi/NetworkUpdateResult;
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v4
.end method

.method static selectNetwork(I)V
    .registers 7
    .parameter "netId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 225
    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    if-eq v2, v4, :cond_d

    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    const v3, 0xf4240

    if-le v2, v3, :cond_37

    .line 226
    :cond_d
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 227
    :try_start_10
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 228
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v4, :cond_1a

    .line 229
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 230
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_1a

    .line 233
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_31
    move-exception v3

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_31

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_34
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_31

    .line 234
    sput v5, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    .line 238
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_37
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 239
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 240
    sget v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/net/wifi/WifiConfigStore;->sLastPriority:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 242
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    .line 243
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    .line 246
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 250
    return-void
.end method

.method static selectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 6
    .parameter "config"

    .prologue
    .line 201
    if-eqz p0, :cond_10

    .line 202
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v1

    .line 203
    .local v1, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v1}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 204
    .local v0, netId:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    .line 205
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)V

    .line 210
    .end local v0           #netId:I
    .end local v1           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_10
    :goto_10
    return-void

    .line 207
    .restart local v0       #netId:I
    .restart local v1       #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_11
    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private static sendConfiguredNetworksChangedBroadcast()V
    .registers 2

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    return-void
.end method

.method static setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V
    .registers 7
    .parameter "netId"
    .parameter "dhcpInfo"

    .prologue
    .line 469
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 471
    .local v1, linkProperties:Landroid/net/LinkProperties;
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 472
    :try_start_7
    sget-object v3, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 473
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_24

    .line 475
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v3, :cond_22

    .line 476
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 478
    :cond_22
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 480
    :cond_24
    monitor-exit v2

    .line 481
    return-void

    .line 480
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v3
.end method

.method static startWpsPbc(Landroid/net/wifi/WpsConfiguration;)Landroid/net/wifi/WpsResult;
    .registers 4
    .parameter "config"

    .prologue
    .line 411
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 412
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->startWpsPbcCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 414
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 415
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 420
    :goto_14
    return-object v0

    .line 417
    :cond_15
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS push button configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_14
.end method

.method static startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsConfiguration;)Landroid/net/wifi/WpsResult;
    .registers 4
    .parameter "config"

    .prologue
    .line 376
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 377
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsConfiguration;->BSSID:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WpsConfiguration;->pin:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsWithPinFromAccessPointCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 379
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 380
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 385
    :goto_16
    return-object v0

    .line 382
    :cond_17
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS pin method configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_16
.end method

.method static startWpsWithPinFromDevice(Landroid/net/wifi/WpsConfiguration;)Landroid/net/wifi/WpsResult;
    .registers 4
    .parameter "config"

    .prologue
    .line 394
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 395
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WpsConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->startWpsWithPinFromDeviceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 397
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 398
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 399
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 404
    :goto_1c
    return-object v0

    .line 401
    :cond_1d
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS pin method configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_1c
.end method

.method static updateIpAndProxyFromWpsConfig(ILandroid/net/wifi/WpsConfiguration;)V
    .registers 6
    .parameter "netId"
    .parameter "wpsConfig"

    .prologue
    .line 559
    sget-object v1, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v1

    .line 560
    :try_start_3
    sget-object v2, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 561
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_20

    .line 562
    iget-object v2, p1, Landroid/net/wifi/WpsConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 563
    iget-object v2, p1, Landroid/net/wifi/WpsConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 564
    iget-object v2, p1, Landroid/net/wifi/WpsConfiguration;->linkProperties:Landroid/net/LinkProperties;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 565
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 567
    :cond_20
    monitor-exit v1

    .line 568
    return-void

    .line 567
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private static writeIpAndProxyConfigurations()V
    .registers 10

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 589
    .local v0, out:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_199
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_1ab

    .line 592
    .end local v0           #out:Ljava/io/DataOutputStream;
    .local v5, out:Ljava/io/DataOutputStream;
    const/4 v0, 0x1

    :try_start_13
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 594
    sget-object v7, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_73

    .line 595
    :try_start_19
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->sConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_70

    .line 596
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v6, 0x0

    .line 599
    .local v6, writeToFile:Z
    :try_start_30
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 600
    .local v4, linkProperties:Landroid/net/LinkProperties;
    sget-object v1, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1be

    .line 628
    const-string v1, "WifiConfigStore"

    const-string v3, "Ignore invalid ip assignment while writing"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_46
    :pswitch_46
    sget-object v1, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1c8

    .line 655
    const-string v1, "WifiConfigStore"

    const-string v3, "Ignore invalid proxy settings while writing"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_70
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_5a} :catch_bd

    move v1, v6

    .line 658
    .end local v4           #linkProperties:Landroid/net/LinkProperties;
    .end local v6           #writeToFile:Z
    .local v1, writeToFile:Z
    :goto_5b
    if-eqz v1, :cond_69

    .line 659
    :try_start_5d
    const-string v3, "id"

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 660
    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_70
    .catch Ljava/lang/NullPointerException; {:try_start_5d .. :try_end_69} :catch_1b1

    :cond_69
    move v0, v1

    .line 665
    .end local v1           #writeToFile:Z
    .local v0, writeToFile:Z
    :goto_6a
    :try_start_6a
    const-string v0, "eos"

    .end local v0           #writeToFile:Z
    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_23

    .line 667
    :catchall_70
    move-exception v0

    monitor-exit v7
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_70

    :try_start_72
    throw v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_1a2
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_73} :catch_73

    .line 669
    :catch_73
    move-exception v0

    move-object v1, v5

    .line 670
    .end local v5           #out:Ljava/io/DataOutputStream;
    .local v0, e:Ljava/io/IOException;
    .local v1, out:Ljava/io/DataOutputStream;
    :goto_75
    :try_start_75
    const-string v0, "WifiConfigStore"

    .end local v0           #e:Ljava/io/IOException;
    const-string v2, "Error writing data file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_1a6

    .line 672
    if-eqz v1, :cond_1b7

    .line 674
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_195

    move-object v0, v1

    .line 678
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v0, out:Ljava/io/DataOutputStream;
    :goto_82
    return-void

    .line 602
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #linkProperties:Landroid/net/LinkProperties;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    .restart local v6       #writeToFile:Z
    :pswitch_83
    :try_start_83
    const-string v1, "ipAssignment"

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 603
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_df

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 605
    .local v3, linkAddr:Landroid/net/LinkAddress;
    const-string v8, "linkAddress"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    .end local v3           #linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_bc
    .catchall {:try_start_83 .. :try_end_bc} :catchall_70
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_bc} :catch_bd

    goto :goto_99

    .line 662
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #linkProperties:Landroid/net/LinkProperties;
    :catch_bd
    move-exception v1

    move v3, v6

    .line 663
    .end local v6           #writeToFile:Z
    .local v1, e:Ljava/lang/NullPointerException;
    .local v3, writeToFile:Z
    :goto_bf
    :try_start_bf
    const-string v4, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure in writing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_bf .. :try_end_dd} :catchall_70

    move v0, v3

    .end local v3           #writeToFile:Z
    .local v0, writeToFile:Z
    goto :goto_6a

    .line 609
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    .local v1, i$:Ljava/util/Iterator;
    .restart local v4       #linkProperties:Landroid/net/LinkProperties;
    .restart local v6       #writeToFile:Z
    :cond_df
    :try_start_df
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getGateways()Ljava/util/Collection;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 610
    .local v1, gateway:Ljava/net/InetAddress;
    const-string v8, "gateway"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .end local v1           #gateway:Ljava/net/InetAddress;
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_e7

    .line 613
    :cond_100
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3           #i$:Ljava/util/Iterator;
    .local v1, i$:Ljava/util/Iterator;
    :goto_108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_121

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 614
    .local v3, inetAddr:Ljava/net/InetAddress;
    const-string v8, "dns"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .end local v3           #inetAddr:Ljava/net/InetAddress;
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_108

    .line 617
    :cond_121
    const/4 v1, 0x1

    .end local v6           #writeToFile:Z
    .local v1, writeToFile:Z
    move v6, v1

    .line 618
    .end local v1           #writeToFile:Z
    .restart local v6       #writeToFile:Z
    goto/16 :goto_46

    .line 620
    :pswitch_125
    const-string v1, "ipAssignment"

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 621
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 622
    const/4 v1, 0x1

    .end local v6           #writeToFile:Z
    .restart local v1       #writeToFile:Z
    move v6, v1

    .line 623
    .end local v1           #writeToFile:Z
    .restart local v6       #writeToFile:Z
    goto/16 :goto_46

    .line 634
    :pswitch_137
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v3

    .line 635
    .local v3, proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v3}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, exclusionList:Ljava/lang/String;
    const-string/jumbo v4, "proxySettings"

    .end local v4           #linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 637
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 638
    const-string/jumbo v4, "proxyHost"

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v3}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 640
    const-string/jumbo v4, "proxyPort"

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v3}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    .end local v3           #proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 642
    const-string v3, "exclusionList"

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 644
    const/4 v1, 0x1

    .line 645
    .end local v6           #writeToFile:Z
    .local v1, writeToFile:Z
    goto/16 :goto_5b

    .line 647
    .end local v1           #writeToFile:Z
    .restart local v4       #linkProperties:Landroid/net/LinkProperties;
    .restart local v6       #writeToFile:Z
    :pswitch_173
    const-string/jumbo v1, "proxySettings"

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 648
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_182
    .catchall {:try_start_df .. :try_end_182} :catchall_70
    .catch Ljava/lang/NullPointerException; {:try_start_df .. :try_end_182} :catch_bd

    .line 649
    const/4 v1, 0x1

    .line 650
    .end local v6           #writeToFile:Z
    .restart local v1       #writeToFile:Z
    goto/16 :goto_5b

    .end local v1           #writeToFile:Z
    .restart local v6       #writeToFile:Z
    :pswitch_185
    move v1, v6

    .line 653
    .end local v6           #writeToFile:Z
    .restart local v1       #writeToFile:Z
    goto/16 :goto_5b

    .line 667
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #writeToFile:Z
    .end local v4           #linkProperties:Landroid/net/LinkProperties;
    :cond_188
    :try_start_188
    monitor-exit v7
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_70

    .line 672
    if-eqz v5, :cond_1ba

    .line 674
    :try_start_18b
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_18e} :catch_191

    move-object v0, v5

    .line 675
    .end local v5           #out:Ljava/io/DataOutputStream;
    .local v0, out:Ljava/io/DataOutputStream;
    goto/16 :goto_82

    .end local v0           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :catch_191
    move-exception v0

    move-object v0, v5

    .end local v5           #out:Ljava/io/DataOutputStream;
    .restart local v0       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_82

    .end local v0           #out:Ljava/io/DataOutputStream;
    .local v1, out:Ljava/io/DataOutputStream;
    :catch_195
    move-exception v0

    move-object v0, v1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v0       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_82

    .line 672
    :catchall_199
    move-exception v1

    :goto_19a
    if-eqz v0, :cond_19f

    .line 674
    :try_start_19c
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19f} :catch_1a0

    .line 675
    .end local v0           #out:Ljava/io/DataOutputStream;
    :cond_19f
    :goto_19f
    throw v1

    .restart local v0       #out:Ljava/io/DataOutputStream;
    :catch_1a0
    move-exception v0

    goto :goto_19f

    .line 672
    .end local v0           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :catchall_1a2
    move-exception v0

    move-object v1, v0

    move-object v0, v5

    .end local v5           #out:Ljava/io/DataOutputStream;
    .restart local v0       #out:Ljava/io/DataOutputStream;
    goto :goto_19a

    .end local v0           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :catchall_1a6
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v0       #out:Ljava/io/DataOutputStream;
    move-object v1, v9

    goto :goto_19a

    .line 669
    :catch_1ab
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    .end local v0           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    move-object v0, v9

    goto/16 :goto_75

    .line 662
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    .local v1, writeToFile:Z
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :catch_1b1
    move-exception v3

    move-object v9, v3

    move v3, v1

    .end local v1           #writeToFile:Z
    .local v3, writeToFile:Z
    move-object v1, v9

    goto/16 :goto_bf

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #writeToFile:Z
    .end local v5           #out:Ljava/io/DataOutputStream;
    .local v1, out:Ljava/io/DataOutputStream;
    :cond_1b7
    move-object v0, v1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v0, out:Ljava/io/DataOutputStream;
    goto/16 :goto_82

    .end local v0           #out:Ljava/io/DataOutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    :cond_1ba
    move-object v0, v5

    .end local v5           #out:Ljava/io/DataOutputStream;
    .restart local v0       #out:Ljava/io/DataOutputStream;
    goto/16 :goto_82

    .line 600
    nop

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_83
        :pswitch_125
        :pswitch_46
    .end packed-switch

    .line 632
    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_137
        :pswitch_173
        :pswitch_185
    .end packed-switch
.end method

.method private static writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .registers 13
    .parameter "currentConfig"
    .parameter "newConfig"

    .prologue
    .line 1081
    const/4 v3, 0x0

    .line 1082
    .local v3, ipChanged:Z
    const/4 v8, 0x0

    .line 1083
    .local v8, proxyChanged:Z
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    .line 1085
    .local v4, linkProperties:Landroid/net/LinkProperties;
    sget-object v0, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_17a

    .line 1121
    const-string v0, "WifiConfigStore"

    const-string v1, "Ignore invalid ip assignment during write"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    move v1, v3

    .line 1125
    .end local v3           #ipChanged:Z
    .local v1, ipChanged:Z
    :goto_1c
    sget-object v0, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_184

    .line 1145
    const-string v0, "WifiConfigStore"

    const-string v2, "Ignore invalid proxy configuration during write"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move v0, v8

    .line 1149
    .end local v8           #proxyChanged:Z
    :goto_31
    if-nez v1, :cond_f9

    .line 1150
    invoke-static {v4, p0}, Landroid/net/wifi/WifiConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V

    .line 1159
    :goto_36
    if-nez v0, :cond_12a

    .line 1160
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .end local p1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1170
    :cond_41
    :goto_41
    if-nez v1, :cond_45

    if-eqz v0, :cond_4d

    .line 1171
    :cond_45
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1172
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1173
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1175
    :cond_4d
    new-instance p0, Landroid/net/wifi/NetworkUpdateResult;

    .end local p0
    invoke-direct {p0, v1, v0}, Landroid/net/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object p0

    .line 1087
    .end local v1           #ipChanged:Z
    .restart local v3       #ipChanged:Z
    .restart local v8       #proxyChanged:Z
    .restart local p0
    .restart local p1
    :pswitch_53
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v2

    .line 1089
    .local v2, currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    .line 1091
    .local v7, newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    .line 1092
    .local v0, currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v5

    .line 1093
    .local v5, newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getGateways()Ljava/util/Collection;

    move-result-object v1

    .line 1095
    .local v1, currentGateways:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getGateways()Ljava/util/Collection;

    move-result-object v6

    .line 1097
    .local v6, newGateways:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v10

    if-ne v9, v10, :cond_87

    invoke-interface {v2, v7}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    .end local v2           #currentLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    if-nez v2, :cond_ba

    :cond_87
    const/4 v2, 0x1

    .line 1100
    .local v2, linkAddressesDiffer:Z
    :goto_88
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v7

    .end local v7           #newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v9

    if-ne v7, v9, :cond_98

    invoke-interface {v0, v5}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .end local v0           #currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-nez v0, :cond_bc

    :cond_98
    const/4 v0, 0x1

    .line 1102
    .local v0, dnsesDiffer:Z
    :goto_99
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    .end local v5           #newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    if-ne v5, v7, :cond_a9

    invoke-interface {v1, v6}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    .end local v1           #currentGateways:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-nez v1, :cond_be

    :cond_a9
    const/4 v1, 0x1

    .line 1105
    .local v1, gatewaysDiffer:Z
    :goto_aa
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .end local v6           #newGateways:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-ne v5, v6, :cond_b6

    if-nez v2, :cond_b6

    if-nez v0, :cond_b6

    if-eqz v1, :cond_1b

    .line 1109
    :cond_b6
    const/4 v0, 0x1

    .end local v3           #ipChanged:Z
    .local v0, ipChanged:Z
    move v1, v0

    .end local v0           #ipChanged:Z
    .local v1, ipChanged:Z
    goto/16 :goto_1c

    .line 1097
    .end local v2           #linkAddressesDiffer:Z
    .local v0, currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .local v1, currentGateways:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v3       #ipChanged:Z
    .restart local v5       #newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v6       #newGateways:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v7       #newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_ba
    const/4 v2, 0x0

    goto :goto_88

    .line 1100
    .end local v0           #currentDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v7           #newLinkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .restart local v2       #linkAddressesDiffer:Z
    :cond_bc
    const/4 v0, 0x0

    goto :goto_99

    .line 1102
    .end local v1           #currentGateways:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v5           #newDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .local v0, dnsesDiffer:Z
    :cond_be
    const/4 v1, 0x0

    goto :goto_aa

    .line 1113
    .end local v0           #dnsesDiffer:Z
    .end local v2           #linkAddressesDiffer:Z
    .end local v6           #newGateways:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :pswitch_c0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-eq v0, v1, :cond_1b

    .line 1114
    const/4 v0, 0x1

    .end local v3           #ipChanged:Z
    .local v0, ipChanged:Z
    move v1, v0

    .end local v0           #ipChanged:Z
    .local v1, ipChanged:Z
    goto/16 :goto_1c

    .end local v1           #ipChanged:Z
    .restart local v3       #ipChanged:Z
    :pswitch_ca
    move v1, v3

    .line 1119
    .end local v3           #ipChanged:Z
    .restart local v1       #ipChanged:Z
    goto/16 :goto_1c

    .line 1127
    :pswitch_cd
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    .line 1128
    .local v2, newHttpProxy:Landroid/net/ProxyProperties;
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1130
    .local v0, currentHttpProxy:Landroid/net/ProxyProperties;
    if-eqz v2, :cond_e6

    .line 1131
    invoke-virtual {v2, v0}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #currentHttpProxy:Landroid/net/ProxyProperties;
    if-nez v0, :cond_e4

    const/4 v0, 0x1

    .end local v8           #proxyChanged:Z
    .local v0, proxyChanged:Z
    :goto_e2
    goto/16 :goto_31

    .end local v0           #proxyChanged:Z
    .restart local v8       #proxyChanged:Z
    :cond_e4
    const/4 v0, 0x0

    goto :goto_e2

    .line 1133
    .local v0, currentHttpProxy:Landroid/net/ProxyProperties;
    :cond_e6
    if-eqz v0, :cond_eb

    const/4 v0, 0x1

    .line 1135
    .end local v8           #proxyChanged:Z
    .local v0, proxyChanged:Z
    :goto_e9
    goto/16 :goto_31

    .line 1133
    .local v0, currentHttpProxy:Landroid/net/ProxyProperties;
    .restart local v8       #proxyChanged:Z
    :cond_eb
    const/4 v0, 0x0

    goto :goto_e9

    .line 1137
    .end local v0           #currentHttpProxy:Landroid/net/ProxyProperties;
    .end local v2           #newHttpProxy:Landroid/net/ProxyProperties;
    :pswitch_ed
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-eq v0, v2, :cond_30

    .line 1138
    const/4 v0, 0x1

    .end local v8           #proxyChanged:Z
    .local v0, proxyChanged:Z
    goto/16 :goto_31

    .end local v0           #proxyChanged:Z
    .restart local v8       #proxyChanged:Z
    :pswitch_f6
    move v0, v8

    .line 1143
    .local v0, proxyChanged:I
    goto/16 :goto_31

    .line 1152
    .end local v0           #proxyChanged:I
    .end local v8           #proxyChanged:Z
    :cond_f9
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1153
    invoke-static {v4, p1}, Landroid/net/wifi/WifiConfigStore;->addIpSettingsFromConfig(Landroid/net/LinkProperties;Landroid/net/wifi/WifiConfiguration;)V

    .line 1154
    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP config changed SSID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " linkProperties: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 1162
    :cond_12a
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1163
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .end local p1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1164
    const-string p1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proxy changed SSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 1166
    const-string p1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " proxyProperties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 1085
    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_c0
        :pswitch_ca
    .end packed-switch

    .line 1125
    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_ed
        :pswitch_f6
    .end packed-switch
.end method
