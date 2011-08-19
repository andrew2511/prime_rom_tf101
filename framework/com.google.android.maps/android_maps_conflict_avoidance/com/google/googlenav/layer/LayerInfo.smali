.class public Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
.super Ljava/lang/Object;
.source "LayerInfo.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private maxZoomLevel:I

.field private minZoomLevel:I

.field private name:Ljava/lang/String;

.field private parameters:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->parameters:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public isValidZoomLevel(I)Z
    .registers 3
    .parameter "currentZoomLevel"

    .prologue
    .line 358
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->minZoomLevel:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->maxZoomLevel:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
