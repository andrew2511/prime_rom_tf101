.class public Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# static fields
.field private static currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;


# instance fields
.field private bytesDownloaded:I

.field private bytesUploaded:I

.field private flashCacheHits:I

.field private flashCacheHitsSinceLastLog:I

.field private flashCacheMisses:I

.field private flashCacheMissesSinceLastLog:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    .line 67
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    .line 68
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    .line 69
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    .line 70
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesDownloaded:I

    .line 71
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesUploaded:I

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .registers 2

    .prologue
    .line 88
    const-class v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    if-nez v1, :cond_18

    .line 90
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->read()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    move-result-object v1

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    .line 91
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    if-nez v1, :cond_18

    .line 93
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    invoke-direct {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;-><init>()V

    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    .line 97
    :cond_18
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private log(Z)V
    .registers 9
    .parameter "force"

    .prologue
    const/4 v4, 0x0

    .line 208
    if-eqz p1, :cond_56

    move v3, v4

    .line 212
    .local v3, threshold:I
    :goto_4
    monitor-enter p0

    .line 213
    :try_start_5
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    .line 214
    .local v0, hits:I
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    .line 216
    .local v1, misses:I
    add-int v4, v0, v1

    if-le v4, v3, :cond_13

    .line 217
    const/4 v4, 0x0

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    .line 218
    const/4 v4, 0x0

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    .line 220
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_5a

    .line 222
    add-int v4, v0, v1

    if-le v4, v3, :cond_55

    .line 223
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v2, result:Ljava/lang/StringBuffer;
    if-lez v0, :cond_31

    .line 227
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const-string v4, "f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 232
    :cond_31
    if-lez v1, :cond_45

    .line 233
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string v4, "m"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 238
    :cond_45
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const/16 v4, 0x16

    const-string v5, "c"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 243
    .end local v2           #result:Ljava/lang/StringBuffer;
    :cond_55
    return-void

    .line 208
    .end local v0           #hits:I
    .end local v1           #misses:I
    .end local v3           #threshold:I
    :cond_56
    const/16 v4, 0x32

    move v3, v4

    goto :goto_4

    .line 220
    .restart local v3       #threshold:I
    :catchall_5a
    move-exception v4

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v4
.end method

.method private static read()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .registers 6

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 155
    .local v2, stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    const-string v4, "Stats"

    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 157
    .local v0, dis:Ljava/io/DataInput;
    if-eqz v0, :cond_27

    .line 159
    :try_start_9
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    invoke-direct {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;-><init>()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_28

    .line 161
    .end local v2           #stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .local v3, stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :try_start_e
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    .line 162
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    .line 163
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesDownloaded:I

    .line 164
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesUploaded:I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_26} :catch_3e

    move-object v2, v3

    .line 172
    .end local v3           #stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .restart local v2       #stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :cond_27
    :goto_27
    return-object v2

    .line 165
    :catch_28
    move-exception v4

    move-object v1, v4

    .line 166
    .local v1, e:Ljava/io/IOException;
    :goto_2a
    const-string v4, "STATS"

    invoke-static {v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    const/4 v2, 0x0

    .line 168
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v4

    const-string v5, "Stats"

    invoke-interface {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    goto :goto_27

    .line 165
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .restart local v3       #stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :catch_3e
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .restart local v2       #stats:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    goto :goto_2a
.end method


# virtual methods
.method public flashCacheHit()V
    .registers 2

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    .line 106
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    .line 107
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->log(Z)V

    .line 109
    return-void

    .line 107
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public flashCacheMiss()V
    .registers 2

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    .line 117
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    .line 118
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->log(Z)V

    .line 120
    return-void

    .line 118
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
