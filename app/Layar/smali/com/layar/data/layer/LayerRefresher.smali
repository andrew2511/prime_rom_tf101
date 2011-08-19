.class public Lcom/layar/data/layer/LayerRefresher;
.super Ljava/lang/Object;
.source "LayerRefresher.java"


# static fields
.field public static final DEFAULT_REFRESH_DISTANCE:I = 0x64

.field public static final DEFAULT_REFRESH_INTERVAL:J = 0x12cL

.field public static final MIN_REFRESH_DISTANCE:I = 0x3

.field public static final MIN_REFRESH_INTERVAL:J = 0xaL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isActive:Z

.field private lastFetchLocation:Landroid/location/Location;

.field private lastFetchTime:J

.field private final mCallback:Ljava/lang/Runnable;

.field private mFullRefresh:Z

.field private mQueryString:Ljava/lang/String;

.field private mRefreshDistance:I

.field private mRefreshInterval:J

.field private final mSync:Ljava/lang/Object;

.field private mTimeCheck:Ljava/lang/Runnable;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/layar/data/layer/LayerRefresher;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayerRefresher;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerRefresher;-><init>(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "refreshCallback"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshDistance:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/data/layer/LayerRefresher;->mFullRefresh:Z

    .line 22
    iput-object v2, p0, Lcom/layar/data/layer/LayerRefresher;->mQueryString:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/layar/data/layer/LayerRefresher$1;

    invoke-direct {v0, p0}, Lcom/layar/data/layer/LayerRefresher$1;-><init>(Lcom/layar/data/layer/LayerRefresher;)V

    iput-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mTimeCheck:Ljava/lang/Runnable;

    .line 38
    iput-object p1, p0, Lcom/layar/data/layer/LayerRefresher;->mCallback:Ljava/lang/Runnable;

    .line 39
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/App;->uiThreadHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerRefresher;->reset()V

    .line 44
    return-void

    .line 42
    :cond_0
    iput-object v2, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    goto :goto_0
.end method

.method private delay(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->mCallback:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 161
    monitor-exit v0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    iget-object v2, p0, Lcom/layar/data/layer/LayerRefresher;->mTimeCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    iget-object v2, p0, Lcom/layar/data/layer/LayerRefresher;->mTimeCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public check(Landroid/location/Location;)V
    .locals 8
    .parameter "location"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 116
    :try_start_0
    iget-boolean v4, p0, Lcom/layar/data/layer/LayerRefresher;->isActive:Z

    if-nez v4, :cond_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchTime:J

    .line 118
    iget-wide v4, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    invoke-direct {p0, v4, v5}, Lcom/layar/data/layer/LayerRefresher;->delay(J)V

    .line 119
    monitor-exit v3

    .line 148
    :goto_0
    return-void

    .line 122
    :cond_0
    if-eqz p1, :cond_2

    .line 123
    iget-object v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchLocation:Landroid/location/Location;

    if-nez v4, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerRefresher;->refresh()V

    .line 125
    new-instance v4, Landroid/location/Location;

    invoke-direct {v4, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchLocation:Landroid/location/Location;

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchTime:J

    .line 127
    monitor-exit v3

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 130
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchLocation:Landroid/location/Location;

    invoke-virtual {p1, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 132
    .local v0, distanceMoved:F
    iget v4, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshDistance:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerRefresher;->refresh()V

    .line 134
    new-instance v4, Landroid/location/Location;

    invoke-direct {v4, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchLocation:Landroid/location/Location;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchTime:J

    .line 136
    monitor-exit v3

    goto :goto_0

    .line 140
    .end local v0           #distanceMoved:F
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchTime:J

    sub-long v1, v4, v6

    .line 142
    .local v1, timeElapsed:J
    iget-wide v4, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerRefresher;->refresh()V

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchTime:J

    .line 115
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 146
    :cond_3
    iget-wide v4, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    sub-long/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lcom/layar/data/layer/LayerRefresher;->delay(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public doFullRefresh()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/layar/data/layer/LayerRefresher;->mFullRefresh:Z

    return v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLastTime()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchTime:J

    return-wide v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshDistance()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshDistance:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    return-wide v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    const/16 v1, 0x64

    :try_start_0
    iput v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshDistance:I

    .line 76
    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/layar/data/layer/LayerRefresher;->mFullRefresh:Z

    .line 74
    monitor-exit v0

    .line 79
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    iget-object v2, p0, Lcom/layar/data/layer/LayerRefresher;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    iget-object v2, p0, Lcom/layar/data/layer/LayerRefresher;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    iget-wide v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    invoke-direct {p0, v1, v2}, Lcom/layar/data/layer/LayerRefresher;->delay(J)V

    .line 151
    monitor-exit v0

    .line 156
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerRefresher;->resetTime()V

    .line 84
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerRefresher;->resetLocation()V

    .line 82
    monitor-exit v0

    .line 86
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetLocation()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/data/layer/LayerRefresher;->resetLocation(Landroid/location/Location;)V

    .line 99
    return-void
.end method

.method public resetLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_0
    iput-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchLocation:Landroid/location/Location;

    .line 102
    monitor-exit v0

    .line 105
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetTime()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchTime:J

    .line 91
    iget-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 92
    iget-wide v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    invoke-direct {p0, v1, v2}, Lcom/layar/data/layer/LayerRefresher;->delay(J)V

    .line 89
    :cond_0
    monitor-exit v0

    .line 95
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(Lcom/layar/data/layer/LayerRefresher;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget v1, p1, Lcom/layar/data/layer/LayerRefresher;->mRefreshDistance:I

    iput v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshDistance:I

    .line 66
    iget-wide v1, p1, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    iput-wide v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    .line 67
    iget-boolean v1, p1, Lcom/layar/data/layer/LayerRefresher;->mFullRefresh:Z

    iput-boolean v1, p0, Lcom/layar/data/layer/LayerRefresher;->mFullRefresh:Z

    .line 69
    iget-wide v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    invoke-direct {p0, v1, v2}, Lcom/layar/data/layer/LayerRefresher;->delay(J)V

    .line 64
    monitor-exit v0

    .line 71
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFullRefresh(Z)V
    .locals 2
    .parameter "fullRefresh"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iput-boolean p1, p0, Lcom/layar/data/layer/LayerRefresher;->mFullRefresh:Z

    .line 195
    monitor-exit v0

    .line 198
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .parameter "queryString"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/layar/data/layer/LayerRefresher;->mQueryString:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setRefreshDistance(I)V
    .locals 2
    .parameter "refreshDistance"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    const/4 v1, 0x3

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshDistance:I

    .line 185
    monitor-exit v0

    .line 188
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRefreshInterval(J)V
    .locals 5
    .parameter "refreshInterval"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    .line 176
    iget-wide v1, p0, Lcom/layar/data/layer/LayerRefresher;->mRefreshInterval:J

    invoke-direct {p0, v1, v2}, Lcom/layar/data/layer/LayerRefresher;->delay(J)V

    .line 173
    monitor-exit v0

    .line 178
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 6

    .prologue
    .line 47
    iget-object v2, p0, Lcom/layar/data/layer/LayerRefresher;->mCallback:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/layar/data/layer/LayerRefresher;->isActive:Z

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/layar/data/layer/LayerRefresher;->lastFetchTime:J

    sub-long v0, v2, v4

    .line 53
    .local v0, elapsed:J
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/layer/LayerRefresher;->isActive:Z

    .line 59
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v0, p0, Lcom/layar/data/layer/LayerRefresher;->mUiThread:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/data/layer/LayerRefresher;->mTimeCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method
