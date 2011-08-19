.class public Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
.super Ljava/lang/Object;
.source "LayerItem.java"


# instance fields
.field private final activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private final isRoutable:Z

.field private final itemId:Ljava/lang/String;

.field private final layerId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final ranking:I

.field private final rating:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private final snippet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter "layerItem"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_20
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    .line 37
    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    :goto_38
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->isRoutable:Z

    .line 39
    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_44
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->rating:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .line 41
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_52
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->ranking:I

    .line 43
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_62
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .line 45
    return-void

    .line 33
    :cond_65
    const-string v0, ""

    goto :goto_20

    .line 35
    :cond_68
    const-string v0, ""

    goto :goto_2c

    :cond_6b
    move v0, v1

    .line 37
    goto :goto_38

    .line 39
    :cond_6d
    const/4 v0, 0x0

    goto :goto_44

    :cond_6f
    move v0, v1

    .line 41
    goto :goto_52

    .line 43
    :cond_71
    const/4 v0, 0x0

    goto :goto_62
.end method


# virtual methods
.method public getBuzzSnippet()Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLayerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snippet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
