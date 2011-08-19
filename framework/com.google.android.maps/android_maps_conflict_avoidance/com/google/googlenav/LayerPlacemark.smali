.class public Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;
.source "LayerPlacemark.java"


# instance fields
.field private activeIconIndex:I

.field private authorGaiaId:J

.field private authorName:Ljava/lang/String;

.field private clusterDocId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private distanceSquaredToTarget:J

.field private height:I

.field private final itemId:Ljava/lang/String;

.field private final layerId:Ljava/lang/String;

.field private locationName:Ljava/lang/String;

.field private mediaUrls:Ljava/util/Vector;

.field private needToFetchDetails:Z

.field private nextRefreshTime:J

.field private normalIconIndex:I

.field private numberComments:I

.field private shadowIconIndex:I

.field private snippet:Ljava/lang/String;

.field private timestamp:J

.field private width:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .registers 11
    .parameter "item"
    .parameter "area"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    .line 141
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;-><init>(Landroid_maps_conflict_avoidance/com/google/map/Geometry;Ljava/lang/String;)V

    .line 75
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->needToFetchDetails:Z

    .line 142
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->layerId:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->itemId:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getSnippet()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->snippet:Ljava/lang/String;

    .line 145
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconIndex()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->activeIconIndex:I

    .line 146
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconInactiveIndex()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->normalIconIndex:I

    .line 147
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconShadowIndex()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->shadowIconIndex:I

    .line 148
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getWidth()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->width:I

    .line 149
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getHeight()I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->height:I

    .line 150
    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->needToFetchDetails:Z

    .line 151
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->nextRefreshTime:J

    .line 152
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->distanceSquaredToTarget:J

    .line 154
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getBuzzSnippet()Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 156
    .local v0, activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_ae

    .line 159
    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 162
    .local v1, author:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    if-eqz v1, :cond_69

    .line 163
    const/4 v4, 0x4

    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->authorName:Ljava/lang/String;

    .line 166
    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->authorGaiaId:J

    .line 171
    :cond_69
    const/4 v4, 0x5

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->timestamp:J

    .line 174
    const/4 v4, 0x6

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I

    move-result v4

    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->numberComments:I

    .line 177
    const/4 v4, 0x7

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->clusterDocId:Ljava/lang/String;

    .line 180
    invoke-static {v0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->content:Ljava/lang/String;

    .line 183
    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->locationName:Ljava/lang/String;

    .line 187
    const/16 v4, 0x9

    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrFalse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 188
    invoke-virtual {v0, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 189
    .local v3, size:I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->mediaUrls:Ljava/util/Vector;

    .line 190
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a0
    if-ge v2, v3, :cond_ae

    .line 191
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->mediaUrls:Ljava/util/Vector;

    invoke-virtual {v0, v7, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    .line 195
    .end local v1           #author:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_ae
    return-void
.end method
