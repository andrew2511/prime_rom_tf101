.class public abstract Lcom/google/android/maps/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/Overlay$Snappable;
    }
.end annotation


# static fields
.field protected static final SHADOW_X_SKEW:F = -0.9f

.field protected static final SHADOW_Y_SCALE:F = 0.5f


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method protected static drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V
    .registers 8
    .parameter "canvas"
    .parameter "drawable"
    .parameter "x"
    .parameter "y"
    .parameter "shadow"

    .prologue
    const/16 v2, 0x3e80

    const/16 v1, -0x3e80

    .line 58
    const/16 v0, 0x3e80

    .line 59
    .local v0, MAX:I
    if-gt p2, v2, :cond_e

    if-gt p3, v2, :cond_e

    if-lt p2, v1, :cond_e

    if-ge p3, v1, :cond_f

    .line 79
    :cond_e
    :goto_e
    return-void

    .line 62
    :cond_f
    if-eqz p4, :cond_18

    .line 63
    const/high16 v1, 0x7f00

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    :cond_18
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 66
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    if-eqz p4, :cond_30

    .line 69
    const v1, -0x4099999a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 70
    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 73
    :cond_30
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    if-eqz p4, :cond_38

    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 78
    :cond_38
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .registers 4
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 160
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .registers 7
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"
    .parameter "when"

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "mapView"

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "mapView"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .registers 4
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .registers 4
    .parameter "e"
    .parameter "mapView"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .registers 4
    .parameter "event"
    .parameter "mapView"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
