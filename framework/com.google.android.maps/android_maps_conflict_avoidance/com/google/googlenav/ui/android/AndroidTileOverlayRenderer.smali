.class public Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;
.source "AndroidTileOverlayRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;
    }
.end annotation


# static fields
.field private static final WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

.field private static final bgPaint:Landroid/graphics/Paint;


# instance fields
.field private final painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

.field private final trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->bgPaint:Landroid/graphics/Paint;

    return-void

    .line 32
    :array_16
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;-><init>()V

    .line 36
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    .line 37
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    .line 102
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/PathEffect;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method private static paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    .registers 6
    .parameter "bitmap"
    .parameter "image"

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    return-object v0
.end method


# virtual methods
.method protected generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 16
    .parameter "mapTile"
    .parameter "tt"

    .prologue
    const/16 v5, 0x100

    .line 48
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v12

    .line 49
    .local v12, tileImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    move-object v0, v12

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    move-object v10, v0

    .line 57
    .local v10, image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
    const/4 v8, 0x0

    .line 58
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 60
    .local v9, canvas:Landroid/graphics/Canvas;
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 64
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getWidth()I

    move-result v1

    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 66
    invoke-static {v8, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    move-result-object v9

    .line 67
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    invoke-virtual {v1, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->setup(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    invoke-virtual {v1, p2, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->renderTrafficTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    .line 74
    :cond_32
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-virtual {v1, v9, v8, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setup(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)V

    .line 76
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    if-eqz v1, :cond_53

    .line 77
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v11

    .line 78
    .local v11, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-virtual {v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    move-result v3

    invoke-virtual {v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    move-result v4

    invoke-virtual {v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v7

    move v6, v5

    invoke-virtual/range {v1 .. v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->render(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    .line 83
    .end local v11           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_53
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_67

    .line 84
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    :goto_66
    return-object v1

    :cond_67
    const/4 v1, 0x0

    goto :goto_66
.end method

.method public isFast()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
