.class public Lcom/android/server/connectivity/Tethering;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$1;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.42.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.42.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.43.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.43.254"

.field private static final DHCP_DEFAULT_RANGE3_START:Ljava/lang/String; = "192.168.44.2"

.field private static final DHCP_DEFAULT_RANGE3_STOP:Ljava/lang/String; = "192.168.44.254"

.field private static final DHCP_DEFAULT_RANGE4_START:Ljava/lang/String; = "192.168.45.2"

.field private static final DHCP_DEFAULT_RANGE4_STOP:Ljava/lang/String; = "192.168.45.254"

.field private static final DHCP_DEFAULT_RANGE5_START:Ljava/lang/String; = "192.168.46.2"

.field private static final DHCP_DEFAULT_RANGE5_STOP:Ljava/lang/String; = "192.168.46.254"

.field private static final DHCP_DEFAULT_RANGE6_START:Ljava/lang/String; = "192.168.47.2"

.field private static final DHCP_DEFAULT_RANGE6_STOP:Ljava/lang/String; = "192.168.47.254"

.field private static final DHCP_DEFAULT_RANGE7_START:Ljava/lang/String; = "192.168.48.2"

.field private static final DHCP_DEFAULT_RANGE7_STOP:Ljava/lang/String; = "192.168.48.254"

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18


# instance fields
.field private mBooted:Z

.field private mContext:Landroid/content/Context;

.field private mDeferedUsbConnection:Z

.field private mDhcpRange:[Ljava/lang/String;

.field private mDnsServers:[Ljava/lang/String;

.field private mDunRequired:Z

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotification:Landroid/app/Notification;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpstreamIfaceRegexs:[Ljava/lang/String;

.field private mUsbConnected:Z

.field private mUsbMassStorageOff:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 13
    .parameter "context"
    .parameter "looper"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 134
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 76
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    .line 78
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mDeferedUsbConnection:Z

    .line 135
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 139
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 140
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 142
    .local v3, service:Landroid/os/INetworkManagementService;
    :try_start_18
    invoke-interface {v3, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_160

    .line 147
    :goto_1b
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 150
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "Tethering"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    .line 151
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 152
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 153
    new-instance v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v5, "TetherMaster"

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;

    .line 154
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;

    invoke-virtual {v4}, Lcom/android/internal/util/HierarchicalStateMachine;->start()V

    .line 156
    new-instance v4, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17b

    move v4, v8

    :goto_93
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbMassStorageOff:Z

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 174
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_ae

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v4, v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v8, :cond_119

    .line 175
    :cond_ae
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const-string v5, "192.168.42.2"

    aput-object v5, v4, v7

    .line 177
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const-string v5, "192.168.42.254"

    aput-object v5, v4, v8

    .line 178
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const-string v5, "192.168.43.2"

    aput-object v5, v4, v9

    .line 179
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/4 v5, 0x3

    const-string v6, "192.168.43.254"

    aput-object v6, v4, v5

    .line 180
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/4 v5, 0x4

    const-string v6, "192.168.44.2"

    aput-object v6, v4, v5

    .line 181
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/4 v5, 0x5

    const-string v6, "192.168.44.254"

    aput-object v6, v4, v5

    .line 182
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/4 v5, 0x6

    const-string v6, "192.168.45.2"

    aput-object v6, v4, v5

    .line 183
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/4 v5, 0x7

    const-string v6, "192.168.45.254"

    aput-object v6, v4, v5

    .line 184
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/16 v5, 0x8

    const-string v6, "192.168.46.2"

    aput-object v6, v4, v5

    .line 185
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/16 v5, 0x9

    const-string v6, "192.168.46.254"

    aput-object v6, v4, v5

    .line 186
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/16 v5, 0xa

    const-string v6, "192.168.47.2"

    aput-object v6, v4, v5

    .line 187
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/16 v5, 0xb

    const-string v6, "192.168.47.254"

    aput-object v6, v4, v5

    .line 188
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/16 v5, 0xc

    const-string v6, "192.168.48.2"

    aput-object v6, v4, v5

    .line 189
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const/16 v5, 0xd

    const-string v6, "192.168.48.254"

    aput-object v6, v4, v5

    .line 191
    :cond_119
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mDunRequired:Z

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs:[Ljava/lang/String;

    .line 203
    new-array v4, v9, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    .line 204
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    const-string v5, "8.8.8.8"

    aput-object v5, v4, v7

    .line 205
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    const-string v5, "8.8.4.4"

    aput-object v5, v4, v8

    .line 206
    return-void

    .line 143
    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_160
    move-exception v1

    .line 144
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error registering observer :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :cond_17b
    move v4, v7

    .line 169
    goto/16 :goto_93
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateUsbStatus()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->enableUsbRndis(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mDunRequired:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mDunRequired:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbMassStorageOff:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/HierarchicalStateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/HierarchicalStateMachine;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method private clearTetheredNotification()V
    .registers 4

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 466
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1a

    .line 467
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 468
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 470
    :cond_1a
    return-void
.end method

.method private configureUsbIface(Z)Z
    .registers 16
    .parameter "enabled"

    .prologue
    const/4 v13, 0x0

    .line 552
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configureUsbIface("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 555
    .local v2, b:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    .line 558
    .local v9, service:Landroid/os/INetworkManagementService;
    new-array v6, v13, [Ljava/lang/String;

    .line 560
    .local v6, ifaces:[Ljava/lang/String;
    :try_start_2b
    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_7e

    move-result-object v6

    .line 565
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_32
    if-ge v4, v8, :cond_cc

    aget-object v5, v1, v4

    .line 566
    .local v5, iface:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 567
    const/4 v7, 0x0

    .line 569
    .local v7, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_3d
    invoke-interface {v9, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v7

    .line 570
    if-eqz v7, :cond_7b

    .line 571
    const-string v10, "192.168.42.129"

    invoke-static {v10}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 572
    .local v0, addr:Ljava/net/InetAddress;
    new-instance v10, Landroid/net/LinkAddress;

    const/16 v11, 0x18

    invoke-direct {v10, v0, v11}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 573
    if-eqz p1, :cond_99

    .line 574
    iget-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v11, "down"

    const-string v12, "up"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 578
    :goto_60
    iget-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v11, "running"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 579
    iget-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v11, "  "

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 580
    invoke-interface {v9, v5, v7}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7b} :catch_a6

    .line 565
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v7           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 561
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #iface:Ljava/lang/String;
    .end local v8           #len$:I
    :catch_7e
    move-exception v3

    .line 562
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error listing Interfaces :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v13

    .line 589
    .end local v3           #e:Ljava/lang/Exception;
    :goto_98
    return v10

    .line 576
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #iface:Ljava/lang/String;
    .restart local v7       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v8       #len$:I
    :cond_99
    :try_start_99
    iget-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    const-string v11, "up"

    const-string v12, "down"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a5} :catch_a6

    goto :goto_60

    .line 582
    .end local v0           #addr:Ljava/net/InetAddress;
    :catch_a6
    move-exception v10

    move-object v3, v10

    .line 583
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v13

    .line 584
    goto :goto_98

    .line 589
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iface:Ljava/lang/String;
    .end local v7           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_cc
    const/4 v10, 0x1

    goto :goto_98
.end method

.method private enableUsbIfaces(Z)V
    .registers 13
    .parameter "enable"

    .prologue
    .line 505
    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 506
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    .line 507
    .local v7, service:Landroid/os/INetworkManagementService;
    const/4 v8, 0x0

    new-array v5, v8, [Ljava/lang/String;

    .line 509
    .local v5, ifaces:[Ljava/lang/String;
    :try_start_d
    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_26

    move-result-object v5

    .line 514
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v6, :cond_3f

    aget-object v4, v0, v3

    .line 515
    .local v4, iface:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 516
    if-eqz p1, :cond_40

    .line 517
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering;->interfaceAdded(Ljava/lang/String;)V

    .line 514
    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 510
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :catch_26
    move-exception v2

    .line 511
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error listing Interfaces :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3f
    return-void

    .line 519
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    :cond_40
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering;->interfaceRemoved(Ljava/lang/String;)V

    goto :goto_23
.end method

.method private enableUsbRndis(Z)Z
    .registers 8
    .parameter "enabled"

    .prologue
    .line 527
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableUsbRndis("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 529
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 532
    .local v2, service:Landroid/os/INetworkManagementService;
    if-eqz p1, :cond_56

    .line 533
    :try_start_2a
    monitor-enter p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_3a

    .line 534
    :try_start_2b
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isUsbRNDISStarted()Z

    move-result v3

    if-nez v3, :cond_34

    .line 535
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->startUsbRNDIS()V

    .line 537
    :cond_34
    monitor-exit p0

    .line 547
    :cond_35
    :goto_35
    const/4 v3, 0x1

    :goto_36
    return v3

    .line 537
    :catchall_37
    move-exception v3

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_37

    :try_start_39
    throw v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3a} :catch_3a

    .line 543
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 544
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error toggling usb RNDIS :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v3, 0x0

    goto :goto_36

    .line 539
    .end local v1           #e:Ljava/lang/Exception;
    :cond_56
    :try_start_56
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isUsbRNDISStarted()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 540
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopUsbRNDIS()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_3a

    goto :goto_35
.end method

.method private isUsb(Ljava/lang/String;)Z
    .registers 7
    .parameter "iface"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 241
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 243
    .end local v3           #regex:Ljava/lang/String;
    :goto_f
    return v4

    .line 240
    .restart local v3       #regex:Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 243
    .end local v3           #regex:Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private sendTetherStateChangedBroadcast()V
    .registers 21

    .prologue
    .line 355
    const-string v17, "connectivity"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 356
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v13

    .line 358
    .local v13, service:Landroid/net/IConnectivityManager;
    :try_start_a
    invoke-interface {v13}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_11

    move-result v17

    if-nez v17, :cond_13

    .line 423
    :goto_10
    return-void

    .line 359
    :catch_11
    move-exception v8

    .line 360
    .local v8, e:Landroid/os/RemoteException;
    goto :goto_10

    .line 363
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v4, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v3, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v9, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 368
    .local v16, wifiTethered:Z
    const/4 v15, 0x0

    .line 369
    .local v15, usbTethered:Z
    const/4 v6, 0x0

    .line 371
    .local v6, bluetoothTethered:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 372
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 373
    .local v12, ifaces:Ljava/util/Set;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v12           #ifaces:Ljava/util/Set;
    .local v10, i$:Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_aa

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 374
    .local v11, iface:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 375
    .local v14, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v14, :cond_3b

    .line 376
    invoke-virtual {v14}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v18

    if-eqz v18, :cond_65

    .line 377
    check-cast v11, Ljava/lang/String;

    .end local v11           #iface:Ljava/lang/Object;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 392
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_62
    move-exception v18

    monitor-exit v17
    :try_end_64
    .catchall {:try_start_2d .. :try_end_64} :catchall_62

    throw v18

    .line 378
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #iface:Ljava/lang/Object;
    .restart local v14       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_65
    :try_start_65
    invoke-virtual {v14}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v18

    if-eqz v18, :cond_71

    .line 379
    check-cast v11, Ljava/lang/String;

    .end local v11           #iface:Ljava/lang/Object;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 380
    .restart local v11       #iface:Ljava/lang/Object;
    :cond_71
    invoke-virtual {v14}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v18

    if-eqz v18, :cond_3b

    .line 381
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8b

    .line 382
    const/4 v15, 0x1

    .line 388
    :cond_85
    :goto_85
    check-cast v11, Ljava/lang/String;

    .end local v11           #iface:Ljava/lang/Object;
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 383
    .restart local v11       #iface:Ljava/lang/Object;
    :cond_8b
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9b

    .line 384
    const/16 v16, 0x1

    goto :goto_85

    .line 385
    :cond_9b
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_85

    .line 386
    const/4 v6, 0x1

    goto :goto_85

    .line 392
    .end local v11           #iface:Ljava/lang/Object;
    .end local v14           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_aa
    monitor-exit v17
    :try_end_ab
    .catchall {:try_start_65 .. :try_end_ab} :catchall_62

    .line 393
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.net.conn.TETHER_STATE_CHANGED"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v7, broadcast:Landroid/content/Intent;
    const/high16 v17, 0x2000

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const-string v17, "availableArray"

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 397
    const-string v17, "activeArray"

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 398
    const-string v17, "erroredArray"

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 402
    const-string v17, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sendTetherStateChangedBroadcast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-eqz v15, :cond_13a

    .line 407
    if-nez v16, :cond_122

    if-eqz v6, :cond_12e

    .line 408
    :cond_122
    const v17, 0x10804f7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_10

    .line 410
    :cond_12e
    const v17, 0x10804f8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_10

    .line 412
    :cond_13a
    if-eqz v16, :cond_156

    .line 413
    if-eqz v6, :cond_14a

    .line 414
    const v17, 0x10804f7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_10

    .line 416
    :cond_14a
    const v17, 0x10804f9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_10

    .line 418
    :cond_156
    if-eqz v6, :cond_164

    .line 419
    const v17, 0x10804f6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_10

    .line 421
    :cond_164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto/16 :goto_10
.end method

.method private showTetheredNotification(I)V
    .registers 11
    .parameter "icon"

    .prologue
    const/4 v8, 0x0

    .line 426
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 428
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_e

    .line 461
    :cond_d
    :goto_d
    return-void

    .line 432
    :cond_e
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v6, :cond_1f

    .line 433
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eq v6, p1, :cond_d

    .line 436
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 439
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 445
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 446
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x10403cd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 447
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x10403ce

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 450
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v6, :cond_59

    .line 451
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 452
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 454
    :cond_59
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput p1, v6, Landroid/app/Notification;->icon:I

    .line 455
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 456
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 457
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 458
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 460
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_d
.end method

.method private updateUsbStatus()V
    .registers 3

    .prologue
    .line 473
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbConnected:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbMassStorageOff:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    move v0, v1

    .line 475
    .local v0, enable:Z
    :goto_a
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-eqz v1, :cond_11

    .line 476
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->enableUsbIfaces(Z)V

    .line 478
    :cond_11
    return-void

    .line 473
    .end local v0           #enable:Z
    :cond_12
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1530
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    .line 1532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    :goto_32
    return-void

    .line 1538
    :cond_33
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1539
    const-string v2, "Tether state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v2

    .line 1541
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1542
    .local v1, o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_48

    .line 1544
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #o:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_6f
    move-exception v3

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_3e .. :try_end_71} :catchall_6f

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_72
    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_6f

    .line 1545
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_32
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 653
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v7

    .line 655
    :try_start_8
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 656
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 657
    .local v2, key:Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 658
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 659
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 662
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v8

    monitor-exit v7
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v8

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v7
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 663
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 664
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 665
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v5, v0

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 667
    :cond_4c
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 7
    .parameter "iface"

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 345
    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 346
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_31

    .line 347
    if-nez v1, :cond_34

    .line 348
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v2, 0x1

    .line 351
    :goto_30
    return v2

    .line 346
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 351
    :cond_34
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    goto :goto_30
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 635
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v7

    .line 637
    :try_start_8
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 638
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 639
    .local v2, key:Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 640
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 641
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 644
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v8

    monitor-exit v7
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v8

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v7
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 645
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 646
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 647
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v5, v0

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 649
    :cond_4c
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 617
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v7

    .line 619
    :try_start_8
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 620
    .local v3, keys:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 621
    .local v2, key:Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 622
    .local v6, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 623
    check-cast v2, Ljava/lang/String;

    .end local v2           #key:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 626
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;
    .end local v6           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_30
    move-exception v8

    monitor-exit v7
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v8

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;
    :cond_33
    :try_start_33
    monitor-exit v7
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 627
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 628
    .local v5, retVal:[Ljava/lang/String;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    .line 629
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v5, v0

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 631
    :cond_4c
    return-object v5
.end method

.method public getUpstreamIfaceRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 11
    .parameter "iface"

    .prologue
    .line 260
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 261
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 262
    .local v2, service:Landroid/os/INetworkManagementService;
    const/4 v1, 0x0

    .line 263
    .local v1, found:Z
    const/4 v4, 0x0

    .line 264
    .local v4, usb:Z
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 265
    const/4 v1, 0x1

    .line 267
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 268
    const/4 v1, 0x1

    .line 269
    const/4 v4, 0x1

    .line 271
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 272
    const/4 v1, 0x1

    .line 274
    :cond_22
    if-nez v1, :cond_3d

    .line 275
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a tetherable iface, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_3c
    return-void

    .line 279
    :cond_3d
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v5

    .line 280
    :try_start_40
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 281
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v3, :cond_6d

    .line 282
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active iface ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") reported as added, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v5

    goto :goto_3c

    .line 288
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_6a
    move-exception v6

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_40 .. :try_end_6c} :catchall_6a

    throw v6

    .line 285
    .restart local v3       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_6d
    :try_start_6d
    new-instance v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, p1, v6, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 286
    .restart local v3       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 288
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_6a

    .line 289
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interfaceAdded :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public interfaceLinkStatusChanged(Ljava/lang/String;Z)V
    .registers 9
    .parameter "iface"
    .parameter "link"

    .prologue
    .line 209
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceLinkStatusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, found:Z
    const/4 v2, 0x0

    .line 212
    .local v2, usb:Z
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 213
    const/4 v0, 0x1

    .line 220
    :cond_2b
    :goto_2b
    if-nez v0, :cond_3f

    .line 237
    :goto_2d
    return-void

    .line 214
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 215
    const/4 v0, 0x1

    .line 216
    const/4 v2, 0x1

    goto :goto_2b

    .line 217
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 218
    const/4 v0, 0x1

    goto :goto_2b

    .line 222
    :cond_3f
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 223
    :try_start_42
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 224
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_62

    .line 225
    if-nez v1, :cond_5d

    .line 226
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v4, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 227
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 236
    :cond_5d
    :goto_5d
    monitor-exit v3

    goto :goto_2d

    .end local v1           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_5f
    move-exception v4

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_5f

    throw v4

    .line 231
    .restart local v1       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_62
    if-eqz v1, :cond_5d

    .line 232
    const/4 v4, 0x4

    :try_start_65
    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 233
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_5f

    goto :goto_5d
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 7
    .parameter "iface"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v1

    .line 294
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 295
    .local v0, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_2d

    .line 297
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempting to remove unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v1

    .line 304
    :goto_2c
    return-void

    .line 301
    :cond_2d
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 302
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    monitor-exit v1

    goto :goto_2c

    .end local v0           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .registers 7
    .parameter "iface"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 255
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 257
    .end local v3           #regex:Ljava/lang/String;
    :goto_f
    return v4

    .line 254
    .restart local v3       #regex:Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 257
    .end local v3           #regex:Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public isDunRequired()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 609
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 611
    .local v0, defaultVal:Z
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_dun_required"

    if-eqz v0, :cond_22

    move v4, v5

    :goto_1a
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_24

    move v1, v5

    .line 613
    .local v1, result:Z
    :goto_21
    return v1

    .end local v1           #result:Z
    :cond_22
    move v4, v6

    .line 611
    goto :goto_1a

    :cond_24
    move v1, v6

    goto :goto_21
.end method

.method public isWifi(Ljava/lang/String;)Z
    .registers 7
    .parameter "iface"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 248
    .local v3, regex:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 250
    .end local v3           #regex:Ljava/lang/String;
    :goto_f
    return v4

    .line 247
    .restart local v3       #regex:Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 250
    .end local v3           #regex:Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public tether(Ljava/lang/String;)I
    .registers 7
    .parameter "iface"

    .prologue
    .line 307
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 310
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 311
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_49

    .line 312
    if-nez v1, :cond_4c

    .line 313
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v2, 0x1

    .line 321
    :goto_48
    return v2

    .line 311
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2

    .line 316
    :cond_4c
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_78

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-nez v2, :cond_78

    .line 317
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v2, 0x4

    goto :goto_48

    .line 320
    :cond_78
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 321
    const/4 v2, 0x0

    goto :goto_48
.end method

.method public untether(Ljava/lang/String;)I
    .registers 7
    .parameter "iface"

    .prologue
    .line 325
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 328
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 329
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_49

    .line 330
    if-nez v1, :cond_4c

    .line 331
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v2, 0x1

    .line 339
    :goto_48
    return v2

    .line 329
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2

    .line 334
    :cond_4c
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 335
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untethered an errored iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v2, 0x4

    goto :goto_48

    .line 338
    :cond_72
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 339
    const/4 v2, 0x0

    goto :goto_48
.end method
