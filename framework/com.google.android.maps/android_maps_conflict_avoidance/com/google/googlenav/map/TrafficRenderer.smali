.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;
.super Ljava/lang/Object;
.source "TrafficRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private drawRoadBackgroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .registers 11
    .parameter "roads"
    .parameter "painter"

    .prologue
    const/4 v7, 0x0

    .line 98
    const/4 v1, 0x0

    .local v1, index:I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_2b

    .line 99
    invoke-interface {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    move-result-object v3

    .line 100
    .local v3, path:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    aget-object v4, p1, v1

    .line 101
    .local v4, road:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    invoke-virtual {p0, v3, v4, v7, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    .line 102
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getNumPoints()I

    move-result v2

    .line 103
    .local v2, numPoints:I
    const/4 v0, 0x1

    .local v0, dataPoint:I
    :goto_13
    if-ge v0, v2, :cond_1c

    .line 104
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 106
    :cond_1c
    const v5, -0x2f000001

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineBackgroundWidth()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-interface {p2, v3, v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    .end local v0           #dataPoint:I
    .end local v2           #numPoints:I
    .end local v3           #path:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .end local v4           #road:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    :cond_2b
    return-void
.end method

.method private drawRoadForegroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .registers 12
    .parameter "roads"
    .parameter "painter"

    .prologue
    const/4 v8, 0x0

    .line 119
    const/4 v2, 0x0

    .local v2, index:I
    :goto_2
    array-length v7, p1

    if-ge v2, v7, :cond_3d

    .line 120
    aget-object v6, p1, v2

    .line 121
    .local v6, road:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    invoke-virtual {p0, p2, v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    move-result-object v5

    .line 122
    .local v5, path:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    invoke-static {v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I

    move-result v3

    .line 123
    .local v3, lastColor:I
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getNumPoints()I

    move-result v4

    .line 124
    .local v4, numPoints:I
    const/4 v1, 0x1

    .local v1, dataPoint:I
    :goto_14
    if-ge v1, v4, :cond_31

    .line 125
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v6, v1, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    .line 126
    invoke-static {v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I

    move-result v0

    .line 127
    .local v0, color:I
    if-eq v0, v3, :cond_2e

    .line 130
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineWidth()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-interface {p2, v5, v3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    .line 131
    invoke-virtual {p0, p2, v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    move-result-object v5

    .line 132
    move v3, v0

    .line 124
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 136
    .end local v0           #color:I
    :cond_31
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getTrafficLineWidth()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-interface {p2, v5, v3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 138
    .end local v1           #dataPoint:I
    .end local v3           #lastColor:I
    .end local v4           #numPoints:I
    .end local v5           #path:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .end local v6           #road:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    :cond_3d
    return-void
.end method

.method private static getColor(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)I
    .registers 3
    .parameter "road"
    .parameter "pointIndex"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getSpeedCategory(I)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 180
    const v0, 0x60d1d1d1

    :goto_a
    return v0

    .line 172
    :pswitch_b
    const/high16 v0, -0x64

    goto :goto_a

    .line 174
    :pswitch_e
    const/high16 v0, -0x67

    goto :goto_a

    .line 176
    :pswitch_11
    const/16 v0, -0x2000

    goto :goto_a

    .line 178
    :pswitch_14
    const v0, -0xcc4f00

    goto :goto_a

    .line 170
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method protected addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V
    .registers 8
    .parameter "path"
    .parameter "road"
    .parameter "pointIndex"
    .parameter "draw"

    .prologue
    .line 147
    invoke-virtual {p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getXOffset(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x8

    .line 148
    .local v0, x:I
    invoke-virtual {p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->getYOffset(I)I

    move-result v2

    shl-int/lit8 v1, v2, 0x8

    .line 150
    .local v1, y:I
    if-eqz p4, :cond_12

    .line 151
    invoke-interface {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;->lineTo(II)V

    .line 155
    :goto_11
    return-void

    .line 153
    :cond_12
    invoke-interface {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;->moveTo(II)V

    goto :goto_11
.end method

.method protected initPath(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .registers 6
    .parameter "painter"
    .parameter "road"
    .parameter "pointIndex"

    .prologue
    .line 161
    invoke-interface {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;->createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;

    move-result-object v0

    .line 162
    .local v0, path:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->addPathPoint(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;IZ)V

    .line 163
    return-object v0
.end method

.method public renderTrafficTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V
    .registers 5
    .parameter "tt"
    .parameter "painter"

    .prologue
    .line 89
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setLastAccess(J)V

    .line 90
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->drawRoadBackgroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    .line 91
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->drawRoadForegroundLines([Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    .line 92
    return-void
.end method
