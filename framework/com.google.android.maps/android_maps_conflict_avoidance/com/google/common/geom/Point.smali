.class public final Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 90
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 91
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    move-object v1, v0

    .line 92
    .local v1, p:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    if-ne v2, v3, :cond_23

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    iget v3, v1, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    if-ne v2, v3, :cond_23

    const/4 v2, 0x1

    .line 94
    .end local v1           #p:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    :goto_22
    return v2

    .restart local v1       #p:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    :cond_23
    move v2, v4

    .line 92
    goto :goto_22

    .end local v1           #p:Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    :cond_25
    move v2, v4

    .line 94
    goto :goto_22
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 108
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
