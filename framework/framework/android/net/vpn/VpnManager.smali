.class public Landroid/net/vpn/VpnManager;
.super Ljava/lang/Object;
.source "VpnManager.java"


# static fields
.field private static final ACTION_VPN_CONNECTIVITY:Ljava/lang/String; = "vpn.connectivity"

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = null

.field public static final BROADCAST_CONNECTION_STATE:Ljava/lang/String; = "connection_state"

.field public static final BROADCAST_ERROR_CODE:Ljava/lang/String; = "err"

.field public static final BROADCAST_PROFILE_NAME:Ljava/lang/String; = "profile_name"

.field private static final PACKAGE_PREFIX:Ljava/lang/String; = null

.field public static final PROFILES_PATH:Ljava/lang/String; = "/misc/vpn/profiles"

.field public static final TAG:Ljava/lang/String; = null

.field public static final VPN_ERROR_AUTH:I = 0x33

.field public static final VPN_ERROR_CHALLENGE:I = 0x5

.field public static final VPN_ERROR_CONNECTION_FAILED:I = 0x65

.field public static final VPN_ERROR_CONNECTION_LOST:I = 0x67

.field public static final VPN_ERROR_LARGEST:I = 0xc8

.field public static final VPN_ERROR_NO_ERROR:I = 0x0

.field public static final VPN_ERROR_PPP_NEGOTIATION_FAILED:I = 0x2a

.field public static final VPN_ERROR_REMOTE_HUNG_UP:I = 0x7

.field public static final VPN_ERROR_REMOTE_PPP_HUNG_UP:I = 0x30

.field public static final VPN_ERROR_UNKNOWN_SERVER:I = 0x66

.field private static final VPN_SERVICE_NAME:Ljava/lang/String; = "vpn"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVpnService:Landroid/net/vpn/IVpnService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/vpn/VpnManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->PACKAGE_PREFIX:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/vpn/VpnManager;->PACKAGE_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    .line 86
    const-class v0, Landroid/net/vpn/VpnManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Landroid/net/vpn/VpnManager;->createVpnServiceClient()V

    .line 114
    return-void
.end method

.method private createVpnServiceClient()V
    .registers 3

    .prologue
    .line 117
    const-string/jumbo v1, "vpn"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 118
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/vpn/IVpnService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vpn/IVpnService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/vpn/VpnManager;->mVpnService:Landroid/net/vpn/IVpnService;

    .line 119
    return-void
.end method

.method public static getProfilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/vpn/profiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedVpnTypes()[Landroid/net/vpn/VpnType;
    .registers 1

    .prologue
    .line 98
    invoke-static {}, Landroid/net/vpn/VpnType;->values()[Landroid/net/vpn/VpnType;

    move-result-object v0

    return-object v0
.end method

.method public static startVpnService(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 102
    const-string/jumbo v0, "vpn"

    new-instance v1, Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {v1, p0}, Lcom/android/server/vpn/VpnServiceBinder;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 103
    return-void
.end method


# virtual methods
.method public broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    .registers 4
    .parameter "profileName"
    .parameter "s"

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    .line 205
    return-void
.end method

.method public broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V
    .registers 6
    .parameter "profileName"
    .parameter "s"
    .parameter "error"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "vpn.connectivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "profile_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "connection_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    if-eqz p3, :cond_1a

    .line 214
    const-string v1, "err"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    :cond_1a
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "p"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mVpnService:Landroid/net/vpn/IVpnService;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/vpn/IVpnService;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 133
    :goto_6
    return v1

    .line 131
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    const-string v2, "connect()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public createSettingsActivityIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    return-object v0
.end method

.method public createVpnProfile(Landroid/net/vpn/VpnType;)Landroid/net/vpn/VpnProfile;
    .registers 3
    .parameter "type"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;Z)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method public createVpnProfile(Landroid/net/vpn/VpnType;Z)Landroid/net/vpn/VpnProfile;
    .registers 7
    .parameter "type"
    .parameter "customized"

    .prologue
    const/4 v3, 0x0

    .line 192
    :try_start_1
    invoke-virtual {p1}, Landroid/net/vpn/VpnType;->getProfileClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 193
    .local v1, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1, p2}, Landroid/net/vpn/VpnProfile;->setCustomized(Z)V
    :try_end_e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_e} :catch_14

    move-object v2, v1

    .line 198
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :goto_f
    return-object v2

    .line 195
    :catch_10
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InstantiationException;
    move-object v2, v3

    .line 196
    goto :goto_f

    .line 197
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_14
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalAccessException;
    move-object v2, v3

    .line 198
    goto :goto_f
.end method

.method public disconnect()V
    .registers 4

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mVpnService:Landroid/net/vpn/IVpnService;

    invoke-interface {v1}, Landroid/net/vpn/IVpnService;->disconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 146
    :goto_5
    return-void

    .line 143
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    const-string v2, "disconnect()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getState(Landroid/net/vpn/VpnProfile;)Landroid/net/vpn/VpnState;
    .registers 5
    .parameter "p"

    .prologue
    .line 153
    :try_start_0
    const-class v1, Landroid/net/vpn/VpnState;

    iget-object v2, p0, Landroid/net/vpn/VpnManager;->mVpnService:Landroid/net/vpn/IVpnService;

    invoke-interface {v2, p1}, Landroid/net/vpn/IVpnService;->getState(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/VpnState;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-object v1, p0

    .line 156
    :goto_f
    return-object v1

    .line 154
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    const-string v2, "getState()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    goto :goto_f
.end method

.method public isIdle()Z
    .registers 4

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mVpnService:Landroid/net/vpn/IVpnService;

    invoke-interface {v1}, Landroid/net/vpn/IVpnService;->isIdle()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 169
    :goto_6
    return v1

    .line 167
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/net/vpn/VpnManager;->TAG:Ljava/lang/String;

    const-string v2, "isIdle()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v1, 0x1

    goto :goto_6
.end method

.method public registerConnectivityReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "vpn.connectivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    return-void
.end method

.method public startSettingsActivity()V
    .registers 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/net/vpn/VpnManager;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method public unregisterConnectivityReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/net/vpn/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    return-void
.end method
