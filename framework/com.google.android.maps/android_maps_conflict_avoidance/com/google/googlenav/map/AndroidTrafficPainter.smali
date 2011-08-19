.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;
.super Ljava/lang/Object;
.source "AndroidTrafficPainter.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;
    }
.end annotation


# static fields
.field private static final MAJOR_DASH_INTERVALS:[F

.field private static final MINOR_DASH_INTERVALS:[F


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private isPreserveLabels:Z

.field private mainXfermode:Landroid/graphics/Xfermode;

.field private final majorDash:Landroid/graphics/PathEffect;

.field private final minorDash:Landroid/graphics/PathEffect;

.field private final paint:Landroid/graphics/Paint;

.field private final preserveLabels:Landroid/graphics/AvoidXfermode;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 28
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MAJOR_DASH_INTERVALS:[F

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_18

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MINOR_DASH_INTERVALS:[F

    return-void

    .line 28
    :array_10
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0xc0t 0x40t
    .end array-data

    .line 29
    :array_18
    .array-data 0x4
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0x40t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/DashPathEffect;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MAJOR_DASH_INTERVALS:[F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->majorDash:Landroid/graphics/PathEffect;

    .line 32
    new-instance v0, Landroid/graphics/DashPathEffect;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MINOR_DASH_INTERVALS:[F

    const/high16 v2, 0x40c0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->minorDash:Landroid/graphics/PathEffect;

    .line 34
    new-instance v0, Landroid/graphics/AvoidXfermode;

    const v1, -0xbfbfc0

    const/16 v2, 0xfd

    sget-object v3, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->preserveLabels:Landroid/graphics/AvoidXfermode;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    .line 89
    return-void
.end method


# virtual methods
.method public addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V
    .registers 9
    .parameter "path"
    .parameter "color"
    .parameter "width"

    .prologue
    const/4 v4, 0x0

    .line 54
    shr-int/lit8 p3, p3, 0x8

    .line 56
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    if-eqz v2, :cond_f

    const v2, -0x2f000001

    if-ne p2, v2, :cond_f

    .line 58
    const/4 p2, -0x1

    .line 59
    add-int/lit8 p3, p3, 0x2

    .line 61
    :cond_f
    const/high16 v2, -0x64

    if-ne p2, v2, :cond_5a

    const/4 v2, 0x1

    move v1, v2

    .line 63
    .local v1, isDashed:Z
    :goto_15
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    int-to-float v3, p3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_5d

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->majorDash:Landroid/graphics/PathEffect;

    :goto_26
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 66
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->mainXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    check-cast p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;

    .end local p1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 69
    .local v0, graphicsPath:Landroid/graphics/Path;
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    if-eqz v1, :cond_59

    .line 78
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->minorDash:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 79
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    :cond_59
    return-void

    .line 61
    .end local v0           #graphicsPath:Landroid/graphics/Path;
    .end local v1           #isDashed:Z
    .restart local p1
    :cond_5a
    const/4 v2, 0x0

    move v1, v2

    goto :goto_15

    .restart local v1       #isDashed:Z
    :cond_5d
    move-object v3, v4

    .line 65
    goto :goto_26
.end method

.method public createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;)V

    return-object v0
.end method

.method public setup(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 43
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    .line 45
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 47
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;->INSTANCE:Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    .line 50
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->preserveLabels:Landroid/graphics/AvoidXfermode;

    :goto_2b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->mainXfermode:Landroid/graphics/Xfermode;

    .line 51
    return-void

    .line 50
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2b
.end method
