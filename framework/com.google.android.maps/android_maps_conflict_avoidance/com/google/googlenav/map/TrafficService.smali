.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;
.super Ljava/lang/Object;
.source "TrafficService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;
    }
.end annotation


# static fields
.field private static final EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private nextRefreshTime:J

.field private final refreshMillis:J

.field private volatile request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

.field private final requestedTiles:Ljava/util/Hashtable;

.field private volatile stopCleanCache:Z

.field private final timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    return-void
.end method

.method public constructor <init>(JLandroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;)V
    .registers 7
    .parameter "refreshMillis"
    .parameter "taskRunner"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    .line 105
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    .line 106
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J

    .line 107
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    .line 108
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    .line 109
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    .line 111
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-direct {v0, p3, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    .line 112
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    const-wide/16 v1, 0x4e91

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->setDelay(J)V

    .line 113
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->start()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    return-object v0
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->notifyDownloadedTile()V

    return-void
.end method

.method private notifyDownloadedTile()V
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isUnscheduled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 210
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->schedule()V

    .line 212
    :cond_11
    return-void
.end method

.method private declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    .registers 4
    .parameter "tile"
    .parameter "trafficTile"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    if-nez v0, :cond_c

    .line 184
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    .line 187
    :cond_c
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    invoke-virtual {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V

    .line 188
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 189
    monitor-exit p0

    return-void

    .line 183
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized cleanCache(J)V
    .registers 11
    .parameter "maxAge"

    .prologue
    .line 220
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 221
    .local v2, tiles:Ljava/util/Enumeration;
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 222
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    .line 223
    .local v1, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    .line 224
    .local v3, tt:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    .line 225
    .local v0, clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getLastAccess()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-lez v4, :cond_7

    .line 226
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_7

    .line 220
    .end local v0           #clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .end local v1           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v2           #tiles:Ljava/util/Enumeration;
    .end local v3           #tt:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :catchall_36
    move-exception v4

    monitor-exit p0

    throw v4

    .line 230
    .restart local v2       #tiles:Ljava/util/Enumeration;
    :cond_39
    monitor-exit p0

    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 121
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    .line 123
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stop()V

    .line 124
    return-void
.end method

.method public declared-synchronized getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .registers 14
    .parameter "tile"
    .parameter "fetch"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v7

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6a

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_10

    .line 146
    const/4 v7, 0x0

    .line 179
    :goto_e
    monitor-exit p0

    return-object v7

    .line 150
    :cond_10
    :try_start_10
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v7, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    .line 153
    .local v6, trafficTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    invoke-virtual {v7, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    .line 156
    .local v3, queuedTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    if-eqz v6, :cond_5a

    .line 159
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v7

    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    .line 160
    .local v0, clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getDataTime()J

    move-result-wide v4

    .line 161
    .local v4, tileDataTime:J
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v4

    .line 162
    .local v1, dataAge:J
    if-eqz p2, :cond_58

    if-nez v3, :cond_58

    const-wide/high16 v7, -0x8000

    cmp-long v7, v4, v7

    if-eqz v7, :cond_58

    iget-wide v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    cmp-long v7, v1, v7

    if-lez v7, :cond_58

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_55

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    if-eqz v7, :cond_58

    .line 165
    :cond_55
    invoke-direct {p0, p1, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V

    :cond_58
    move-object v7, v6

    .line 167
    goto :goto_e

    .line 170
    .end local v0           #clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .end local v1           #dataAge:J
    .end local v4           #tileDataTime:J
    :cond_5a
    if-eqz v3, :cond_5e

    move-object v7, v3

    .line 171
    goto :goto_e

    .line 174
    :cond_5e
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    .end local v6           #trafficTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    invoke-direct {v6, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    .line 175
    .restart local v6       #trafficTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    if-eqz p2, :cond_68

    .line 176
    invoke-direct {p0, p1, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    :try_end_68
    .catchall {:try_start_10 .. :try_end_68} :catchall_6a

    :cond_68
    move-object v7, v6

    .line 179
    goto :goto_e

    .line 145
    .end local v3           #queuedTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .end local v6           #trafficTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :catchall_6a
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public handleOutOfMemory(Z)V
    .registers 3
    .parameter "warning"

    .prologue
    .line 251
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 252
    return-void
.end method

.method public declared-synchronized requestTiles()V
    .registers 5

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    if-eqz v0, :cond_22

    .line 197
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    .line 199
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 202
    :cond_22
    monitor-exit p0

    return-void

    .line 196
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 237
    const-wide/32 v1, 0xea60

    :try_start_3
    invoke-virtual {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cleanCache(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_e

    .line 243
    :goto_6
    return-void

    .line 238
    :catch_7
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TrafficService BG"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 240
    .end local v0           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    goto :goto_6
.end method

.method public declared-synchronized start()V
    .registers 2

    .prologue
    .line 266
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 267
    monitor-exit p0

    return-void

    .line 266
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    .line 273
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    .line 274
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;->getTaskRunner()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->cancelTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)I
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
