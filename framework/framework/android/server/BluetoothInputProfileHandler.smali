.class final Landroid/server/BluetoothInputProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothInputProfileHandler.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothInputProfileHandler"

.field public static sInstance:Landroid/server/BluetoothInputProfileHandler;


# instance fields
.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mContext:Landroid/content/Context;

.field private final mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private final mInputDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .registers 6
    .parameter "context"
    .parameter "service"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    .line 53
    new-instance v0, Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 54
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 55
    return-void
.end method

.method private static debugLog(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 219
    const-string v0, "BluetoothInputProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method private static errorLog(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 223
    const-string v0, "BluetoothInputProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;
    .registers 4
    .parameter "context"
    .parameter "service"

    .prologue
    .line 59
    const-class v0, Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;

    if-nez v1, :cond_e

    new-instance v1, Landroid/server/BluetoothInputProfileHandler;

    invoke-direct {v1, p0, p1}, Landroid/server/BluetoothInputProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v1, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;

    .line 60
    :cond_e
    sget-object v1, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 7
    .parameter "device"
    .parameter "state"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_87

    move-result-object v2

    if-nez v2, :cond_e

    .line 169
    const/4 v1, 0x0

    .line 173
    .local v1, prevState:I
    :goto_a
    if-ne v1, p2, :cond_1b

    .line 195
    :goto_c
    monitor-exit p0

    return-void

    .line 171
    .end local v1           #prevState:I
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #prevState:I
    goto :goto_a

    .line 175
    :cond_1b
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_2d

    const/4 v2, 0x1

    if-eq p2, v2, :cond_30

    :cond_2d
    const/4 v2, 0x2

    if-ne p2, v2, :cond_35

    .line 183
    :cond_30
    const/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 186
    :cond_35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputDevice state : device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothInputProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1, p2, v1}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_86
    .catchall {:try_start_e .. :try_end_86} :catchall_87

    goto :goto_c

    .line 168
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #prevState:I
    :catchall_87
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method declared-synchronized connectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .registers 8
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 65
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, objectPath:Ljava/lang/String;
    if-eqz v1, :cond_1a

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_32

    move-result v2

    if-nez v2, :cond_1d

    :cond_1a
    move v2, v4

    .line 78
    :goto_1b
    monitor-exit p0

    return v2

    .line 71
    :cond_1d
    if-eqz p2, :cond_30

    .line 72
    :try_start_1f
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 73
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 74
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_32

    .line 76
    const/4 v2, 0x1

    goto :goto_1b

    .end local v0           #msg:Landroid/os/Message;
    :cond_30
    move v2, v4

    .line 78
    goto :goto_1b

    .line 65
    .end local v1           #objectPath:Ljava/lang/String;
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .parameter "device"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, objectPath:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 84
    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->connectInputDeviceNative(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 85
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_22

    move v1, v3

    .line 88
    :goto_1e
    monitor-exit p0

    return v1

    :cond_20
    move v1, v4

    goto :goto_1e

    .line 82
    .end local v0           #objectPath:Ljava/lang/String;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .registers 8
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 93
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, objectPath:Ljava/lang/String;
    if-eqz v1, :cond_14

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_2d

    move-result v2

    if-nez v2, :cond_17

    :cond_14
    move v2, v4

    .line 105
    :goto_15
    monitor-exit p0

    return v2

    .line 98
    :cond_17
    if-eqz p2, :cond_2b

    .line 99
    :try_start_19
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 100
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x36

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 101
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2d

    .line 103
    const/4 v2, 0x1

    goto :goto_15

    .end local v0           #msg:Landroid/os/Message;
    :cond_2b
    move v2, v4

    .line 105
    goto :goto_15

    .line 93
    .end local v1           #objectPath:Ljava/lang/String;
    :catchall_2d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, objectPath:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 111
    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->disconnectInputDeviceNative(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 112
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    .line 113
    const/4 v1, 0x0

    .line 115
    :goto_1c
    monitor-exit p0

    return v1

    :cond_1e
    const/4 v1, 0x1

    goto :goto_1c

    .line 109
    .end local v0           #objectPath:Ljava/lang/String;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getConnectedInputDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    move-result-object v0

    .line 128
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit p0

    return-object v0

    .line 126
    .end local v0           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .parameter "device"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    move-result-object v0

    if-nez v0, :cond_c

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_19

    move-result v0

    goto :goto_a

    .line 119
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    move-result v0

    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getInputDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    .line 133
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit p0

    return-object v0

    .line 132
    .end local v0           #devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_7
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized handleInputDevicePropertyChange(Ljava/lang/String;Z)V
    .registers 7
    .parameter "address"
    .parameter "connected"

    .prologue
    .line 198
    monitor-enter p0

    if-eqz p2, :cond_12

    const/4 v3, 0x2

    move v2, v3

    .line 200
    .local v2, state:I
    :goto_5
    :try_start_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 201
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 202
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1, v2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_15

    .line 203
    monitor-exit p0

    return-void

    .line 198
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_12
    const/4 v3, 0x0

    move v2, v3

    goto :goto_5

    .restart local v2       #state:I
    :catchall_15
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized lookupInputDevicesMatchingStates([I)Ljava/util/List;
    .registers 11
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v5, inputDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 155
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 156
    .local v4, inputDeviceState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_23
    if-ge v3, v6, :cond_10

    aget v7, v0, v3

    .line 157
    .local v7, state:I
    if-ne v7, v4, :cond_30

    .line 158
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2d

    goto :goto_10

    .line 152
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #inputDeviceState:I
    .end local v5           #inputDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6           #len$:I
    .end local v7           #state:I
    :catchall_2d
    move-exception v8

    monitor-exit p0

    throw v8

    .line 156
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #inputDeviceState:I
    .restart local v5       #inputDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v6       #len$:I
    .restart local v7       #state:I
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 163
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #inputDeviceState:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :cond_33
    monitor-exit p0

    return-object v5
.end method

.method declared-synchronized setInitialInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    .line 206
    monitor-enter p0

    packed-switch p2, :pswitch_data_1c

    .line 216
    :cond_5
    :goto_5
    :pswitch_5
    monitor-exit p0

    return-void

    .line 208
    :pswitch_7
    :try_start_7
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 209
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_5

    .line 206
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :pswitch_16
    const/4 v0, -0x1

    :try_start_17
    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_13

    goto :goto_5

    .line 206
    nop

    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_16
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method declared-synchronized setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 5
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_21

    move-result v0

    if-nez v0, :cond_e

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_21

    move-result v0

    goto :goto_c

    .line 143
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
