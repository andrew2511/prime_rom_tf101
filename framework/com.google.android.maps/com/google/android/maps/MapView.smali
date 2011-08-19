.class public Lcom/google/android/maps/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MapView$LayoutParams;,
        Lcom/google/android/maps/MapView$Repainter;,
        Lcom/google/android/maps/MapView$ReticleDrawMode;
    }
.end annotation


# static fields
.field private static final KEY_CENTER_LATITUDE:Ljava/lang/String;

.field private static final KEY_CENTER_LONGITUDE:Ljava/lang/String;

.field private static final KEY_ZOOM_DISPLAYED:Ljava/lang/String;

.field private static final KEY_ZOOM_LEVEL:Ljava/lang/String;

.field private static final ZOOM_CONTROLS_TIMEOUT:J


# instance fields
.field private mBuiltInZoomControlsEnabled:Z

.field private mController:Lcom/google/android/maps/MapController;

.field private mConverter:Lcom/google/android/maps/PixelConverter;

.field private final mDrawer:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

.field private mFakeStreetViewEnabled:Z

.field private mGestureDetector:Lcom/google/android/maps/GestureDetector;

.field private final mGoogleLogo:Landroid/graphics/drawable/Drawable;

.field private final mGoogleLogoHeight:I

.field private final mGoogleLogoWidth:I

.field private mHandler:Landroid/os/Handler;

.field final mKey:Ljava/lang/String;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

.field private mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

.field private mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

.field final mRepainter:Lcom/google/android/maps/MapView$Repainter;

.field private mReticle:Landroid/graphics/drawable/Drawable;

.field private mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScroller:Landroid/widget/Scroller;

.field private mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/widget/ZoomControls;

.field private mZoomHelper:Lcom/google/android/maps/ZoomHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zoomDisplayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".centerLatitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".centerLongitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zoomLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    .line 143
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 247
    sget v0, Lcom/google/android/maps/InternalR$attr;->mapViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    .line 265
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "apiKey"

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    invoke-direct {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    iput-object v2, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    .line 163
    iput-object v3, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    .line 181
    iput-object v3, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    .line 221
    new-instance v2, Lcom/google/android/maps/MapView$Repainter;

    invoke-direct {v2, p0}, Lcom/google/android/maps/MapView$Repainter;-><init>(Lcom/google/android/maps/MapView;)V

    iput-object v2, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    .line 273
    if-nez p4, :cond_35

    .line 274
    sget-object v2, Lcom/google/android/maps/InternalR$styleable;->MapView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 276
    .local v1, a:Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/maps/InternalR$styleable;->MapView_apiKey:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    .line 277
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    .end local v1           #a:Landroid/content/res/TypedArray;
    :goto_29
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You need to specify an API Key for each MapView.  See the MapView documentation for details."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_35
    iput-object p4, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    goto :goto_29

    .line 287
    :cond_38
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/maps/MapView;->setWillNotDraw(Z)V

    .line 288
    instance-of v2, p1, Lcom/google/android/maps/MapActivity;

    if-eqz v2, :cond_6b

    .line 289
    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/MapActivity;

    move-object v2, v0

    invoke-virtual {v2, p0}, Lcom/google/android/maps/MapActivity;->setupMapView(Lcom/google/android/maps/MapView;)V

    .line 294
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/maps/InternalR$drawable;->maps_google_logo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/MapView;->mGoogleLogoWidth:I

    .line 298
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/MapView;->mGoogleLogoHeight:I

    .line 299
    return-void

    .line 291
    :cond_6b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MapViews can only be created inside instances of MapActivity."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "apiKey"

    .prologue
    .line 235
    const/4 v0, 0x0

    sget v1, Lcom/google/android/maps/InternalR$attr;->mapViewStyle:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/MapController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    return-object v0
.end method

.method static synthetic access$1000()J
    .registers 2

    .prologue
    .line 115
    sget-wide v0, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/android/maps/MapView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/PixelConverter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/OverlayBundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/maps/MapView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/maps/MapView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/maps/MapView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/maps/MapView;)Landroid/widget/ZoomControls;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/maps/MapView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/maps/MapView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private canZoomIn()Z
    .registers 3

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private canZoomOut()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1549
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v0

    if-le v0, v1, :cond_f

    move v0, v1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private createZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .registers 4

    .prologue
    .line 1444
    new-instance v0, Landroid/widget/ZoomButtonsController;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    .line 1445
    .local v0, controller:Landroid/widget/ZoomButtonsController;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomSpeed(J)V

    .line 1446
    new-instance v1, Lcom/google/android/maps/MapView$6;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/MapView$6;-><init>(Lcom/google/android/maps/MapView;Landroid/widget/ZoomButtonsController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 1485
    return-object v0
.end method

.method private createZoomControls()Landroid/widget/ZoomControls;
    .registers 4

    .prologue
    .line 1416
    new-instance v0, Landroid/widget/ZoomControls;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    .line 1417
    .local v0, zoomControls:Landroid/widget/ZoomControls;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 1418
    new-instance v1, Lcom/google/android/maps/MapView$4;

    invoke-direct {v1, p0}, Lcom/google/android/maps/MapView$4;-><init>(Lcom/google/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 1423
    new-instance v1, Lcom/google/android/maps/MapView$5;

    invoke-direct {v1, p0}, Lcom/google/android/maps/MapView$5;-><init>(Lcom/google/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 1428
    return-object v0
.end method

.method private isLocationDisplayed()Z
    .registers 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/google/android/maps/MapActivity;

    if-eqz v0, :cond_f

    .line 1071
    iget-object p0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/google/android/maps/MapActivity;

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->isLocationDisplayed()Z

    move-result v0

    .line 1074
    :goto_e
    return v0

    .restart local p0
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/google/android/maps/MapActivity;

    if-eqz v0, :cond_f

    .line 1079
    iget-object p0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/google/android/maps/MapActivity;

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->isRouteDisplayed()Z

    move-result v0

    .line 1082
    :goto_e
    return v0

    .restart local p0
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private updateZoomControls()V
    .registers 3

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_16

    .line 1539
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 1540
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 1542
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_2c

    .line 1543
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1544
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 1546
    :cond_2c
    return-void
.end method


# virtual methods
.method public canCoverCenter()Z
    .registers 4

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Z)Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 782
    instance-of v0, p1, Lcom/google/android/maps/MapView$LayoutParams;

    return v0
.end method

.method cleanupMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .registers 3
    .parameter "dispatcher"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->removeDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V

    .line 410
    return-void
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    .line 483
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 484
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    sub-int v0, v2, v3

    .line 485
    .local v0, x:I
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    sub-int v1, v2, v3

    .line 486
    .local v1, y:I
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    .line 487
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    .line 488
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 493
    .end local v0           #x:I
    .end local v1           #y:I
    :goto_34
    return-void

    .line 491
    :cond_35
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    goto :goto_34
.end method

.method public displayZoomControls(Z)V
    .registers 6
    .parameter "takeFocus"

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/google/android/maps/MapView;->mBuiltInZoomControlsEnabled:Z

    if-eqz v0, :cond_1c

    .line 1051
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1052
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    .line 1053
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 1067
    :cond_1b
    :goto_1b
    return-void

    .line 1056
    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_1b

    .line 1057
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2f

    .line 1058
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->show()V

    .line 1060
    :cond_2f
    if-eqz p1, :cond_36

    .line 1061
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->requestFocus()Z

    .line 1063
    :cond_36
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1064
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b
.end method

.method doZoom(Z)Z
    .registers 4
    .parameter "zoomIn"

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    move-result v0

    return v0
.end method

.method doZoom(ZII)Z
    .registers 7
    .parameter "zoomIn"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 1515
    const/4 v0, 0x0

    .line 1516
    .local v0, success:Z
    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1517
    :goto_9
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/google/android/maps/ZoomHelper;->doZoom(ZZII)Z

    .line 1518
    const/4 v0, 0x1

    .line 1520
    :cond_10
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    .line 1521
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    .line 1522
    return v0

    .line 1516
    :cond_18
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_9
.end method

.method drawMap(Landroid/graphics/Canvas;Z)Z
    .registers 11
    .parameter "canvas"
    .parameter "fetchTiles"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->setCanvas(Landroid/graphics/Canvas;)V

    .line 1090
    const/4 v7, 0x1

    .line 1091
    .local v7, drawIncompleteTiles:Z
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->isLocationDisplayed()Z

    move-result v3

    invoke-direct {p0}, Lcom/google/android/maps/MapView;->isRouteDisplayed()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawMap(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZZZZ)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->generateDefaultLayoutParams()Lcom/google/android/maps/MapView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/maps/MapView$LayoutParams;
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 706
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, v2, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    const/16 v2, 0x11

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 771
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 786
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getController()Lcom/google/android/maps/MapController;
    .registers 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    return-object v0
.end method

.method public getLatitudeSpan()I
    .registers 2

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan()I

    move-result v0

    return v0
.end method

.method public getLongitudeSpan()I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1273
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    .line 1275
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    .line 1276
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 1281
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    .line 1282
    const/4 v3, 0x2

    .line 1283
    shr-int/lit8 v2, v2, 0x2

    move v6, v3

    move v3, v2

    move v2, v6

    .line 1285
    :goto_24
    neg-int v4, v3

    invoke-virtual {v1, v4, v5, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v4

    .line 1286
    invoke-virtual {v1, v3, v5, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v0

    .line 1287
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v0

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1288
    if-gtz v0, :cond_3c

    .line 1289
    const v1, 0x15752a00

    add-int/2addr v0, v1

    .line 1291
    :cond_3c
    shl-int/2addr v0, v2

    return v0

    :cond_3e
    move v3, v2

    move v2, v5

    goto :goto_24
.end method

.method public getMapCenter()Lcom/google/android/maps/GeoPoint;
    .registers 3

    .prologue
    .line 1225
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .registers 3

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    move-result v0

    return v0
.end method

.method public final getOverlays()Ljava/util/List;
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
    .line 1252
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayBundle;->getOverlays()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Lcom/google/android/maps/Projection;
    .registers 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    return-object v0
.end method

.method getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    return-object v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .registers 2

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    if-nez v0, :cond_18

    .line 1394
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->createZoomControls()Landroid/widget/ZoomControls;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    .line 1395
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 1396
    new-instance v0, Lcom/google/android/maps/MapView$3;

    invoke-direct {v0, p0}, Lcom/google/android/maps/MapView$3;-><init>(Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 1412
    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method public getZoomLevel()I
    .registers 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public isSatellite()Z
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isSatellite()Z

    move-result v0

    return v0
.end method

.method public isStreetView()Z
    .registers 2

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/google/android/maps/MapView;->mFakeStreetViewEnabled:Z

    return v0
.end method

.method public isTraffic()Z
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->isShowTraffic()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 473
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 474
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_d

    .line 475
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 477
    :cond_d
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 509
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/MapView;->onLayout(ZIIII)V

    .line 512
    :cond_11
    const/4 v9, 0x1

    .line 513
    .local v9, fetchTiles:Z
    const/4 v6, 0x0

    .line 515
    .local v6, drawAgain:Z
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getDrawingTime()J

    move-result-wide v7

    .line 519
    .local v7, drawTime:J
    if-nez v6, :cond_6f

    move v9, v1

    .line 521
    :goto_1a
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/maps/ZoomHelper;->shouldDrawMap(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 522
    invoke-virtual {p0, p1, v9}, Lcom/google/android/maps/MapView;->drawMap(Landroid/graphics/Canvas;Z)Z

    move-result v0

    if-nez v0, :cond_71

    move v0, v1

    :goto_29
    or-int/2addr v6, v0

    .line 525
    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    if-ne v0, v1, :cond_3b

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 526
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    :cond_3b
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    invoke-virtual {v0, p1, p0, v7, v8}, Lcom/google/android/maps/ZoomHelper;->onDraw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z

    move-result v0

    or-int/2addr v6, v0

    .line 530
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0, p1, p0, v7, v8}, Lcom/google/android/maps/OverlayBundle;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z

    move-result v0

    or-int/2addr v6, v0

    .line 532
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    if-ne v0, v1, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 533
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    :cond_5a
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 539
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/maps/MapController;->stepAnimation(J)Z

    move-result v0

    or-int/2addr v6, v0

    .line 541
    if-eqz v6, :cond_6e

    .line 542
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->requestLayout()V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 545
    :cond_6e
    return-void

    :cond_6f
    move v9, v2

    .line 519
    goto :goto_1a

    :cond_71
    move v0, v2

    .line 522
    goto :goto_29
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "unused"

    .prologue
    .line 612
    if-nez p1, :cond_7

    .line 613
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->stopPanning()V

    .line 615
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 616
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 623
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/maps/OverlayBundle;->onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 625
    :goto_a
    return v0

    .line 624
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/maps/MapController;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_a

    .line 625
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 633
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/maps/OverlayBundle;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 635
    :goto_a
    return v0

    .line 634
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/maps/MapController;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_a

    .line 635
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    .line 715
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getChildCount()I

    move-result v4

    .line 716
    .local v4, count:I
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 718
    .local v8, point:Landroid/graphics/Point;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_d
    if-ge v6, v4, :cond_7f

    .line 719
    invoke-virtual {p0, v6}, Lcom/google/android/maps/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 720
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_61

    .line 722
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/google/android/maps/MapView$LayoutParams;

    .line 724
    .local v7, lp:Lcom/google/android/maps/MapView$LayoutParams;
    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    if-nez v12, :cond_64

    .line 725
    iget-object v12, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    iget-object v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v12, v13, v8}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 726
    iget v12, v8, Landroid/graphics/Point;->x:I

    iget v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    add-int/2addr v12, v13

    iput v12, v8, Landroid/graphics/Point;->x:I

    .line 727
    iget v12, v8, Landroid/graphics/Point;->y:I

    iget v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    add-int/2addr v12, v13

    iput v12, v8, Landroid/graphics/Point;->y:I

    .line 733
    :goto_3a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 734
    .local v9, width:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 735
    .local v5, height:I
    iget v10, v8, Landroid/graphics/Point;->x:I

    .line 736
    .local v10, x:I
    iget v11, v8, Landroid/graphics/Point;->y:I

    .line 737
    .local v11, y:I
    iget v0, v7, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    .line 738
    .local v0, alignment:I
    and-int/lit8 v12, v0, 0x7

    packed-switch v12, :pswitch_data_86

    .line 750
    :goto_4d
    :pswitch_4d
    and-int/lit8 v12, v0, 0x70

    sparse-switch v12, :sswitch_data_94

    .line 762
    :goto_52
    :sswitch_52
    iget v12, p0, Lcom/google/android/maps/MapView;->mPaddingLeft:I

    add-int v2, v12, v10

    .line 763
    .local v2, childLeft:I
    iget v12, p0, Lcom/google/android/maps/MapView;->mPaddingTop:I

    add-int v3, v12, v11

    .line 764
    .local v3, childTop:I
    add-int v12, v2, v9

    add-int v13, v3, v5

    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 718
    .end local v0           #alignment:I
    .end local v2           #childLeft:I
    .end local v3           #childTop:I
    .end local v5           #height:I
    .end local v7           #lp:Lcom/google/android/maps/MapView$LayoutParams;
    .end local v9           #width:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 729
    .restart local v7       #lp:Lcom/google/android/maps/MapView$LayoutParams;
    :cond_64
    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    iput v12, v8, Landroid/graphics/Point;->x:I

    .line 730
    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    iput v12, v8, Landroid/graphics/Point;->y:I

    goto :goto_3a

    .line 742
    .restart local v0       #alignment:I
    .restart local v5       #height:I
    .restart local v9       #width:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :pswitch_6d
    div-int/lit8 v12, v9, 0x2

    sub-int/2addr v10, v12

    .line 743
    goto :goto_4d

    .line 747
    :pswitch_71
    const/4 v12, 0x1

    sub-int v12, v9, v12

    sub-int/2addr v10, v12

    goto :goto_4d

    .line 754
    :sswitch_76
    div-int/lit8 v12, v5, 0x2

    sub-int/2addr v11, v12

    .line 755
    goto :goto_52

    .line 759
    :sswitch_7a
    const/4 v12, 0x1

    sub-int v12, v5, v12

    sub-int/2addr v11, v12

    goto :goto_52

    .line 767
    .end local v0           #alignment:I
    .end local v1           #child:Landroid/view/View;
    .end local v5           #height:I
    .end local v7           #lp:Lcom/google/android/maps/MapView$LayoutParams;
    .end local v9           #width:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7f
    iget-object v12, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v12}, Lcom/google/android/maps/MapController;->clean()V

    .line 768
    return-void

    .line 738
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_71
    .end packed-switch

    .line 750
    :sswitch_data_94
    .sparse-switch
        0x10 -> :sswitch_76
        0x30 -> :sswitch_52
        0x50 -> :sswitch_7a
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa

    .line 548
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 551
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/MapView;->measureChildren(II)V

    .line 559
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    move-result v1

    .line 560
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v2

    .line 561
    if-eqz v1, :cond_14

    if-nez v2, :cond_62

    .line 562
    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 563
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 564
    if-nez v1, :cond_28

    .line 565
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 567
    :cond_28
    if-nez v2, :cond_62

    .line 568
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 572
    :goto_2e
    invoke-static {v1, p1}, Lcom/google/android/maps/MapView;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/google/android/maps/MapView;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/MapView;->setMeasuredDimension(II)V

    .line 580
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/MapView;->mGoogleLogoHeight:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/google/android/maps/MapView;->mGoogleLogoWidth:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 590
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resize(II)V

    .line 591
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->onMeasure()V

    .line 592
    return-void

    :cond_62
    move v0, v2

    goto :goto_2e
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1351
    if-nez p1, :cond_4

    .line 1370
    :cond_3
    :goto_3
    return-void

    .line 1354
    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    if-eqz v0, :cond_32

    .line 1355
    const v0, 0x7fffffff

    .line 1356
    sget-object v1, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1357
    sget-object v2, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1358
    if-eq v1, v0, :cond_25

    if-eq v2, v0, :cond_25

    .line 1359
    iget-object v3, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    new-instance v4, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v4, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 1361
    :cond_25
    sget-object v1, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1362
    if-eq v1, v0, :cond_32

    .line 1363
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 1366
    :cond_32
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    .line 1367
    :goto_3b
    if-eqz v0, :cond_3

    .line 1368
    invoke-virtual {p0, v5}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    goto :goto_3

    :cond_41
    move v0, v5

    .line 1366
    goto :goto_3b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1332
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1333
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1334
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1336
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_46

    .line 1338
    :cond_3f
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    :goto_45
    return-void

    .line 1340
    :cond_46
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_45
.end method

.method protected onSizeChanged(IIII)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 461
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v4, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resize(II)V

    .line 462
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_36

    .line 463
    div-int/lit8 v4, p1, 0x2

    iget-object v5, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 464
    .local v1, left:I
    div-int/lit8 v4, p2, 0x2

    iget-object v5, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 465
    .local v3, top:I
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 466
    .local v2, right:I
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 467
    .local v0, bottom:I
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :cond_36
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 673
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 674
    :cond_d
    const/4 v0, 0x0

    .line 684
    :goto_e
    return v0

    .line 678
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 679
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/maps/OverlayBundle;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    .line 680
    goto :goto_e

    .line 682
    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 683
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 684
    goto :goto_e
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x4120

    .line 645
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 646
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/maps/OverlayBundle;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 647
    const/4 v0, 0x1

    .line 663
    :goto_e
    return v0

    .line 649
    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/TrackballGestureDetector;->analyze(Landroid/view/MotionEvent;)V

    .line 651
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    invoke-virtual {v0}, Lcom/google/android/maps/TrackballGestureDetector;->isScroll()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 654
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapController;->scrollByTrackball(II)V

    .line 663
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    goto :goto_e

    .line 656
    :cond_2f
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    invoke-virtual {v0}, Lcom/google/android/maps/TrackballGestureDetector;->isTap()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 657
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget-object v2, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    invoke-virtual {v0, v1, p0}, Lcom/google/android/maps/OverlayBundle;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    goto :goto_2d
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 689
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 690
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    .line 691
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 693
    :cond_f
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 600
    if-nez p1, :cond_7

    .line 601
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->stopPanning()V

    .line 603
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 604
    return-void
.end method

.method public preLoad()V
    .registers 3

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->preLoad(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    .line 1111
    return-void
.end method

.method restoreMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .registers 4
    .parameter "dispatcher"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequestListener(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestListener;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setTileOverlayRenderer(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;)V

    .line 403
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 1496
    iput-boolean p1, p0, Lcom/google/android/maps/MapView;->mBuiltInZoomControlsEnabled:Z

    .line 1497
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v0, :cond_c

    .line 1498
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->createZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 1500
    :cond_c
    return-void
.end method

.method public setReticleDrawMode(Lcom/google/android/maps/MapView$ReticleDrawMode;)V
    .registers 4
    .parameter

    .prologue
    .line 1308
    if-nez p1, :cond_a

    .line 1309
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The ReticleDrawMode cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1311
    :cond_a
    iput-object p1, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    .line 1312
    return-void
.end method

.method public setSatellite(Z)V
    .registers 4
    .parameter "on"

    .prologue
    .line 1140
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isSatellite()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 1150
    :goto_6
    return-void

    .line 1143
    :cond_7
    if-eqz p1, :cond_16

    .line 1144
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapMode(I)V

    .line 1148
    :goto_f
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    .line 1149
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    goto :goto_6

    .line 1146
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapMode(I)V

    goto :goto_f
.end method

.method public setStreetView(Z)V
    .registers 3
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1202
    if-eqz p1, :cond_6

    .line 1203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapView;->setTraffic(Z)V

    .line 1205
    :cond_6
    iput-boolean p1, p0, Lcom/google/android/maps/MapView;->mFakeStreetViewEnabled:Z

    .line 1206
    return-void
.end method

.method public setTraffic(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 1172
    if-eqz p1, :cond_6

    .line 1173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapView;->setStreetView(Z)V

    .line 1175
    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->setShowTraffic(Z)V

    .line 1176
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 1177
    return-void
.end method

.method setup(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .registers 7
    .parameter "map"
    .parameter "traffic"
    .parameter "dispatcher"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    .line 311
    new-instance v0, Lcom/google/android/maps/PixelConverter;

    invoke-direct {v0, p1}, Lcom/google/android/maps/PixelConverter;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    .line 313
    new-instance v0, Lcom/google/android/maps/OverlayBundle;

    invoke-direct {v0}, Lcom/google/android/maps/OverlayBundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    .line 314
    new-instance v0, Lcom/google/android/maps/MapController;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-direct {v0, v1, p0}, Lcom/google/android/maps/MapController;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    .line 317
    new-instance v0, Lcom/google/android/maps/ZoomHelper;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/ZoomHelper;-><init>(Lcom/google/android/maps/MapView;Lcom/google/android/maps/MapController;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    .line 319
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$drawable;->reticle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    .line 322
    sget-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    .line 324
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    .line 325
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    invoke-virtual {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->setTrafficService(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V

    .line 327
    invoke-virtual {p0, p3}, Lcom/google/android/maps/MapView;->restoreMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    .line 329
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    .line 330
    new-instance v0, Lcom/google/android/maps/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/MapView$1;

    invoke-direct {v2, p0}, Lcom/google/android/maps/MapView$1;-><init>(Lcom/google/android/maps/MapView;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    .line 376
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 377
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/MapView$2;

    invoke-direct {v2, p0}, Lcom/google/android/maps/MapView$2;-><init>(Lcom/google/android/maps/MapView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 394
    new-instance v0, Lcom/google/android/maps/TrackballGestureDetector;

    iget-object v1, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/maps/TrackballGestureDetector;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    .line 395
    return-void
.end method
