.class public Lcom/google/android/street/Street;
.super Landroid/app/Activity;
.source "Street.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/Street$DrdListener;
    }
.end annotation


# static fields
.field public static final IN_EMULATOR:Z

.field private static mGlobalStateInitialized:Z

.field private static sStartFrameConfig:Lcom/google/android/street/PanoramaConfig;

.field private static final sStartFrameLock:Ljava/lang/Object;

.field private static sStartFrameReason:Ljava/lang/String;

.field private static sStartFrameTimestampMs:J


# instance fields
.field private mDefaultDisplay:Landroid/view/Display;

.field private volatile mDrdNetworkError:I

.field private mHardShutdown:Z

.field private mHttpCache:Lcom/google/android/street/HttpCache;

.field private mIsTablet:Z

.field private mLocation:Landroid/location/Location;

.field private mMapZoom:I

.field private mNetworkAvailable:Z

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPanoramaManager:Lcom/google/android/street/PanoramaManager;

.field private mRegisteredForNetworkConnectivity:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStreetView:Lcom/google/android/street/StreetView;

.field protected mTitleText:Landroid/widget/TextView;

.field private timer:Lcom/google/android/street/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/street/Street;->sStartFrameLock:Ljava/lang/Object;

    .line 63
    const-string v0, "Cold start"

    sput-object v0, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/street/Street;->sStartFrameTimestampMs:J

    .line 183
    invoke-static {}, Lcom/google/android/street/Street;->inEmulator()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/street/Street;->IN_EMULATOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/street/Street;->mMapZoom:I

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/Street;->timer:Lcom/google/android/street/Timer;

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/street/Street;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/street/Street;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/street/Street;)Lcom/google/android/street/StreetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/street/Street;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/street/Street;->checkNetworkAvailability()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/street/Street;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->onNetworkToggle(Z)V

    return-void
.end method

.method private checkNetworkAvailability()Z
    .locals 1

    .prologue
    .line 1092
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1094
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLatLonAndOrientation(Z)Ljava/lang/String;
    .locals 4
    .parameter "useNewStyleOrientation"

    .prologue
    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v0

    .line 788
    .local v0, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v0, :cond_0

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cbll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v3}, Lcom/google/android/street/MapPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v2, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView;->getUserOrientation()Lcom/google/android/street/UserOrientation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 791
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->getOrientation(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getOrientation(Z)Ljava/lang/String;
    .locals 6
    .parameter "useNewStyleOrientation"

    .prologue
    const/high16 v5, 0x4230

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v3}, Lcom/google/android/street/StreetView;->getUserOrientation()Lcom/google/android/street/UserOrientation;

    move-result-object v2

    .line 801
    .local v2, userOrientation:Lcom/google/android/street/UserOrientation;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&cbp=1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    if-eqz p1, :cond_0

    .line 804
    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    const/high16 v4, -0x3ccc

    mul-float v0, v3, v4

    .line 805
    .local v0, pitch:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .end local v0           #pitch:F
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 807
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    add-float/2addr v3, v5

    add-float/2addr v3, v5

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getStateString(Z)Ljava/lang/String;
    .locals 3
    .parameter "useNewStyleOrientation"

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->getLatLonAndOrientation(Z)Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, state:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/street/Street;->mMapZoom:I

    if-eqz v1, :cond_0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/street/Street;->mMapZoom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 825
    :cond_0
    return-object v0
.end method

.method private gotoMap()V
    .locals 3

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_1

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v0}, Lcom/google/android/street/MapPoint;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->getUserOrientation()Lcom/google/android/street/UserOrientation;

    move-result-object v0

    .line 1020
    const/4 v2, 0x0

    .line 1021
    if-eqz v0, :cond_3

    .line 1022
    const-string v2, "?cbp=1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1024
    const-string v2, ",,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1026
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1028
    const/4 v0, 0x1

    .line 1030
    :goto_0
    iget v2, p0, Lcom/google/android/street/Street;->mMapZoom:I

    if-eqz v2, :cond_0

    .line 1031
    if-nez v0, :cond_2

    .line 1032
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1037
    :goto_1
    const-string v0, "z="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    iget v0, p0, Lcom/google/android/street/Street;->mMapZoom:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1040
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1042
    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->startActivity(Landroid/content/Intent;)V

    .line 1044
    :cond_1
    return-void

    .line 1035
    :cond_2
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private static inEmulator()Z
    .locals 2

    .prologue
    .line 296
    const-string v1, "QEMU"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, p:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 912
    const-string v0, "StreetView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public static logEndFrame(Lcom/google/android/street/PanoramaConfig;)V
    .locals 6
    .parameter

    .prologue
    .line 1175
    sget-object v0, Lcom/google/android/street/Street;->sStartFrameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1176
    :try_start_0
    sget-object v1, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/street/Street;->sStartFrameConfig:Lcom/google/android/street/PanoramaConfig;

    if-eq v1, p0, :cond_0

    .line 1178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " latency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/google/android/street/Street;->sStartFrameTimestampMs:J

    sub-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 1181
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    .line 1182
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/street/Street;->sStartFrameConfig:Lcom/google/android/street/PanoramaConfig;

    .line 1184
    :cond_0
    monitor-exit v0

    .line 1185
    return-void

    .line 1184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 917
    const-string v0, "StreetView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 922
    const-string v0, "StreetView"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    return-void
.end method

.method public static noteStartFrame(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 1137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;Lcom/google/android/street/PanoramaConfig;)V

    .line 1138
    return-void
.end method

.method public static noteStartFrame(Ljava/lang/String;Lcom/google/android/street/PanoramaConfig;)V
    .locals 3
    .parameter "reason"
    .parameter "currentPanoramaConfig"

    .prologue
    .line 1156
    sget-object v0, Lcom/google/android/street/Street;->sStartFrameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1157
    :try_start_0
    sget-object v1, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1158
    sput-object p0, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    .line 1159
    sput-object p1, Lcom/google/android/street/Street;->sStartFrameConfig:Lcom/google/android/street/PanoramaConfig;

    .line 1160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/street/Street;->sStartFrameTimestampMs:J

    .line 1162
    :cond_0
    monitor-exit v0

    .line 1163
    return-void

    .line 1162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onNetworkToggle(Z)V
    .locals 1
    .parameter "isUp"

    .prologue
    .line 1066
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mRegisteredForNetworkConnectivity:Z

    if-eqz v0, :cond_0

    .line 1067
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mNetworkAvailable:Z

    if-eq v0, p1, :cond_0

    .line 1068
    iput-boolean p1, p0, Lcom/google/android/street/Street;->mNetworkAvailable:Z

    .line 1072
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->invalidate()V

    .line 1077
    :cond_0
    return-void
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 3
    .parameter "string"

    .prologue
    .line 751
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    double-to-float v1, v1

    .line 753
    :goto_0
    return v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, n:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processIntent(Landroid/os/Bundle;)V
    .locals 43
    .parameter "icicle"

    .prologue
    .line 548
    const/16 v36, 0x0

    .line 549
    .local v36, schemeSpecificPart:Ljava/lang/String;
    const/16 v26, 0x0

    .line 550
    .local v26, latLng:Lcom/google/android/street/MapPoint;
    const/16 v32, 0x0

    .line 551
    .local v32, panoID:Ljava/lang/String;
    const/16 v29, 0x0

    .line 552
    .local v29, orientation:Lcom/google/android/street/UserOrientation;
    const/16 v24, 0x0

    .line 553
    .local v24, inputOK:Z
    const/16 v21, 0x0

    .line 554
    .local v21, faceToLatLng:Lcom/google/android/street/MapPoint;
    const/4 v15, 0x0

    .line 555
    .local v15, bNewIntentActionView:Z
    const/16 v16, 0x0

    .line 556
    .local v16, config:Lcom/google/android/street/PanoramaConfig;
    const/4 v13, 0x0

    .line 557
    .local v13, action:Ljava/lang/String;
    const/16 v22, 0x0

    .line 558
    .local v22, hasDrivingDirectionsArrow:Z
    const/high16 v23, -0x4080

    .line 559
    .local v23, incomingRouteYaw:F
    const/high16 v30, -0x4080

    .line 560
    .local v30, outgoingRouteYaw:F
    const/16 v33, 0x0

    .line 562
    .local v33, panoramaTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mSavedInstanceState:Landroid/os/Bundle;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 563
    if-nez p1, :cond_0

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 p1, v0

    .line 566
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/Street;->mSavedInstanceState:Landroid/os/Bundle;

    .line 569
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/street/Street;->getIntent()Landroid/content/Intent;

    move-result-object v25

    .line 570
    .local v25, intent:Landroid/content/Intent;
    if-eqz v25, :cond_3

    .line 571
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/street/Street;->setIntent(Landroid/content/Intent;)V

    .line 573
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 574
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 575
    const/4 v15, 0x1

    .line 576
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 577
    .local v18, data:Landroid/net/Uri;
    const-string v5, "google.streetview"

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 578
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v36

    .line 586
    .end local v18           #data:Landroid/net/Uri;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->hasPanorama()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v15, :cond_4

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->reloadPanorama()V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->invalidate()V

    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .local v10, config:Lcom/google/android/street/PanoramaConfig;
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .local v9, faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .local v8, orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .local v6, panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .line 747
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .local v7, latLng:Lcom/google/android/street/MapPoint;
    :goto_0
    return-void

    .line 581
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_2

    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .line 582
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto :goto_0

    .line 592
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_4
    if-nez p1, :cond_5

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/street/MapPoint;

    const-wide v39, 0x4042e5ed288ce704L

    const-wide v41, -0x3fa166b851eb851fL

    move-object v0, v7

    move-wide/from16 v1, v39

    move-wide/from16 v3, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/street/MapPoint;-><init>(DD)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/street/StreetView;->loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->invalidate()V

    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .line 598
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto :goto_0

    .line 601
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_5
    if-nez v36, :cond_15

    if-eqz p1, :cond_15

    const-string v5, "streetview"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 603
    const-string v5, "streetview"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 604
    const-string v5, "panoramaConfig"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 606
    :try_start_0
    const-string v5, "panoramaConfig"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/google/android/street/PanoramaConfig;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    :goto_1
    if-eqz v36, :cond_14

    .line 619
    const/16 v11, 0x2c

    .line 620
    .local v11, COMMA:C
    const/16 v12, 0x5f

    .line 622
    .local v12, LEGAL_SEP:C
    const/16 v5, 0x2c

    const/16 v6, 0x5f

    :try_start_1
    move-object/from16 v0, v36

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v35

    .line 627
    .local v35, s2:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://example.com/cb?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 631
    .local v19, data2:Landroid/net/Uri;
    const-string v5, "cbll"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 632
    .local v27, latLngStr:Ljava/lang/String;
    if-eqz v27, :cond_13

    .line 633
    const/16 v5, 0x5f

    const/16 v6, 0x2c

    move-object/from16 v0, v27

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/street/MapPoint;->parse(Ljava/lang/String;)Lcom/google/android/street/MapPoint;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 634
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    if-eqz v7, :cond_6

    .line 636
    const/16 v24, 0x1

    .line 639
    :cond_6
    :goto_2
    if-nez v24, :cond_12

    .line 640
    :try_start_2
    const-string v5, "panoid"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 641
    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 643
    const/16 v24, 0x1

    .line 650
    :cond_7
    :goto_3
    :try_start_3
    const-string v5, "cbp"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 651
    .local v31, p:Ljava/lang/String;
    if-eqz v31, :cond_11

    .line 652
    const-string v5, "_"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 653
    .local v14, args:[Ljava/lang/String;
    array-length v5, v14

    const/4 v8, 0x4

    if-lt v5, v8, :cond_11

    .line 654
    new-instance v8, Lcom/google/android/street/UserOrientation;

    invoke-direct {v8}, Lcom/google/android/street/UserOrientation;-><init>()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 658
    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    :try_start_4
    array-length v5, v14

    const/4 v9, 0x4

    if-ne v5, v9, :cond_c

    .line 660
    const/4 v5, 0x1

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 661
    const/4 v5, 0x2

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setTilt(F)V

    .line 662
    const/4 v5, 0x3

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setZoom(F)V

    .line 681
    .end local v11           #COMMA:C
    .end local v14           #args:[Ljava/lang/String;
    :goto_4
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/Street;->mMapZoom:I

    .line 682
    const-string v5, "mz"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 683
    .local v28, mapZoomValue:Ljava/lang/String;
    if-eqz v28, :cond_8

    .line 684
    const/4 v5, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/Street;->mMapZoom:I

    .line 690
    :cond_8
    const-string v5, "faceto_ll"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 691
    .local v20, f:Ljava/lang/String;
    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_10

    .line 692
    const/16 v5, 0x5f

    const/16 v9, 0x2c

    move-object/from16 v0, v20

    move v1, v5

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/street/MapPoint;->parse(Ljava/lang/String;)Lcom/google/android/street/MapPoint;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v9

    .line 698
    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    :goto_5
    :try_start_5
    const-string v5, "title"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 699
    .local v37, t:Ljava/lang/String;
    if-eqz v37, :cond_9

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 700
    const/16 v5, 0x5f

    const/16 v11, 0x2c

    move-object/from16 v0, v37

    move v1, v5

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v33

    .line 706
    :cond_9
    const-string v5, "dir_arrow"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 707
    .local v17, d:Ljava/lang/String;
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 708
    const-string v5, "_"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 709
    .restart local v14       #args:[Ljava/lang/String;
    array-length v5, v14

    const/4 v11, 0x2

    if-ne v5, v11, :cond_a

    .line 710
    const/16 v22, 0x1

    .line 711
    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v23

    .line 712
    const/4 v5, 0x1

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v30

    .line 723
    .end local v14           #args:[Ljava/lang/String;
    .end local v17           #d:Ljava/lang/String;
    .end local v19           #data2:Landroid/net/Uri;
    .end local v20           #f:Ljava/lang/String;
    .end local v27           #latLngStr:Ljava/lang/String;
    .end local v28           #mapZoomValue:Ljava/lang/String;
    .end local v31           #p:Ljava/lang/String;
    .end local v35           #s2:Ljava/lang/String;
    .end local v37           #t:Ljava/lang/String;
    :cond_a
    :goto_6
    if-nez v24, :cond_b

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t parse "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 728
    .end local v12           #LEGAL_SEP:C
    :cond_b
    :goto_7
    if-eqz v24, :cond_f

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/street/StreetView;->loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V

    .line 731
    if-eqz v33, :cond_d

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/street/StreetView;->setStatusOverride(Ljava/lang/String;)V

    .line 736
    :goto_8
    if-eqz v22, :cond_e

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/StreetView;->setDirectionsArrowParams(FF)V

    .line 746
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->invalidate()V

    goto/16 :goto_0

    .line 608
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    goto/16 :goto_1

    .line 665
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v11       #COMMA:C
    .restart local v12       #LEGAL_SEP:C
    .restart local v14       #args:[Ljava/lang/String;
    .restart local v19       #data2:Landroid/net/Uri;
    .restart local v27       #latLngStr:Ljava/lang/String;
    .restart local v31       #p:Ljava/lang/String;
    .restart local v35       #s2:Ljava/lang/String;
    :cond_c
    const/4 v5, 0x1

    :try_start_6
    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 667
    const/4 v5, 0x3

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setZoom(F)V

    .line 670
    const/4 v5, 0x4

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v9, -0x3d4c

    const/high16 v11, 0x42b4

    invoke-static {v5, v9, v11}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    .end local v11           #COMMA:C
    move-result v34

    .line 672
    .local v34, pitch:F
    const/high16 v5, 0x42b4

    sub-float v5, v5, v34

    const/high16 v9, 0x4334

    div-float v38, v5, v9

    .line 673
    .local v38, tilt:F
    move-object v0, v8

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/android/street/UserOrientation;->setTilt(F)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    .line 717
    .end local v14           #args:[Ljava/lang/String;
    .end local v34           #pitch:F
    .end local v38           #tilt:F
    :catch_1
    move-exception v5

    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_6

    .line 734
    .end local v12           #LEGAL_SEP:C
    .end local v19           #data2:Landroid/net/Uri;
    .end local v27           #latLngStr:Ljava/lang/String;
    .end local v31           #p:Ljava/lang/String;
    .end local v35           #s2:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->clearStatusOverride()V

    goto :goto_8

    .line 740
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->clearDirectionsArrowParams()V

    goto :goto_9

    .line 743
    :cond_f
    const-string v5, "Got a bad Intent. Exiting."

    invoke-static {v5}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/street/Street;->finish()V

    goto :goto_9

    .line 717
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v11       #COMMA:C
    .restart local v12       #LEGAL_SEP:C
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_6

    .end local v6           #panoID:Ljava/lang/String;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v19       #data2:Landroid/net/Uri;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v27       #latLngStr:Ljava/lang/String;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    .restart local v35       #s2:Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    goto/16 :goto_6

    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    :catch_4
    move-exception v5

    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    goto/16 :goto_6

    .end local v11           #COMMA:C
    .restart local v20       #f:Ljava/lang/String;
    .restart local v28       #mapZoomValue:Ljava/lang/String;
    .restart local v31       #p:Ljava/lang/String;
    :catch_5
    move-exception v5

    goto/16 :goto_6

    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    :cond_10
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_5

    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v20           #f:Ljava/lang/String;
    .end local v28           #mapZoomValue:Ljava/lang/String;
    .restart local v11       #COMMA:C
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    :cond_11
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    goto/16 :goto_4

    .end local v6           #panoID:Ljava/lang/String;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v31           #p:Ljava/lang/String;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_12
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    goto/16 :goto_3

    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_13
    move-object/from16 v7, v26

    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_2

    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v11           #COMMA:C
    .end local v12           #LEGAL_SEP:C
    .end local v19           #data2:Landroid/net/Uri;
    .end local v27           #latLngStr:Ljava/lang/String;
    .end local v35           #s2:Ljava/lang/String;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    :cond_14
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_7

    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_15
    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    goto/16 :goto_1
.end method

.method private reportInappropriateImage()V
    .locals 4

    .prologue
    .line 1047
    iget-object v3, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v3}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v1

    .line 1048
    .local v1, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v1, :cond_0

    .line 1049
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/street/Street;->getOrientation(Z)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, panoArgs:Ljava/lang/String;
    iget-object v3, v1, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/street/StreetUrl;->getReportInappropriateImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1053
    .local v2, reportUrl:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/street/Street;->showUrl(Ljava/lang/String;)V

    .line 1055
    .end local v0           #panoArgs:Ljava/lang/String;
    .end local v2           #reportUrl:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setActionBarTitle(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter

    .prologue
    .line 508
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getActionBar"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 509
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDisplayOptions"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 512
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "DISPLAY_SHOW_TITLE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 513
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setTitle"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 515
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showUrl(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 980
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 983
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    const-string v1, "Could not start activty"

    invoke-static {v1, v0}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getApproximateLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/google/android/street/Street;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/android/street/Street;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 1208
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/Street;->mDefaultDisplay:Landroid/view/Display;

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/Street;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/google/android/street/Street;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 1196
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/street/Street;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/Street;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 361
    const-string v7, "Warm start onCreate()"

    invoke-static {v7}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;)V

    .line 362
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 379
    sget-boolean v7, Lcom/google/android/street/Street;->mGlobalStateInitialized:Z

    if-nez v7, :cond_0

    .line 380
    sput-boolean v10, Lcom/google/android/street/Street;->mGlobalStateInitialized:Z

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 385
    .local v1, config:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v7, 0xf

    .line 386
    .local v4, screenLayoutSize:I
    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    move v2, v10

    .line 387
    .local v2, isTabletLayoutSize:Z
    :goto_0
    invoke-static {}, Lcom/google/mobile/googlenav/android/AndroidBuilds;->isHoneycombSdk()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v2, :cond_6

    move v7, v10

    :goto_1
    iput-boolean v7, p0, Lcom/google/android/street/Street;->mIsTablet:Z

    .line 394
    iget-boolean v7, p0, Lcom/google/android/street/Street;->mIsTablet:Z

    if-eqz v7, :cond_7

    .line 395
    const/high16 v7, 0x7f06

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->setTheme(I)V

    .line 400
    :goto_2
    const v7, 0x7f030002

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->setContentView(I)V

    .line 402
    iget-boolean v7, p0, Lcom/google/android/street/Street;->mIsTablet:Z

    if-nez v7, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v9, v8}, Landroid/view/Window;->setFeatureInt(II)V

    .line 405
    const v7, 0x7f080001

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/google/android/street/Street;->mTitleText:Landroid/widget/TextView;

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, cacheDirPath:Ljava/lang/String;
    new-instance v7, Lcom/google/android/street/HttpCache;

    const/4 v8, 0x3

    const/16 v9, 0x64

    invoke-direct {v7, v8, v0, v9}, Lcom/google/android/street/HttpCache;-><init>(ILjava/lang/String;I)V

    iput-object v7, p0, Lcom/google/android/street/Street;->mHttpCache:Lcom/google/android/street/HttpCache;

    .line 417
    new-instance v7, Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/Street;->mHttpCache:Lcom/google/android/street/HttpCache;

    invoke-direct {v7, v8}, Lcom/google/android/street/PanoramaManager;-><init>(Lcom/google/android/street/HttpCache;)V

    iput-object v7, p0, Lcom/google/android/street/Street;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    .line 420
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/google/android/street/Street;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 421
    iget-object v7, p0, Lcom/google/android/street/Street;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    new-instance v7, Lcom/google/android/street/Street$1;

    invoke-direct {v7, p0}, Lcom/google/android/street/Street$1;-><init>(Lcom/google/android/street/Street;)V

    iput-object v7, p0, Lcom/google/android/street/Street;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 440
    invoke-direct {p0}, Lcom/google/android/street/Street;->checkNetworkAvailability()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/street/Street;->mNetworkAvailable:Z

    .line 441
    const/4 v7, -0x1

    iput v7, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    .line 444
    const-string v7, "location"

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 446
    .local v3, locationManager:Landroid/location/LocationManager;
    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v7

    const-string v8, "network"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 448
    const-string v7, "network"

    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/street/Street;->mLocation:Landroid/location/Location;

    .line 452
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 453
    .local v5, t0:J
    const-string v7, "StreetView"

    new-instance v8, Lcom/google/android/street/Street$DrdListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/google/android/street/Street$DrdListener;-><init>(Lcom/google/android/street/Street;Lcom/google/android/street/Street$1;)V

    invoke-static {p0, v7, v8}, Lcom/google/android/common/datarequest/DrdUtil;->setupConfigAndDrd(Landroid/content/Context;Ljava/lang/String;Lcom/google/mobile/googlenav/datarequest/DataRequestListener;)V

    .line 460
    const v7, 0x7f080006

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/street/StreetView;

    iput-object v7, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    .line 461
    iget-object v7, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    iget-object v8, p0, Lcom/google/android/street/Street;->timer:Lcom/google/android/street/Timer;

    invoke-virtual {v7, v8}, Lcom/google/android/street/StreetView;->setTimer(Lcom/google/android/street/Timer;)V

    .line 462
    iget-object v7, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    iget-object v8, p0, Lcom/google/android/street/Street;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-boolean v9, p0, Lcom/google/android/street/Street;->mIsTablet:Z

    invoke-virtual {v7, p0, v8, v9}, Lcom/google/android/street/StreetView;->initialize(Lcom/google/android/street/Street;Lcom/google/android/street/PanoramaManager;Z)V

    .line 463
    iget-object v7, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v7}, Lcom/google/android/street/StreetView;->requestFocus()Z

    .line 466
    invoke-static {p0}, Lcom/google/android/street/WhatsNewDialog;->shouldShow(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 467
    invoke-virtual {p0, v10}, Lcom/google/android/street/Street;->showDialog(I)V

    .line 470
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_4

    .line 473
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->processIntent(Landroid/os/Bundle;)V

    .line 494
    :cond_4
    return-void

    .end local v0           #cacheDirPath:Ljava/lang/String;
    .end local v2           #isTabletLayoutSize:Z
    .end local v3           #locationManager:Landroid/location/LocationManager;
    .end local v5           #t0:J
    :cond_5
    move v2, v8

    .line 386
    goto/16 :goto_0

    .restart local v2       #isTabletLayoutSize:Z
    :cond_6
    move v7, v8

    .line 387
    goto/16 :goto_1

    .line 397
    :cond_7
    invoke-virtual {p0, v9}, Lcom/google/android/street/Street;->requestWindowFeature(I)Z

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 933
    packed-switch p1, :pswitch_data_0

    .line 937
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 935
    :pswitch_0
    new-instance v0, Lcom/google/android/street/WhatsNewDialog;

    invoke-direct {v0, p0}, Lcom/google/android/street/WhatsNewDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 928
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 888
    invoke-static {}, Lcom/google/android/common/datarequest/DrdUtil;->cleanupConfigAndDrd()V

    .line 889
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 893
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 991
    const/4 v0, 0x0

    .line 993
    .local v0, handled:Z
    iget-object v3, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v3}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v2

    .line 994
    .local v2, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 996
    .local v1, okToAct:Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1005
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 1006
    iget-object v3, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v3}, Lcom/google/android/street/StreetView;->invalidate()V

    .line 1010
    :goto_2
    return v0

    .line 994
    .end local v1           #okToAct:Z
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 998
    .restart local v1       #okToAct:Z
    :pswitch_0
    if-eqz v1, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/google/android/street/Street;->gotoMap()V

    .line 1000
    const/4 v0, 0x1

    goto :goto_1

    .line 1008
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "newIntent"

    .prologue
    .line 903
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 907
    invoke-virtual {p0, p1}, Lcom/google/android/street/Street;->setIntent(Landroid/content/Intent;)V

    .line 908
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 942
    .line 943
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_0

    move v0, v2

    .line 946
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 948
    if-eqz v0, :cond_2

    .line 949
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 971
    :goto_1
    if-eqz v0, :cond_1

    .line 972
    iget-object v1, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v1}, Lcom/google/android/street/StreetView;->invalidate()V

    .line 976
    :goto_2
    return v0

    :cond_0
    move v0, v1

    .line 944
    goto :goto_0

    .line 951
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/street/Street;->gotoMap()V

    move v0, v2

    .line 952
    goto :goto_1

    .line 954
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/street/Street;->reportInappropriateImage()V

    move v0, v2

    .line 955
    goto :goto_1

    .line 957
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->toggleCompassMode()V

    move v0, v2

    .line 958
    goto :goto_1

    .line 960
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.google.com/tospage?hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/mobile/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/street/Street;->showUrl(Ljava/lang/String;)V

    move v0, v2

    .line 962
    goto :goto_1

    .line 964
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.google.com/privacy?hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/mobile/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/street/Street;->showUrl(Ljava/lang/String;)V

    move v0, v2

    .line 965
    goto :goto_1

    .line 974
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    .line 949
    :pswitch_data_0
    .packed-switch 0x7f08000e
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 830
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 834
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->onPause()V

    .line 835
    iget-object v0, p0, Lcom/google/android/street/Street;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/Street;->mRegisteredForNetworkConnectivity:Z

    .line 837
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 866
    const-string v0, "Warm start onRestart()"

    invoke-static {v0}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;)V

    .line 867
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 872
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->onRestart()V

    .line 873
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 777
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 782
    iput-object p1, p0, Lcom/google/android/street/Street;->mSavedInstanceState:Landroid/os/Bundle;

    .line 783
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 841
    const-string v0, "Warm start onResume()"

    invoke-static {v0}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;)V

    .line 842
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 847
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->onResume()V

    .line 848
    iget-object v0, p0, Lcom/google/android/street/Street;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/street/Street;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/street/Street;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Street;->mRegisteredForNetworkConnectivity:Z

    .line 851
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/street/Street;->processIntent(Landroid/os/Bundle;)V

    .line 852
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 759
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 763
    iget-object v2, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v1

    .line 764
    .local v1, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v1, :cond_0

    .line 765
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/street/Street;->getStateString(Z)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, out:Ljava/lang/String;
    const-string v2, "streetview"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v2, "panoramaConfig"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 773
    .end local v0           #out:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 856
    const-string v0, "Warm start onStart()"

    invoke-static {v0}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;)V

    .line 857
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 862
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 877
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 881
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mHardShutdown:Z

    if-nez v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->onStop()V

    .line 884
    :cond_0
    return-void
.end method

.method public reportProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 531
    return-void
.end method

.method public reportTransitionProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 536
    const/16 v1, 0x4e20

    if-le p1, v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 538
    .local v0, visibility:I
    :goto_0
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/google/android/street/Street;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 539
    return-void

    .line 536
    .end local v0           #visibility:I
    :cond_0
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0
.end method

.method public setStatusText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->setActionBarTitle(Ljava/lang/CharSequence;)V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/Street;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public wasNetworkAvailable()Z
    .locals 2

    .prologue
    .line 1081
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mNetworkAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
