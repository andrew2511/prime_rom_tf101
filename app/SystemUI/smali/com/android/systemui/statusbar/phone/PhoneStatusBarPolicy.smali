.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# static fields
.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_3g:[[I

.field private static final sDataNetType_e:[[I

.field private static final sDataNetType_g:[[I

.field private static final sDataNetType_h:[[I

.field private static final sRoamingIndicatorImages_cdma:[I

.field private static final sSignalImages:[[I

.field private static final sSignalImages_r:[[I

.field private static final sWifiSignalImages:[[I


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothEnabled:Z

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mLastWifiSignalLevel:I

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 102
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages:[[I

    .line 114
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages_r:[[I

    .line 126
    const/16 v0, 0x54

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 229
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_g:[[I

    .line 239
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    .line 249
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_e:[[I

    .line 260
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_h:[[I

    .line 273
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_1x:[[I

    .line 304
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    return-void

    .line 102
    nop

    :array_0
    .array-data 0x4
        0xbat 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xcat 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xbbt 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xcct 0x0t 0x2t 0x7ft
    .end array-data

    .line 114
    :array_2
    .array-data 0x4
        0xaat 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xabt 0x0t 0x2t 0x7ft
        0xadt 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
    .end array-data

    .line 126
    :array_4
    .array-data 0x4
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 229
    :array_5
    .array-data 0x4
        0x67t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x80t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 239
    :array_7
    .array-data 0x4
        0x64t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
    .end array-data

    .line 249
    :array_9
    .array-data 0x4
        0x66t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x7ft 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 260
    :array_b
    .array-data 0x4
        0x68t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x81t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 273
    :array_d
    .array-data 0x4
        0x63t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x7ct 0x0t 0x2t 0x7ft
        0x82t 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
    .end array-data

    .line 304
    :array_f
    .array-data 0x4
        0xdct 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0xdet 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 227
    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_g:[[I

    aget-object v3, v3, v7

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    .line 286
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 287
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneState:I

    .line 288
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    .line 289
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    .line 317
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    .line 318
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    .line 321
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    .line 327
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 536
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 372
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 373
    const-string v3, "statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 374
    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 375
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 378
    const-string v3, "storage"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 379
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v4, Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {v4, p1}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 383
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "battery"

    const v5, 0x10804da

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 386
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 387
    const v3, 0x7f0200d4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    .line 388
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "phone_signal"

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 391
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x1e1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 400
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "data_connection"

    const v5, 0x7f020067

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 401
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "data_connection"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 404
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v5, v5, v7

    aget v5, v5, v7

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 405
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "wifi"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 409
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    const v5, 0x7f0200d7

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 410
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 413
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    const v5, 0x7f0200b6

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 414
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 417
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    const v5, 0x7f020061

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 418
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 419
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 424
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 427
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "gps"

    const v5, 0x7f0200a8

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 428
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 431
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "alarm_clock"

    const v5, 0x7f02005f

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 432
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "alarm_clock"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 435
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "sync_active"

    const v5, 0x10804b6

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "sync_failing"

    const v5, 0x10804b7

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 437
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "sync_active"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 438
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "sync_failing"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 441
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "volume"

    const v5, 0x7f0200b4

    invoke-virtual {v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 442
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "volume"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume()V

    .line 445
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v3, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v3, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v3, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v3, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v3, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v3, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 469
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_1
    return-void

    .line 422
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_0

    .line 471
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 472
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 609
    :pswitch_0
    const/4 v0, 0x1

    .line 612
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 607
    goto :goto_0

    :cond_0
    move v0, v1

    .line 612
    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 477
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 478
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 479
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 490
    const-string v2, "icon-small"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 491
    .local v0, id:I
    const-string v2, "level"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 492
    .local v1, level:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "battery"

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 493
    return-void
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 769
    const v1, 0x7f020061

    .line 770
    .local v1, iconId:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 772
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 773
    .local v2, state:I
    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 784
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 785
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 786
    .end local v2           #state:I
    :cond_1
    return-void

    .restart local v2       #state:I
    :cond_2
    move v3, v5

    .line 773
    goto :goto_0

    .line 774
    .end local v2           #state:I
    :cond_3
    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 777
    .restart local v2       #state:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 778
    const v1, 0x7f020062

    goto :goto_1
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 860
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    .line 861
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 902
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isCdma()Z

    move-result v3

    if-nez v3, :cond_1

    .line 866
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 870
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 871
    .local v1, iconList:[I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 872
    .local v0, iconIndex:I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 874
    .local v2, iconMode:I
    if-ne v0, v4, :cond_2

    .line 875
    const-string v3, "PhoneStatusBarPolicy"

    const-string v4, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    :cond_2
    if-ne v2, v4, :cond_3

    .line 880
    const-string v3, "PhoneStatusBarPolicy"

    const-string v4, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    :cond_3
    if-ne v0, v7, :cond_4

    .line 886
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 890
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 901
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "phone_signal"

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    .line 892
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    aget v5, v1, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 893
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 896
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    const v5, 0x7f0200b7

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 897
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cdma_eri"

    invoke-virtual {v3, v4, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 496
    const-string v5, "networkInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    move-object v0, v5

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v4, v0

    .line 498
    .local v4, info:Landroid/net/NetworkInfo;
    const-string v5, "inetCondition"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 500
    .local v1, connectionStatus:I
    const/16 v5, 0x32

    if-le v1, v5, :cond_0

    move v3, v8

    .line 502
    .local v3, inetCondition:I
    :goto_0
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 534
    :goto_1
    return-void

    .end local v3           #inetCondition:I
    :cond_0
    move v3, v7

    .line 500
    goto :goto_0

    .line 504
    .restart local v3       #inetCondition:I
    :pswitch_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    .line 505
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataNetType(I)V

    .line 506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataIcon()V

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 510
    :pswitch_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    .line 511
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    .line 514
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v5, v6, :cond_1

    .line 515
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v5, v5, v6

    aget v2, v5, v7

    .line 519
    .local v2, iconId:I
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v6, v2, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 521
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v6, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 531
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 517
    .end local v2           #iconId:I
    :cond_1
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    aget v2, v5, v6

    .restart local v2       #iconId:I
    goto :goto_2

    .line 523
    .end local v2           #iconId:I
    :cond_2
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    .line 524
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    .line 525
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v5, v5, v7

    aget v2, v5, v7

    .line 527
    .restart local v2       #iconId:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v6, v2, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 529
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v6, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 684
    const/4 v3, 0x1

    .line 686
    .local v3, visible:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isCdma()Z

    move-result v4

    if-nez v4, :cond_4

    .line 688
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_3

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    if-ne v4, v7, :cond_2

    .line 690
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    packed-switch v4, :pswitch_data_0

    .line 701
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 704
    .local v0, iconId:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "data_connection"

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 736
    .end local v0           #iconId:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 738
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconVisible:Z

    if-eq v4, v3, :cond_1

    .line 745
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "data_connection"

    invoke-virtual {v4, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 746
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconVisible:Z

    .line 748
    :cond_1
    return-void

    .line 692
    .end local v1           #ident:J
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v8

    .line 693
    .restart local v0       #iconId:I
    goto :goto_0

    .line 695
    .end local v0           #iconId:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v7

    .line 696
    .restart local v0       #iconId:I
    goto :goto_0

    .line 698
    .end local v0           #iconId:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v9

    .line 699
    .restart local v0       #iconId:I
    goto :goto_0

    .line 706
    .end local v0           #iconId:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 709
    :cond_3
    const v0, 0x7f0200a9

    .line 710
    .restart local v0       #iconId:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "data_connection"

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 714
    .end local v0           #iconId:I
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataState:I

    if-ne v4, v7, :cond_5

    .line 715
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataActivity:I

    packed-switch v4, :pswitch_data_1

    .line 727
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 730
    .restart local v0       #iconId:I
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "data_connection"

    invoke-virtual {v4, v5, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 717
    .end local v0           #iconId:I
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v8

    .line 718
    .restart local v0       #iconId:I
    goto :goto_3

    .line 720
    .end local v0           #iconId:I
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v7

    .line 721
    .restart local v0       #iconId:I
    goto :goto_3

    .line 723
    .end local v0           #iconId:I
    :pswitch_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v9

    .line 724
    .restart local v0       #iconId:I
    goto :goto_3

    .line 732
    .end local v0           #iconId:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 739
    .restart local v1       #ident:J
    :catch_0
    move-exception v4

    .line 741
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 715
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 2
    .parameter "net"

    .prologue
    .line 647
    packed-switch p1, :pswitch_data_0

    .line 677
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    .line 680
    :goto_0
    return-void

    .line 649
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 652
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 657
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 658
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_h:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 660
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 665
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 668
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 673
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 824
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, action:Ljava/lang/String;
    const-string v2, "enabled"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 827
    .local v1, enabled:Z
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 829
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    const v4, 0x10804e2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 830
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 839
    :goto_0
    return-void

    .line 831
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 833
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 836
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    const v4, 0x7f0200a8

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 837
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateSignalStrength()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 620
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasService()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-nez v1, :cond_2

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 624
    const v1, 0x7f0200cf

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "phone_signal"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 644
    :goto_1
    return-void

    .line 626
    :cond_1
    const v1, 0x7f0200d4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 632
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isCdma()Z

    move-result v1

    if-nez v1, :cond_4

    .line 634
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 635
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages_r:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v1, v2

    .line 642
    .local v0, iconList:[I
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    aget v1, v0, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    .line 643
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "phone_signal"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 637
    .end local v0           #iconList:[I
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v1, v2

    .restart local v0       #iconList:[I
    goto :goto_2

    .line 640
    .end local v0           #iconList:[I
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v0, v1, v2

    .restart local v0       #iconList:[I
    goto :goto_2
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 574
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 595
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataIcon()V

    .line 596
    return-void

    .line 578
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 581
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 582
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 586
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 587
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 590
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 593
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 482
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 483
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 484
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "sync_active"

    invoke-virtual {v2, v3, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 487
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 842
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, action:Ljava/lang/String;
    const-string v2, "ttyEnabled"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 847
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    .line 850
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    const v4, 0x7f0200d7

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 851
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 751
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 752
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 753
    .local v2, ringerMode:I
    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_3

    :cond_0
    move v3, v7

    .line 755
    .local v3, visible:Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0200b5

    move v1, v4

    .line 759
    .local v1, iconId:I
    :goto_1
    if-eqz v3, :cond_1

    .line 760
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    invoke-virtual {v4, v5, v1, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 762
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v4, :cond_2

    .line 763
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "volume"

    invoke-virtual {v4, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 764
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 766
    :cond_2
    return-void

    .end local v1           #iconId:I
    .end local v3           #visible:Z
    :cond_3
    move v3, v6

    .line 753
    goto :goto_0

    .line 755
    .restart local v3       #visible:Z
    :cond_4
    const v4, 0x7f0200b4

    move v1, v4

    goto :goto_1
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 789
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 792
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    move v1, v5

    .line 795
    .local v1, enabled:Z
    :goto_0
    if-nez v1, :cond_0

    .line 797
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v6, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 821
    .end local v1           #enabled:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v7

    .line 792
    goto :goto_0

    .line 800
    :cond_2
    const-string v5, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 801
    const-string v5, "connected"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 803
    .restart local v1       #enabled:Z
    if-nez v1, :cond_0

    .line 804
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v6, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 806
    .end local v1           #enabled:Z
    :cond_3
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 808
    const-string v5, "newRssi"

    const/16 v6, -0xc8

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 809
    .local v3, newRssi:I
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v5, v5, v7

    array-length v5, v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    .line 811
    .local v4, newSignalLevel:I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v4, v5, :cond_0

    .line 812
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    .line 813
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v5, :cond_4

    .line 814
    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    aget-object v5, v5, v6

    aget v2, v5, v4

    .line 818
    .local v2, iconId:I
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "wifi"

    invoke-virtual {v5, v6, v2, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 816
    .end local v2           #iconId:I
    :cond_4
    const v2, 0x7f0200db

    .restart local v2       #iconId:I
    goto :goto_2
.end method
