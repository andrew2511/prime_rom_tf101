.class final Lcom/google/android/maps/OverlayBundle;
.super Ljava/lang/Object;
.source "OverlayBundle.java"


# instance fields
.field private final mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z
    .registers 13
    .parameter "canvas"
    .parameter "mapView"
    .parameter "drawTime"

    .prologue
    .line 40
    const/4 v6, 0x0

    .line 41
    .local v6, again:Z
    iget-object v1, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    .line 42
    .local v0, overlay:Lcom/google/android/maps/Overlay;
    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z

    move-result v1

    or-int/2addr v6, v1

    goto :goto_7

    .line 44
    .end local v0           #overlay:Lcom/google/android/maps/Overlay;
    :cond_1d
    iget-object v1, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    .line 45
    .restart local v0       #overlay:Lcom/google/android/maps/Overlay;
    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z

    move-result v1

    or-int/2addr v6, v1

    goto :goto_23

    .line 47
    .end local v0           #overlay:Lcom/google/android/maps/Overlay;
    :cond_39
    return v6
.end method

.method public getOverlays()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"
    .parameter "mapView"

    .prologue
    const/4 v4, 0x1

    .line 98
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 102
    .local v2, size:I
    sub-int v0, v2, v4

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1e

    .line 103
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    .line 104
    .local v1, overlay:Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v4

    .line 108
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :goto_1a
    return v3

    .line 102
    .restart local v1       #overlay:Lcom/google/android/maps/Overlay;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 108
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"
    .parameter "mapView"

    .prologue
    const/4 v4, 0x1

    .line 119
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 123
    .local v2, size:I
    sub-int v0, v2, v4

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1e

    .line 124
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    .line 125
    .local v1, overlay:Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v4

    .line 129
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :goto_1a
    return v3

    .line 123
    .restart local v1       #overlay:Lcom/google/android/maps/Overlay;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 129
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .registers 8
    .parameter "p"
    .parameter "mapView"

    .prologue
    const/4 v4, 0x1

    .line 77
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    .local v2, size:I
    sub-int v0, v2, v4

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1e

    .line 82
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    .line 83
    .local v1, overlay:Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v4

    .line 87
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :goto_1a
    return v3

    .line 81
    .restart local v1       #overlay:Lcom/google/android/maps/Overlay;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 87
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .registers 8
    .parameter "e"
    .parameter "mapView"

    .prologue
    const/4 v4, 0x1

    .line 57
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 61
    .local v2, size:I
    sub-int v0, v2, v4

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1e

    .line 62
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    .line 63
    .local v1, overlay:Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v4

    .line 67
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :goto_1a
    return v3

    .line 61
    .restart local v1       #overlay:Lcom/google/android/maps/Overlay;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 67
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .registers 8
    .parameter "event"
    .parameter "mapView"

    .prologue
    const/4 v4, 0x1

    .line 139
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 143
    .local v2, size:I
    sub-int v0, v2, v4

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1e

    .line 144
    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    .line 145
    .local v1, overlay:Lcom/google/android/maps/Overlay;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v4

    .line 149
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :goto_1a
    return v3

    .line 143
    .restart local v1       #overlay:Lcom/google/android/maps/Overlay;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 149
    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method
