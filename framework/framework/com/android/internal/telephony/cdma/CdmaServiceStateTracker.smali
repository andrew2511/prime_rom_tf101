.class final Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

.field private cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

.field private cdmaDataConnectionState:I

.field private cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private currentCarrier:Ljava/lang/String;

.field private isEriTextLoaded:Z

.field private isSubscriptionFromRuim:Z

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mCdmaRoaming:Z

.field mCurrentOtaspMode:I

.field private mDefaultRoamingIndicator:I

.field private mGotCountryCode:Z

.field private mHomeNetworkId:[I

.field private mHomeSystemId:[I

.field private mIsInPrl:Z

.field private mIsMinInfoReady:Z

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mNeedFixZone:Z

.field private mNeedToRegForRuimLoaded:Z

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field private mPendingRadioPowerOffAfterDataOff:Z

.field private mPrlVersion:Ljava/lang/String;

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field private mRegistrationState:I

.field private mRoamingIndicator:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private networkType:I

.field private newCdmaDataConnectionState:I

.field newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private newNetworkType:I

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 9
    .parameter "phone"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 76
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 80
    const-string/jumbo v2, "ro.nitz_update_spacing"

    const v3, 0x927c0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    .line 85
    const-string/jumbo v2, "ro.nitz_update_diff"

    const/16 v3, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    .line 91
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkType:I

    .line 92
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    .line 94
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 102
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    .line 103
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    .line 104
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 105
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    .line 106
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    .line 107
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 114
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 118
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 127
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    .line 134
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 137
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 138
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 141
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 143
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriTextLoaded:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    .line 146
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 152
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->currentCarrier:Ljava/lang/String;

    .line 154
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 162
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 174
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 175
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 176
    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 177
    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 178
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 179
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 180
    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 182
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 184
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v2, "ServiceStateTracker"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xd

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1e

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1a

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x23

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    const/16 v2, 0x24

    invoke-virtual {p1, p0, v2, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x25

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, airplaneMode:I
    if-gtz v0, :cond_11f

    move v2, v6

    :goto_fd
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    .line 203
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v3, "auto_time_zone"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 211
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    .line 212
    return-void

    :cond_11f
    move v2, v4

    .line 201
    goto :goto_fd
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .registers 15
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1191
    move v5, p1

    .line 1192
    .local v5, rawOffset:I
    if-eqz p2, :cond_7

    .line 1193
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 1195
    :cond_7
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 1196
    .local v8, zones:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1197
    .local v2, guess:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 1198
    .local v1, d:Ljava/util/Date;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_29

    aget-object v7, v0, v3

    .line 1199
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1200
    .local v6, tz:Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2a

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2a

    .line 1202
    move-object v2, v6

    .line 1207
    .end local v6           #tz:Ljava/util/TimeZone;
    .end local v7           #zone:Ljava/lang/String;
    :cond_29
    return-object v2

    .line 1198
    .restart local v6       #tz:Ljava/util/TimeZone;
    .restart local v7       #zone:Ljava/lang/String;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method private fixTimeZone(Ljava/lang/String;)V
    .registers 10
    .parameter "isoCountryCode"

    .prologue
    .line 998
    const/4 v2, 0x0

    .line 1001
    .local v2, zone:Ljava/util/TimeZone;
    const-string v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, zoneName:Ljava/lang/String;
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-nez v4, :cond_5a

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-nez v4, :cond_5a

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5a

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    invoke-static {v4, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_5a

    .line 1007
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 1009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v0, v4

    .line 1010
    .local v0, tzOffset:J
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1011
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1024
    .end local v0           #tzOffset:J
    :goto_3a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 1026
    if-eqz v2, :cond_53

    .line 1027
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1028
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1030
    :cond_4c
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1032
    :cond_53
    return-void

    .line 1014
    .restart local v0       #tzOffset:J
    :cond_54
    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    goto :goto_3a

    .line 1016
    .end local v0           #tzOffset:J
    :cond_5a
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1019
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_3a

    .line 1021
    :cond_6d
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-static {v4, v5, v6, v7, p1}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_3a
.end method

.method private getAutoTime()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1565
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_8} :catch_f

    move-result v1

    if-lez v1, :cond_d

    move v1, v3

    .line 1567
    :goto_c
    return v1

    .line 1565
    :cond_d
    const/4 v1, 0x0

    goto :goto_c

    .line 1566
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 1567
    goto :goto_c
.end method

.method private getAutoTimeZone()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1573
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_8} :catch_f

    move-result v1

    if-lez v1, :cond_d

    move v1, v3

    .line 1575
    :goto_c
    return v1

    .line 1573
    :cond_d
    const/4 v1, 0x0

    goto :goto_c

    .line 1574
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 1575
    goto :goto_c
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .registers 8
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1182
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_d

    .line 1184
    if-nez p2, :cond_27

    const/4 v1, 0x1

    :goto_9
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1186
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_29

    move-object v2, v0

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1187
    return-object v0

    .line 1184
    :cond_27
    const/4 v1, 0x0

    goto :goto_9

    .line 1186
    :cond_29
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method private hangupAndPowerOff()V
    .registers 4

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1759
    return-void
.end method

.method private isHomeSid(I)Z
    .registers 4
    .parameter "sid"

    .prologue
    .line 1651
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_15

    .line 1652
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 1653
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_12

    .line 1654
    const/4 v1, 0x1

    .line 1658
    .end local v0           #i:I
    :goto_11
    return v1

    .line 1652
    .restart local v0       #i:I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1658
    .end local v0           #i:I
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .registers 9
    .parameter "roamInd"

    .prologue
    const/4 v6, 0x0

    .line 1340
    const-string/jumbo v5, "ro.cdma.homesystem"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1342
    .local v2, homeRoamIndicators:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 1345
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_16
    if-ge v3, v4, :cond_25

    aget-object v1, v0, v3

    .line 1346
    .local v1, homeRoamInd:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1347
    const/4 v5, 0x1

    .line 1355
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #homeRoamInd:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_21
    return v5

    .line 1345
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #homeRoamInd:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .end local v1           #homeRoamInd:Ljava/lang/String;
    :cond_25
    move v5, v6

    .line 1351
    goto :goto_21

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_27
    move v5, v6

    .line 1355
    goto :goto_21
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .registers 12
    .parameter "cdmaRoaming"
    .parameter "s"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1366
    const-string v5, "gsm.sim.operator.alpha"

    const-string v6, "empty"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1370
    .local v4, spn:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1371
    .local v2, onsl:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 1373
    .local v3, onss:Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v0, v8

    .line 1374
    .local v0, equalsOnsl:Z
    :goto_1b
    if-eqz v3, :cond_2e

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move v1, v8

    .line 1376
    .local v1, equalsOnss:Z
    :goto_24
    if-eqz p1, :cond_30

    if-nez v0, :cond_30

    if-nez v1, :cond_30

    move v5, v8

    :goto_2b
    return v5

    .end local v0           #equalsOnsl:Z
    .end local v1           #equalsOnss:Z
    :cond_2c
    move v0, v7

    .line 1373
    goto :goto_1b

    .restart local v0       #equalsOnsl:Z
    :cond_2e
    move v1, v7

    .line 1374
    goto :goto_24

    .restart local v1       #equalsOnss:Z
    :cond_30
    move v5, v7

    .line 1376
    goto :goto_2b
.end method

.method private isSidsAllZeros()Z
    .registers 3

    .prologue
    .line 1637
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_15

    .line 1638
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 1639
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_12

    .line 1640
    const/4 v1, 0x0

    .line 1644
    .end local v0           #i:I
    :goto_11
    return v1

    .line 1638
    .restart local v0       #i:I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1644
    .end local v0           #i:I
    :cond_15
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .registers 4
    .parameter "type"

    .prologue
    .line 968
    const-string/jumbo v0, "unknown"

    .line 970
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_1e

    .line 989
    :pswitch_6
    const-string v1, "CDMA"

    const-string v2, "Wrong network. Can not return a string."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :goto_d
    return-object v0

    .line 973
    :pswitch_e
    const-string v0, "CDMA"

    .line 974
    goto :goto_d

    .line 976
    :pswitch_11
    const-string v0, "CDMA - 1xRTT"

    .line 977
    goto :goto_d

    .line 979
    :pswitch_14
    const-string v0, "CDMA - EvDo rev. 0"

    .line 980
    goto :goto_d

    .line 982
    :pswitch_17
    const-string v0, "CDMA - EvDo rev. A"

    .line 983
    goto :goto_d

    .line 985
    :pswitch_1a
    const-string v0, "CDMA - EvDo rev. B"

    .line 986
    goto :goto_d

    .line 970
    nop

    :pswitch_data_1e
    .packed-switch 0x4
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1a
    .end packed-switch
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .registers 22
    .parameter "ar"

    .prologue
    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v19, v0

    .line 1241
    .local v19, oldSignalStrength:Landroid/telephony/SignalStrength;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v2, v0

    if-eqz v2, :cond_19

    .line 1243
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1260
    .end local p1
    :goto_10
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifySignalStrength()V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_18} :catch_8e

    .line 1265
    :goto_18
    return-void

    .line 1245
    .restart local p1
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v17, v0

    .line 1246
    .local v17, ints:[I
    const/16 v18, 0x2

    .line 1247
    .local v18, offset:I
    aget v2, v17, v18

    if-lez v2, :cond_7c

    aget v2, v17, v18

    neg-int v2, v2

    move v5, v2

    .line 1248
    .local v5, cdmaDbm:I
    :goto_31
    add-int/lit8 v2, v18, 0x1

    aget v2, v17, v2

    if-lez v2, :cond_80

    add-int/lit8 v2, v18, 0x1

    aget v2, v17, v2

    neg-int v2, v2

    move v6, v2

    .line 1249
    .local v6, cdmaEcio:I
    :goto_3d
    add-int/lit8 v2, v18, 0x2

    aget v2, v17, v2

    if-lez v2, :cond_84

    add-int/lit8 v2, v18, 0x2

    aget v2, v17, v2

    neg-int v2, v2

    move v7, v2

    .line 1250
    .local v7, evdoRssi:I
    :goto_49
    add-int/lit8 v2, v18, 0x3

    aget v2, v17, v2

    if-lez v2, :cond_88

    add-int/lit8 v2, v18, 0x3

    aget v2, v17, v2

    neg-int v2, v2

    move v8, v2

    .line 1251
    .local v8, evdoEcio:I
    :goto_55
    add-int/lit8 v2, v18, 0x4

    aget v2, v17, v2

    if-lez v2, :cond_8b

    add-int/lit8 v2, v18, 0x4

    aget v2, v17, v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_8b

    add-int/lit8 v2, v18, 0x4

    aget v2, v17, v2

    move v9, v2

    .line 1255
    .local v9, evdoSnr:I
    :goto_68
    new-instance v2, Landroid/telephony/SignalStrength;

    const/16 v3, 0x63

    const/4 v4, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_10

    .line 1247
    .end local v5           #cdmaDbm:I
    .end local v6           #cdmaEcio:I
    .end local v7           #evdoRssi:I
    .end local v8           #evdoEcio:I
    .end local v9           #evdoSnr:I
    :cond_7c
    const/16 v2, -0x78

    move v5, v2

    goto :goto_31

    .line 1248
    .restart local v5       #cdmaDbm:I
    :cond_80
    const/16 v2, -0xa0

    move v6, v2

    goto :goto_3d

    .line 1249
    .restart local v6       #cdmaEcio:I
    :cond_84
    const/16 v2, -0x78

    move v7, v2

    goto :goto_49

    .line 1250
    .restart local v7       #evdoRssi:I
    :cond_88
    const/4 v2, -0x1

    move v8, v2

    goto :goto_55

    .line 1251
    .restart local v8       #evdoEcio:I
    :cond_8b
    const/4 v2, -0x1

    move v9, v2

    goto :goto_68

    .line 1261
    .end local v5           #cdmaDbm:I
    .end local v6           #cdmaEcio:I
    .end local v7           #evdoRssi:I
    .end local v8           #evdoEcio:I
    .end local v17           #ints:[I
    .end local v18           #offset:I
    :catch_8e
    move-exception v2

    move-object/from16 v16, v2

    .line 1262
    .local v16, ex:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SignalStrength not notified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_18
.end method

.method private pollState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 914
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    .line 917
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_82

    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 955
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 965
    :goto_45
    return-void

    .line 919
    :pswitch_46
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 921
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 922
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 924
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_45

    .line 928
    :pswitch_59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 930
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 931
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 933
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_45

    .line 939
    :pswitch_6c
    const-string v0, "Radio Technology Change ongoing, setting SS to off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 942
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 943
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    goto :goto_45

    .line 917
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_46
        :pswitch_59
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch
.end method

.method private pollStateDone()V
    .registers 24

    .prologue
    .line 1035
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Poll ServiceState done: oldSS=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] newSS=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-eqz v19, :cond_308

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_308

    const/16 v19, 0x1

    move/from16 v12, v19

    .line 1041
    .local v12, hasRegistered:Z
    :goto_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_30e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-eqz v19, :cond_30e

    const/16 v19, 0x1

    move/from16 v9, v19

    .line 1045
    .local v9, hasDeregistered:Z
    :goto_6e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v19, v0

    if-eqz v19, :cond_314

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v19, v0

    if-nez v19, :cond_314

    const/16 v19, 0x1

    move/from16 v5, v19

    .line 1049
    .local v5, hasCdmaDataConnectionAttached:Z
    :goto_82
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v19, v0

    if-nez v19, :cond_31a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v19, v0

    if-eqz v19, :cond_31a

    const/16 v19, 0x1

    move/from16 v7, v19

    .line 1053
    .local v7, hasCdmaDataConnectionDetached:Z
    :goto_96
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_320

    const/16 v19, 0x1

    move/from16 v6, v19

    .line 1056
    .local v6, hasCdmaDataConnectionChanged:Z
    :goto_ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkType:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_326

    const/16 v19, 0x1

    move/from16 v11, v19

    .line 1058
    .local v11, hasNetworkTypeChanged:Z
    :goto_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_32c

    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1060
    .local v8, hasChanged:Z
    :goto_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-nez v19, :cond_332

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-eqz v19, :cond_332

    const/16 v19, 0x1

    move/from16 v14, v19

    .line 1062
    .local v14, hasRoamingOn:Z
    :goto_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-eqz v19, :cond_338

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v19

    if-nez v19, :cond_338

    const/16 v19, 0x1

    move/from16 v13, v19

    .line 1064
    .local v13, hasRoamingOff:Z
    :goto_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_33e

    const/16 v19, 0x1

    move/from16 v10, v19

    .line 1067
    .local v10, hasLocationChanged:Z
    :goto_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getState()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_152

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1a0

    .line 1069
    :cond_152
    const v19, 0xc3c4

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getState()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getState()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1075
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    .line 1076
    .local v18, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1077
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v17, v0

    .line 1082
    .local v17, tcl:Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1083
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1085
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    .line 1086
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkType:I

    .line 1088
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1092
    if-eqz v11, :cond_219

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkType:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_219
    if-eqz v12, :cond_224

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1101
    :cond_224
    if-eqz v8, :cond_2c3

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v19

    if-eqz v19, :cond_258

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    if-nez v19, :cond_344

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, eriText:Ljava/lang/String;
    :goto_24c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setCdmaEriText(Ljava/lang/String;)V

    .line 1118
    .end local v3           #eriText:Ljava/lang/String;
    :cond_258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .line 1122
    .local v16, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.numeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    if-nez v16, :cond_35b

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.iso-country"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_297
    :goto_297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v21

    if-eqz v21, :cond_3d9

    const-string/jumbo v21, "true"

    :goto_2ae
    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1152
    .end local v16           #operatorNumeric:Ljava/lang/String;
    :cond_2c3
    if-eqz v5, :cond_2ce

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1156
    :cond_2ce
    if-eqz v7, :cond_2d9

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1160
    :cond_2d9
    if-nez v6, :cond_2dd

    if-eqz v11, :cond_2e6

    .line 1161
    :cond_2dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection()V

    .line 1164
    :cond_2e6
    if-eqz v14, :cond_2f1

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1168
    :cond_2f1
    if-eqz v13, :cond_2fc

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1172
    :cond_2fc
    if-eqz v10, :cond_307

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 1175
    :cond_307
    return-void

    .line 1037
    .end local v5           #hasCdmaDataConnectionAttached:Z
    .end local v6           #hasCdmaDataConnectionChanged:Z
    .end local v7           #hasCdmaDataConnectionDetached:Z
    .end local v8           #hasChanged:Z
    .end local v9           #hasDeregistered:Z
    .end local v10           #hasLocationChanged:Z
    .end local v11           #hasNetworkTypeChanged:Z
    .end local v12           #hasRegistered:Z
    .end local v13           #hasRoamingOff:Z
    .end local v14           #hasRoamingOn:Z
    .end local v17           #tcl:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v18           #tss:Landroid/telephony/ServiceState;
    :cond_308
    const/16 v19, 0x0

    move/from16 v12, v19

    goto/16 :goto_52

    .line 1041
    .restart local v12       #hasRegistered:Z
    :cond_30e
    const/16 v19, 0x0

    move/from16 v9, v19

    goto/16 :goto_6e

    .line 1045
    .restart local v9       #hasDeregistered:Z
    :cond_314
    const/16 v19, 0x0

    move/from16 v5, v19

    goto/16 :goto_82

    .line 1049
    .restart local v5       #hasCdmaDataConnectionAttached:Z
    :cond_31a
    const/16 v19, 0x0

    move/from16 v7, v19

    goto/16 :goto_96

    .line 1053
    .restart local v7       #hasCdmaDataConnectionDetached:Z
    :cond_320
    const/16 v19, 0x0

    move/from16 v6, v19

    goto/16 :goto_ac

    .line 1056
    .restart local v6       #hasCdmaDataConnectionChanged:Z
    :cond_326
    const/16 v19, 0x0

    move/from16 v11, v19

    goto/16 :goto_c2

    .line 1058
    .restart local v11       #hasNetworkTypeChanged:Z
    :cond_32c
    const/16 v19, 0x0

    move/from16 v8, v19

    goto/16 :goto_d8

    .line 1060
    .restart local v8       #hasChanged:Z
    :cond_332
    const/16 v19, 0x0

    move/from16 v14, v19

    goto/16 :goto_f4

    .line 1062
    .restart local v14       #hasRoamingOn:Z
    :cond_338
    const/16 v19, 0x0

    move/from16 v13, v19

    goto/16 :goto_110

    .line 1064
    .restart local v13       #hasRoamingOff:Z
    :cond_33e
    const/16 v19, 0x0

    move/from16 v10, v19

    goto/16 :goto_126

    .line 1110
    .restart local v10       #hasLocationChanged:Z
    .restart local v17       #tcl:Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v18       #tss:Landroid/telephony/ServiceState;
    :cond_344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x10400f6

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #eriText:Ljava/lang/String;
    goto/16 :goto_24c

    .line 1127
    .end local v3           #eriText:Ljava/lang/String;
    .restart local v16       #operatorNumeric:Ljava/lang/String;
    :cond_35b
    const-string v15, ""

    .line 1129
    .local v15, isoCountryCode:Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x3

    :try_start_361
    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_372
    .catch Ljava/lang/NumberFormatException; {:try_start_361 .. :try_end_372} :catch_39b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_361 .. :try_end_372} :catch_3ba

    move-result-object v15

    .line 1137
    :goto_373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v19, v0

    const-string v20, "gsm.operator.iso-country"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move/from16 v19, v0

    if-eqz v19, :cond_297

    .line 1141
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_297

    .line 1131
    :catch_39b
    move-exception v19

    move-object/from16 v4, v19

    .line 1132
    .local v4, ex:Ljava/lang/NumberFormatException;
    const-string v19, "CDMA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "countryCodeForMcc error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_373

    .line 1133
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    :catch_3ba
    move-exception v19

    move-object/from16 v4, v19

    .line 1134
    .local v4, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v19, "CDMA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "countryCodeForMcc error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_373

    .line 1145
    .end local v4           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .end local v15           #isoCountryCode:Ljava/lang/String;
    :cond_3d9
    const-string v21, "false"

    goto/16 :goto_2ae
.end method

.method private queueNextSignalStrengthPoll()V
    .registers 4

    .prologue
    .line 1218
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dontPollSignalStrength:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1231
    :cond_10
    :goto_10
    return-void

    .line 1226
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1227
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1230
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10
.end method

.method private radioTechnologyToDataServiceState(I)I
    .registers 5
    .parameter "code"

    .prologue
    .line 1269
    const/4 v0, 0x1

    .line 1270
    .local v0, retVal:I
    packed-switch p1, :pswitch_data_e

    .line 1285
    :pswitch_4
    const-string v1, "CDMA"

    const-string v2, "Wrong radioTechnology code."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :goto_b
    :pswitch_b
    return v0

    .line 1282
    :pswitch_c
    const/4 v0, 0x0

    .line 1283
    goto :goto_b

    .line 1270
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method

.method private regCodeIsRoaming(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 1328
    const/4 v0, 0x5

    if-ne v0, p1, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private regCodeToServiceState(I)I
    .registers 6
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1294
    packed-switch p1, :pswitch_data_24

    .line 1307
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1308
    :goto_1f
    :pswitch_1f
    return v0

    :pswitch_20
    move v0, v3

    .line 1296
    goto :goto_1f

    :pswitch_22
    move v0, v3

    .line 1302
    goto :goto_1f

    .line 1294
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method private revertToNitzTime()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    .line 1623
    :cond_d
    :goto_d
    return-void

    .line 1617
    :cond_e
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavedAtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    .line 1620
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_d
.end method

.method private revertToNitzTimeZone()V
    .registers 4

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_14

    .line 1634
    :cond_13
    :goto_13
    return-void

    .line 1630
    :cond_14
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .registers 2
    .parameter "zoneId"

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 1581
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 1606
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1607
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1608
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1609
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1610
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1611
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .registers 6
    .parameter "zoneId"

    .prologue
    .line 1590
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1592
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 1593
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1595
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1597
    return-void
.end method

.method private setSignalStrengthDefaultValues()V
    .registers 15

    .prologue
    const/4 v2, -0x1

    .line 900
    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v13, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 902
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .registers 42
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 1390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    .line 1391
    .local v25, start:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " start="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " delay="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v25, p2

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :try_start_48
    const-string v33, "GMT"

    invoke-static/range {v33 .. v33}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 1399
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 1400
    const/16 v33, 0x10

    const/16 v34, 0x0

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1402
    const-string v33, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1404
    .local v20, nitzSubs:[Ljava/lang/String;
    const/16 v33, 0x0

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v31, v0

    .line 1405
    .local v31, year:I
    const/16 v33, 0x1

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1408
    const/16 v33, 0x1

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    const/16 v34, 0x1

    sub-int v19, v33, v34

    .line 1409
    .local v19, month:I
    const/16 v33, 0x2

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1411
    const/16 v33, 0x2

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1412
    .local v6, date:I
    const/16 v33, 0x5

    move-object v0, v5

    move/from16 v1, v33

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1414
    const/16 v33, 0x3

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1415
    .local v13, hour:I
    const/16 v33, 0xa

    move-object v0, v5

    move/from16 v1, v33

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1417
    const/16 v33, 0x4

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1418
    .local v18, minute:I
    const/16 v33, 0xc

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1420
    const/16 v33, 0x5

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1421
    .local v23, second:I
    const/16 v33, 0xd

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1423
    const/16 v33, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1cc

    const/16 v33, 0x1

    move/from16 v24, v33

    .line 1425
    .local v24, sign:Z
    :goto_f5
    const/16 v33, 0x6

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1427
    .local v29, tzOffset:I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x8

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_1d2

    const/16 v33, 0x7

    aget-object v33, v20, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v7, v33

    .line 1437
    .local v7, dst:I
    :goto_114
    if-eqz v24, :cond_1d8

    const/16 v33, 0x1

    :goto_118
    mul-int v33, v33, v29

    mul-int/lit8 v33, v33, 0xf

    mul-int/lit8 v33, v33, 0x3c

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    .line 1439
    const/16 v32, 0x0

    .line 1445
    .local v32, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x9

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_143

    .line 1446
    const/16 v33, 0x8

    aget-object v33, v20, v33

    const/16 v34, 0x21

    const/16 v35, 0x2f

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v30

    .line 1447
    .local v30, tzname:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    .line 1450
    .end local v30           #tzname:Ljava/lang/String;
    :cond_143
    const-string v33, "gsm.operator.iso-country"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1452
    .local v15, iso:Ljava/lang/String;
    if-nez v32, :cond_16e

    .line 1454
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move/from16 v33, v0

    if-eqz v33, :cond_16e

    .line 1455
    if-eqz v15, :cond_1df

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_1df

    .line 1456
    if-eqz v7, :cond_1dc

    const/16 v33, 0x1

    :goto_15f
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move/from16 v0, v29

    move/from16 v1, v33

    move-wide/from16 v2, v34

    move-object v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    .line 1469
    :cond_16e
    :goto_16e
    if-nez v32, :cond_192

    .line 1474
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 1475
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    .line 1476
    if-eqz v7, :cond_1f8

    const/16 v33, 0x1

    :goto_182
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    .line 1477
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    .line 1480
    :cond_192
    if-eqz v32, :cond_1b0

    .line 1481
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v33

    if-eqz v33, :cond_1a5

    .line 1482
    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1484
    :cond_1a5
    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1487
    :cond_1b0
    const-string v33, "gsm.ignore-nitz"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1488
    .local v14, ignore:Ljava/lang/String;
    if-eqz v14, :cond_1fb

    const-string/jumbo v33, "yes"

    move-object v0, v14

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1fb

    .line 1489
    const-string v33, "CDMA"

    const-string v34, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v13           #hour:I
    .end local v14           #ignore:Ljava/lang/String;
    .end local v15           #iso:Ljava/lang/String;
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v23           #second:I
    .end local v24           #sign:Z
    .end local v29           #tzOffset:I
    .end local v31           #year:I
    .end local v32           #zone:Ljava/util/TimeZone;
    :goto_1cb
    return-void

    .line 1423
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v13       #hour:I
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v23       #second:I
    .restart local v31       #year:I
    :cond_1cc
    const/16 v33, 0x0

    move/from16 v24, v33

    goto/16 :goto_f5

    .line 1427
    .restart local v24       #sign:Z
    .restart local v29       #tzOffset:I
    :cond_1d2
    const/16 v33, 0x0

    move/from16 v7, v33

    goto/16 :goto_114

    .line 1437
    .restart local v7       #dst:I
    :cond_1d8
    const/16 v33, -0x1

    goto/16 :goto_118

    .line 1456
    .restart local v15       #iso:Ljava/lang/String;
    .restart local v32       #zone:Ljava/util/TimeZone;
    :cond_1dc
    const/16 v33, 0x0

    goto :goto_15f

    .line 1464
    :cond_1df
    if-eqz v7, :cond_1f5

    const/16 v33, 0x1

    :goto_1e3
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v33

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_1f2
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_1f2} :catch_262

    move-result-object v32

    goto/16 :goto_16e

    :cond_1f5
    const/16 v33, 0x0

    goto :goto_1e3

    .line 1476
    :cond_1f8
    const/16 v33, 0x0

    goto :goto_182

    .line 1494
    .restart local v14       #ignore:Ljava/lang/String;
    :cond_1fb
    :try_start_1fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    sub-long v16, v33, p2

    .line 1502
    .local v16, millisSinceNitzReceived:J
    const-wide/16 v33, 0x0

    cmp-long v33, v16, v33

    if-gez v33, :cond_288

    .line 1504
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22c
    .catchall {:try_start_1fb .. :try_end_22c} :catchall_46c

    .line 1554
    :try_start_22c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1555
    .local v8, end:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_260
    .catch Ljava/lang/RuntimeException; {:try_start_22c .. :try_end_260} :catch_262

    goto/16 :goto_1cb

    .line 1558
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:I
    .end local v7           #dst:I
    .end local v8           #end:J
    .end local v13           #hour:I
    .end local v14           #ignore:Ljava/lang/String;
    .end local v15           #iso:Ljava/lang/String;
    .end local v16           #millisSinceNitzReceived:J
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v23           #second:I
    .end local v24           #sign:Z
    .end local v29           #tzOffset:I
    .end local v31           #year:I
    .end local v32           #zone:Ljava/util/TimeZone;
    :catch_262
    move-exception v33

    move-object/from16 v10, v33

    .line 1559
    .local v10, ex:Ljava/lang/RuntimeException;
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1cb

    .line 1510
    .end local v10           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:I
    .restart local v7       #dst:I
    .restart local v13       #hour:I
    .restart local v14       #ignore:Ljava/lang/String;
    .restart local v15       #iso:Ljava/lang/String;
    .restart local v16       #millisSinceNitzReceived:J
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v23       #second:I
    .restart local v24       #sign:Z
    .restart local v29       #tzOffset:I
    .restart local v31       #year:I
    .restart local v32       #zone:Ljava/util/TimeZone;
    :cond_288
    const-wide/32 v33, 0x7fffffff

    cmp-long v33, v16, v33

    if-lez v33, :cond_2e8

    .line 1512
    :try_start_28f
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/32 v35, 0x5265c00

    div-long v35, v16, v35

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " days"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b2
    .catchall {:try_start_28f .. :try_end_2b2} :catchall_46c

    .line 1554
    :try_start_2b2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1555
    .restart local v8       #end:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2e6
    .catch Ljava/lang/RuntimeException; {:try_start_2b2 .. :try_end_2e6} :catch_262

    goto/16 :goto_1cb

    .line 1519
    .end local v8           #end:J
    :cond_2e8
    const/16 v33, 0xe

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v34, v0

    :try_start_2ef
    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1521
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v33

    if-eqz v33, :cond_3a9

    .line 1525
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v11, v33, v35

    .line 1526
    .local v11, gained:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v35, v0

    sub-long v27, v33, v35

    .line 1527
    .local v27, timeSinceLastUpdate:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    move-object/from16 v33, v0

    const-string v34, "nitz_update_spacing"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    move/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 1529
    .local v22, nitzUpdateSpacing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    move-object/from16 v33, v0

    const-string v34, "nitz_update_diff"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    move/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 1532
    .local v21, nitzUpdateDiff:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_359

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v33, v0

    cmp-long v33, v27, v33

    if-gtz v33, :cond_359

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v33

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v33, v33, v35

    if-lez v33, :cond_407

    .line 1534
    :cond_359
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: Auto updating time of day to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " NITZ receive delay="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms gained="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1549
    .end local v11           #gained:J
    .end local v21           #nitzUpdateDiff:I
    .end local v22           #nitzUpdateSpacing:I
    .end local v27           #timeSinceLastUpdate:J
    :cond_3a9
    const-string v33, "CDMA"

    const-string v34, "NITZ: update nitz time property"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const-string v33, "gsm.nitz.time"

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    .line 1552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J
    :try_end_3d1
    .catchall {:try_start_2ef .. :try_end_3d1} :catchall_46c

    .line 1554
    :try_start_3d1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1555
    .restart local v8       #end:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_405
    .catch Ljava/lang/RuntimeException; {:try_start_3d1 .. :try_end_405} :catch_262

    goto/16 :goto_1cb

    .line 1540
    .end local v8           #end:J
    .restart local v11       #gained:J
    .restart local v21       #nitzUpdateDiff:I
    .restart local v22       #nitzUpdateSpacing:I
    .restart local v27       #timeSinceLastUpdate:J
    :cond_407
    :try_start_407
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: ignore, a previous update was "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms ago and gained="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_436
    .catchall {:try_start_407 .. :try_end_436} :catchall_46c

    .line 1554
    :try_start_436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1555
    .restart local v8       #end:J
    const-string v33, "CDMA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v35, v8, v25

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1cb

    .line 1554
    .end local v8           #end:J
    .end local v11           #gained:J
    .end local v16           #millisSinceNitzReceived:J
    .end local v21           #nitzUpdateDiff:I
    .end local v22           #nitzUpdateSpacing:I
    .end local v27           #timeSinceLastUpdate:J
    :catchall_46c
    move-exception v33

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1555
    .restart local v8       #end:J
    const-string v34, "CDMA"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NITZ: end="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " dur="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v8, v25

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1554
    throw v33
    :try_end_4a2
    .catch Ljava/lang/RuntimeException; {:try_start_436 .. :try_end_4a2} :catch_262
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 228
    return-void
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 232
    const-string v0, "CdmaServiceStateTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentCdmaDataConnectionState()I
    .registers 2

    .prologue
    .line 1318
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    return v0
.end method

.method getImsi()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1690
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1693
    .local v0, operatorNumeric:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1696
    :goto_29
    return-object v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public getMdnNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method getOtasp()I
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 1732
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_48

    .line 1733
    :cond_e
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOtasp: bad mMin=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v0, 0x1

    .line 1744
    .local v0, provisioningState:I
    :goto_2f
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOtasp: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    return v0

    .line 1736
    .end local v0           #provisioningState:I
    :cond_48
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v2, "1111110111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string/jumbo v1, "test_cdma_setup"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1739
    :cond_69
    const/4 v0, 0x2

    .restart local v0       #provisioningState:I
    goto :goto_2f

    .line 1741
    .end local v0           #provisioningState:I
    :cond_6b
    const/4 v0, 0x3

    .restart local v0       #provisioningState:I
    goto :goto_2f
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .parameter "msg"

    .prologue
    .line 311
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    packed-switch v4, :pswitch_data_402

    .line 554
    :pswitch_8
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message with number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local p1
    :cond_25
    :goto_25
    :pswitch_25
    return-void

    .line 318
    .restart local p1
    :pswitch_26
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    .line 319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    move v4, v0

    if-eqz v4, :cond_4b

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/16 v5, 0x1b

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedToRegForRuimLoaded:Z

    .line 325
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 326
    const-string v4, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_25

    .line 336
    :pswitch_6b
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_25

    .line 348
    :pswitch_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto :goto_25

    .line 353
    :pswitch_90
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto :goto_25

    .line 360
    :pswitch_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isGsm()Z

    move-result v4

    if-nez v4, :cond_25

    .line 364
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 365
    .local v10, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_25

    .line 371
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_c4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 373
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_147

    .line 374
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 375
    .local v23, states:[Ljava/lang/String;
    const/4 v5, -0x1

    .line 376
    .local v5, baseStationId:I
    const v6, 0x7fffffff

    .line 377
    .local v6, baseStationLatitude:I
    const v7, 0x7fffffff

    .line 378
    .local v7, baseStationLongitude:I
    const/4 v8, -0x1

    .line 379
    .local v8, systemId:I
    const/4 v9, -0x1

    .line 381
    .local v9, networkId:I
    move-object/from16 v0, v23

    array-length v0, v0

    move v4, v0

    const/16 v10, 0x9

    if-le v4, v10, :cond_137

    .line 383
    .end local v10           #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x4

    :try_start_ee
    aget-object v4, v23, v4

    if-eqz v4, :cond_f9

    .line 384
    const/4 v4, 0x4

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 386
    :cond_f9
    const/4 v4, 0x5

    aget-object v4, v23, v4

    if-eqz v4, :cond_105

    .line 387
    const/4 v4, 0x5

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 389
    :cond_105
    const/4 v4, 0x6

    aget-object v4, v23, v4

    if-eqz v4, :cond_111

    .line 390
    const/4 v4, 0x6

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 393
    :cond_111
    if-nez v6, :cond_11b

    if-nez v7, :cond_11b

    .line 394
    const v6, 0x7fffffff

    .line 395
    const v7, 0x7fffffff

    .line 397
    :cond_11b
    const/16 v4, 0x8

    aget-object v4, v23, v4

    if-eqz v4, :cond_129

    .line 398
    const/16 v4, 0x8

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 400
    :cond_129
    const/16 v4, 0x9

    aget-object v4, v23, v4

    if-eqz v4, :cond_137

    .line 401
    const/16 v4, 0x9

    aget-object v4, v23, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_136} :catch_14c

    move-result v9

    .line 408
    :cond_137
    :goto_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 415
    .end local v5           #baseStationId:I
    .end local v6           #baseStationLatitude:I
    .end local v7           #baseStationLongitude:I
    .end local v8           #systemId:I
    .end local v9           #networkId:I
    .end local v23           #states:[Ljava/lang/String;
    :cond_147
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_25

    .line 403
    .restart local v5       #baseStationId:I
    .restart local v6       #baseStationLatitude:I
    .restart local v7       #baseStationLongitude:I
    .restart local v8       #systemId:I
    .restart local v9       #networkId:I
    .restart local v23       #states:[Ljava/lang/String;
    :catch_14c
    move-exception v4

    move-object v12, v4

    .line 404
    .local v12, ex:Ljava/lang/NumberFormatException;
    const-string v4, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error parsing cell location data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    .line 420
    .end local v5           #baseStationId:I
    .end local v6           #baseStationLatitude:I
    .end local v7           #baseStationLongitude:I
    .end local v8           #systemId:I
    .end local v9           #networkId:I
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    .end local v23           #states:[Ljava/lang/String;
    .restart local p1
    :pswitch_167
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 421
    .restart local v10       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_25

    .line 425
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_17c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 427
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_25

    .line 428
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v11, v0

    .line 429
    .local v11, cdmaSubscription:[Ljava/lang/String;
    if-eqz v11, :cond_2f0

    array-length v4, v11

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2f0

    .line 430
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 431
    const/4 v4, 0x1

    aget-object v4, v11, v4

    if-eqz v4, :cond_1db

    .line 432
    const/4 v4, 0x1

    aget-object v4, v11, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 433
    .local v22, sid:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move v4, v0

    new-array v4, v4, [I

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 434
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1bb
    move-object/from16 v0, v22

    array-length v0, v0

    move v4, v0

    if-ge v13, v4, :cond_1db

    .line 436
    :try_start_1c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    move-object v4, v0

    aget-object v5, v22, v13

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v13
    :try_end_1ce
    .catch Ljava/lang/NumberFormatException; {:try_start_1c1 .. :try_end_1ce} :catch_1d1

    .line 434
    :goto_1ce
    add-int/lit8 v13, v13, 0x1

    goto :goto_1bb

    .line 437
    :catch_1d1
    move-exception v4

    move-object v12, v4

    .line 438
    .restart local v12       #ex:Ljava/lang/NumberFormatException;
    const-string v4, "CDMA"

    const-string v5, "error parsing system id: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ce

    .line 442
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    .end local v13           #i:I
    .end local v22           #sid:[Ljava/lang/String;
    :cond_1db
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION SID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v4, 0x2

    aget-object v4, v11, v4

    if-eqz v4, :cond_22a

    .line 445
    const/4 v4, 0x2

    aget-object v4, v11, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 446
    .local v15, nid:[Ljava/lang/String;
    array-length v4, v15

    new-array v4, v4, [I

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 447
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_20d
    array-length v4, v15

    if-ge v13, v4, :cond_22a

    .line 449
    :try_start_210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    move-object v4, v0

    aget-object v5, v15, v13

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v13
    :try_end_21d
    .catch Ljava/lang/NumberFormatException; {:try_start_210 .. :try_end_21d} :catch_220

    .line 447
    :goto_21d
    add-int/lit8 v13, v13, 0x1

    goto :goto_20d

    .line 450
    :catch_220
    move-exception v4

    move-object v12, v4

    .line 451
    .restart local v12       #ex:Ljava/lang/NumberFormatException;
    const-string v4, "CDMA"

    const-string v5, "error parsing network id: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21d

    .line 455
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    .end local v13           #i:I
    .end local v15           #nid:[Ljava/lang/String;
    :cond_22a
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION NID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v4, 0x3

    aget-object v4, v11, v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 457
    const/4 v4, 0x4

    aget-object v4, v11, v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 458
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION MDN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v21

    .line 463
    .local v21, otaspMode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    move/from16 v19, v0

    .line 464
    .local v19, oldOtaspMode:I
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    if-eqz v4, :cond_29e

    .line 468
    const-string v4, "CDMA"

    const-string v5, "call cdmaForSubscriptionInfoReady.notifyRegistrants()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 471
    :cond_29e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    move v4, v0

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_2df

    .line 472
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call phone.notifyOtaspChanged old otaspMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new otaspMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyOtaspChanged(I)V

    .line 476
    :cond_2df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 479
    .end local v19           #oldOtaspMode:I
    .end local v21           #otaspMode:I
    :cond_2f0
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing cdmaSubscription params num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 488
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v11           #cdmaSubscription:[Ljava/lang/String;
    .restart local p1
    :pswitch_30b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 492
    :pswitch_31d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 494
    .restart local v10       #ar:Landroid/os/AsyncResult;
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v18, p1, v4

    check-cast v18, Ljava/lang/String;

    .line 495
    .local v18, nitzString:Ljava/lang/String;
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 497
    .local v16, nitzReceiveTime:J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_25

    .line 503
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v16           #nitzReceiveTime:J
    .end local v18           #nitzString:Ljava/lang/String;
    .restart local p1
    :pswitch_34f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 507
    .restart local v10       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dontPollSignalStrength:Z

    .line 509
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_25

    .line 513
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_25

    .line 517
    :pswitch_369
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 519
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_25

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x1f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 526
    .end local v10           #ar:Landroid/os/AsyncResult;
    :pswitch_389
    const-string v4, "[CdmaServiceStateTracker] ERI file has been loaded, repolling."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_25

    .line 531
    :pswitch_396
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/AsyncResult;

    .line 532
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_25

    .line 533
    move-object v0, v10

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v14, v0

    .line 534
    .local v14, ints:[I
    const/4 v4, 0x0

    aget v20, v14, v4

    .line 535
    .local v20, otaStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    const/16 v4, 0x8

    move/from16 v0, v20

    move v1, v4

    if-eq v0, v1, :cond_3c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    const/16 v4, 0xa

    move/from16 v0, v20

    move v1, v4

    if-ne v0, v1, :cond_25

    .line 537
    :cond_3c8
    const-string v4, "CDMA"

    const-string v5, "Received OTA_PROGRAMMING Complete,Reload MDN "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v4, v0

    const/16 v5, 0x22

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_25

    .line 544
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v14           #ints:[I
    .end local v20           #otaStatus:I
    .restart local p1
    :pswitch_3e2
    monitor-enter p0

    .line 545
    :try_start_3e3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    move v4, v0

    if-eqz v4, :cond_3fb

    .line 546
    const-string v4, "EVENT_SET_RADIO_OFF, turn radio off now."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 547
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V

    .line 548
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 550
    :cond_3fb
    monitor-exit p0

    goto/16 :goto_25

    :catchall_3fe
    move-exception v4

    monitor-exit p0
    :try_end_400
    .catchall {:try_start_3e3 .. :try_end_400} :catchall_3fe

    throw v4

    .line 311
    nop

    :pswitch_data_402
    .packed-switch 0x1
        :pswitch_89
        :pswitch_8
        :pswitch_94
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_30b
        :pswitch_31d
        :pswitch_34f
        :pswitch_25
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_369
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_167
        :pswitch_167
        :pswitch_26
        :pswitch_364
        :pswitch_8
        :pswitch_8
        :pswitch_90
        :pswitch_c4
        :pswitch_8
        :pswitch_8
        :pswitch_17c
        :pswitch_6b
        :pswitch_389
        :pswitch_396
        :pswitch_3e2
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .registers 25
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 659
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    move-object v4, v0

    if-eq v3, v4, :cond_d

    .line 897
    .end local p1
    :cond_c
    :goto_c
    return-void

    .line 661
    .restart local p1
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v3, v0

    if-eqz v3, :cond_196

    .line 662
    const/4 v11, 0x0

    .line 664
    .local v11, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v3, v0

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2c

    .line 665
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v11

    .line 668
    :cond_2c
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v11, v3, :cond_34

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_c

    .line 674
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_47

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_c

    .line 680
    :cond_47
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v11, v3, :cond_5b

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v11, v3, :cond_5b

    .line 682
    const-string v3, "CDMA"

    const-string v4, "RIL implementation has returned an error where it must succeed"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    .end local v11           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5b
    :goto_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollingContext:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-nez v3, :cond_c

    .line 837
    const/4 v14, 0x0

    .line 838
    .local v14, namMatch:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v3

    if-nez v3, :cond_8b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isHomeSid(I)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 839
    const/4 v14, 0x1

    .line 843
    :cond_8b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSubscriptionFromRuim:Z

    move v3, v0

    if-eqz v3, :cond_41b

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 850
    :goto_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 852
    const/4 v13, 0x1

    .line 853
    .local v13, isPrlLoaded:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 854
    const/4 v13, 0x0

    .line 856
    :cond_d3
    if-nez v13, :cond_42a

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 878
    :cond_de
    :goto_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v19

    .line 879
    .local v19, roamingIndicator:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v5, v0

    move-object v0, v4

    move/from16 v1, v19

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v5, v0

    move-object v0, v4

    move/from16 v1, v19

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". mCdmaRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPrlLoaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". namMatch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mIsInPrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRoamingIndicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDefaultRoamingIndicator= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 894
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto/16 :goto_c

    .line 687
    .end local v13           #isPrlLoaded:Z
    .end local v14           #namMatch:Z
    .end local v19           #roamingIndicator:I
    .restart local p1
    :cond_196
    packed-switch p1, :pswitch_data_496

    .line 824
    :try_start_199
    const-string v3, "CDMA"

    const-string v4, "RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catch Ljava/lang/RuntimeException; {:try_start_199 .. :try_end_1a0} :catch_1a2

    goto/16 :goto_5b

    .line 829
    .end local p1
    :catch_1a2
    move-exception v3

    move-object v12, v3

    .line 830
    .local v12, ex:Ljava/lang/RuntimeException;
    const-string v3, "CDMA"

    const-string v4, "Exception while polling service state. Probably malformed RIL response."

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 689
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .restart local p1
    :pswitch_1ad
    :try_start_1ad
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 691
    .local v20, states:[Ljava/lang/String;
    const/16 v18, 0x4

    .line 692
    .local v18, registrationState:I
    const/16 v16, -0x1

    .line 693
    .local v16, radioTechnology:I
    const/4 v4, -0x1

    .line 695
    .local v4, baseStationId:I
    const v5, 0x7fffffff

    .line 697
    .local v5, baseStationLatitude:I
    const v6, 0x7fffffff

    .line 698
    .local v6, baseStationLongitude:I
    const/4 v9, 0x0

    .line 699
    .local v9, cssIndicator:I
    const/4 v7, 0x0

    .line 700
    .local v7, systemId:I
    const/4 v8, 0x0

    .line 701
    .local v8, networkId:I
    const/16 v19, -0x1

    .line 702
    .restart local v19       #roamingIndicator:I
    const/16 v21, 0x0

    .line 703
    .local v21, systemIsInPrl:I
    const/4 v10, 0x0

    .line 704
    .local v10, defaultRoamingIndicator:I
    const/16 v17, 0x0

    .line 706
    .local v17, reasonForDenial:I
    move-object/from16 v0, v20

    array-length v0, v0

    move v3, v0
    :try_end_1d4
    .catch Ljava/lang/RuntimeException; {:try_start_1ad .. :try_end_1d4} :catch_1a2

    const/16 v11, 0xe

    if-ne v3, v11, :cond_347

    .line 708
    const/4 v3, 0x0

    :try_start_1d9
    aget-object v3, v20, v3

    if-eqz v3, :cond_1e4

    .line 709
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 711
    :cond_1e4
    const/4 v3, 0x3

    aget-object v3, v20, v3

    if-eqz v3, :cond_1f0

    .line 712
    const/4 v3, 0x3

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 714
    :cond_1f0
    const/4 v3, 0x4

    aget-object v3, v20, v3

    if-eqz v3, :cond_1fc

    .line 715
    const/4 v3, 0x4

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 717
    :cond_1fc
    const/4 v3, 0x5

    aget-object v3, v20, v3

    if-eqz v3, :cond_208

    .line 718
    const/4 v3, 0x5

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 720
    :cond_208
    const/4 v3, 0x6

    aget-object v3, v20, v3

    if-eqz v3, :cond_214

    .line 721
    const/4 v3, 0x6

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 724
    :cond_214
    if-nez v5, :cond_21e

    if-nez v6, :cond_21e

    .line 725
    const v5, 0x7fffffff

    .line 726
    const v6, 0x7fffffff

    .line 728
    :cond_21e
    const/4 v3, 0x7

    aget-object v3, v20, v3

    if-eqz v3, :cond_22a

    .line 729
    const/4 v3, 0x7

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 731
    :cond_22a
    const/16 v3, 0x8

    aget-object v3, v20, v3

    if-eqz v3, :cond_238

    .line 732
    const/16 v3, 0x8

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 734
    :cond_238
    const/16 v3, 0x9

    aget-object v3, v20, v3

    if-eqz v3, :cond_246

    .line 735
    const/16 v3, 0x9

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 737
    :cond_246
    const/16 v3, 0xa

    aget-object v3, v20, v3

    if-eqz v3, :cond_254

    .line 738
    const/16 v3, 0xa

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 740
    :cond_254
    const/16 v3, 0xb

    aget-object v3, v20, v3

    if-eqz v3, :cond_262

    .line 741
    const/16 v3, 0xb

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 743
    :cond_262
    const/16 v3, 0xc

    aget-object v3, v20, v3

    if-eqz v3, :cond_270

    .line 744
    const/16 v3, 0xc

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 746
    :cond_270
    const/16 v3, 0xd

    aget-object v3, v20, v3

    if-eqz v3, :cond_27e

    .line 747
    const/16 v3, 0xd

    aget-object v3, v20, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d9 .. :try_end_27d} :catch_32b
    .catch Ljava/lang/RuntimeException; {:try_start_1d9 .. :try_end_27d} :catch_1a2

    move-result v17

    .line 758
    :cond_27e
    :goto_27e
    :try_start_27e
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 762
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_364

    const/16 v3, 0xa

    aget-object v3, v20, v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_364

    const/4 v3, 0x1

    :goto_29c
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/telephony/ServiceState;->setState(I)V

    .line 766
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->radioTechnologyToDataServiceState(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCdmaDataConnectionState:I

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 769
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newNetworkType:I

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    invoke-virtual {v3, v9}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    invoke-virtual {v3, v7, v8}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    .line 773
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 774
    if-nez v21, :cond_367

    const/4 v3, 0x0

    :goto_2e8
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    .line 775
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 782
    if-nez v17, :cond_369

    .line 783
    const-string v3, "General"

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 790
    :goto_303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5b

    .line 791
    .end local v4           #baseStationId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration denied, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 749
    .restart local v4       #baseStationId:I
    :catch_32b
    move-exception v3

    move-object v12, v3

    .line 750
    .local v12, ex:Ljava/lang/NumberFormatException;
    const-string v3, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error parsing RegistrationState: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27e

    .line 753
    .end local v12           #ex:Ljava/lang/NumberFormatException;
    :cond_347
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #baseStationId:I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 got "

    .end local v5           #baseStationLatitude:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 762
    .restart local v4       #baseStationId:I
    .restart local v5       #baseStationLatitude:I
    :cond_364
    const/4 v3, 0x0

    goto/16 :goto_29c

    .line 774
    :cond_367
    const/4 v3, 0x1

    goto :goto_2e8

    .line 784
    :cond_369
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_377

    .line 785
    const-string v3, "Authentication Failure"

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_303

    .line 787
    :cond_377
    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_303

    .line 796
    .end local v4           #baseStationId:I
    .end local v5           #baseStationLatitude:I
    .end local v6           #baseStationLongitude:I
    .end local v7           #systemId:I
    .end local v8           #networkId:I
    .end local v9           #cssIndicator:I
    .end local v10           #defaultRoamingIndicator:I
    .end local v16           #radioTechnology:I
    .end local v17           #reasonForDenial:I
    .end local v18           #registrationState:I
    .end local v19           #roamingIndicator:I
    .end local v20           #states:[Ljava/lang/String;
    .end local v21           #systemIsInPrl:I
    .restart local p1
    :pswitch_37f
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 798
    .local v15, opNames:[Ljava/lang/String;
    if-eqz v15, :cond_412

    array-length v3, v15

    const/4 v4, 0x3

    if-lt v3, v4, :cond_412

    .line 800
    const/4 v3, 0x2

    aget-object v3, v15, v3

    if-eqz v3, :cond_3ac

    const/4 v3, 0x2

    aget-object v3, v15, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3ac

    const-string v3, "00000"

    const/4 v4, 0x2

    aget-object v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3df

    .line 802
    :cond_3ac
    const/4 v3, 0x2

    sget-object v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const-string v5, "00000"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 811
    :cond_3df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isNVReady()Z

    move-result v3

    if-eqz v3, :cond_3ff

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, v15, v5

    const/4 v6, 0x2

    aget-object v6, v15, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 816
    :cond_3ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v4, v15, v4

    const/4 v5, 0x1

    aget-object v5, v15, v5

    const/4 v6, 0x2

    aget-object v6, v15, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 819
    :cond_412
    const-string v3, "CDMA"

    const-string v4, "error parsing opNames"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_419
    .catch Ljava/lang/RuntimeException; {:try_start_27e .. :try_end_419} :catch_1a2

    goto/16 :goto_5b

    .line 846
    .end local v15           #opNames:[Ljava/lang/String;
    .restart local v14       #namMatch:Z
    :cond_41b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto/16 :goto_ac

    .line 858
    .restart local v13       #isPrlLoaded:Z
    :cond_42a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v3

    if-nez v3, :cond_de

    .line 859
    if-nez v14, :cond_448

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move v3, v0

    if-nez v3, :cond_448

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_de

    .line 862
    :cond_448
    if-eqz v14, :cond_45c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move v3, v0

    if-nez v3, :cond_45c

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_de

    .line 864
    :cond_45c
    if-nez v14, :cond_474

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    move v3, v0

    if-eqz v3, :cond_474

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_de

    .line 869
    :cond_474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v3, v0

    const/4 v4, 0x2

    if-gt v3, v4, :cond_487

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_de

    .line 873
    :cond_487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_de

    .line 687
    :pswitch_data_496
    .packed-switch 0x18
        :pswitch_1ad
        :pswitch_37f
    .end packed-switch
.end method

.method isConcurrentVoiceAndData()Z
    .registers 2

    .prologue
    .line 1669
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .registers 2

    .prologue
    .line 1706
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 1750
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    return-void
.end method

.method protected powerOffRadioSafely()V
    .registers 7

    .prologue
    .line 582
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 584
    .local v1, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 585
    .local v2, msg:Landroid/os/Message;
    const-string/jumbo v3, "radioTurnedOff"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 587
    monitor-enter p0

    .line 588
    :try_start_10
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v3, :cond_32

    .line 589
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    .line 590
    .local v0, currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v3, :cond_34

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v3, :cond_34

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v3, :cond_34

    .line 593
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 594
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 595
    const-string v3, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V

    .line 609
    .end local v0           #currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :cond_32
    :goto_32
    monitor-exit p0

    .line 610
    return-void

    .line 598
    .restart local v0       #currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :cond_34
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 599
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 600
    const/16 v3, 0x26

    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendEmptyMessageDelayed(IJ)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 601
    const-string v3, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 602
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_32

    .line 609
    .end local v0           #currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :catchall_4d
    move-exception v3

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_10 .. :try_end_4f} :catchall_4d

    throw v3

    .line 604
    .restart local v0       #currentState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :cond_50
    :try_start_50
    const-string v3, "CDMA"

    const-string v4, "Cannot send delayed Msg, turn off radio right away."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_4d

    goto :goto_32
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1715
    monitor-enter p0

    .line 1716
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_19

    .line 1717
    const-string v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1718
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->removeMessages(I)V

    .line 1719
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->hangupAndPowerOff()V

    .line 1720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1721
    const/4 v0, 0x1

    monitor-exit p0

    .line 1723
    :goto_18
    return v0

    :cond_19
    monitor-exit p0

    move v0, v1

    goto :goto_18

    .line 1724
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method registerForCdmaDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 255
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 258
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    if-nez v1, :cond_11

    .line 259
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 261
    :cond_11
    return-void
.end method

.method registerForCdmaDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 274
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 277
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionState:I

    if-eqz v1, :cond_11

    .line 278
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 280
    :cond_11
    return-void
.end method

.method registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 236
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_15

    .line 240
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 242
    :cond_15
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 293
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 297
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 299
    :cond_13
    return-void
.end method

.method protected setPowerStateToDesired()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 564
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_17

    .line 566
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 578
    :cond_16
    :goto_16
    return-void

    .line 567
    :cond_17
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 568
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 569
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataConnectionAsDesired()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 570
    const v1, 0xc3bc

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getStateInString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_51

    move v3, v4

    :goto_44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 576
    :cond_4d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->powerOffRadioSafely()V

    goto :goto_16

    :cond_51
    move v3, v5

    .line 570
    goto :goto_44
.end method

.method unregisterForCdmaDataConnectionAttached(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 265
    return-void
.end method

.method unregisterForCdmaDataConnectionDetached(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaDataConnectionDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 284
    return-void
.end method

.method unregisterForNetworkAttach(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 246
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 303
    return-void
.end method

.method protected updateSpnDisplay()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 622
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, plmn:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 628
    if-eqz v1, :cond_5c

    move v2, v8

    .line 629
    .local v2, showPlmn:Z
    :goto_13
    const-string v3, "CDMA"

    const-string/jumbo v4, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    const-string/jumbo v3, "showSpn"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 635
    const-string/jumbo v3, "spn"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string/jumbo v3, "showPlmn"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 637
    const-string/jumbo v3, "plmn"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 641
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #showPlmn:Z
    :cond_59
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 642
    return-void

    :cond_5c
    move v2, v7

    .line 628
    goto :goto_13
.end method
