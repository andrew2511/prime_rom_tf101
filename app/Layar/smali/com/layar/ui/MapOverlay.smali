.class public abstract Lcom/layar/ui/MapOverlay;
.super Lcom/google/android/maps/Overlay;
.source "MapOverlay.java"

# interfaces
.implements Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/MapOverlay$DownloadIconsTaks;
    }
.end annotation


# instance fields
.field protected final DENSITY:F

.field private defaultFocus:Landroid/graphics/Bitmap;

.field protected defaultIcon:Landroid/graphics/Bitmap;

.field private downloadTask:Lcom/layar/ui/MapOverlay$DownloadIconsTaks;

.field private focusSize:I

.field private iconSize:I

.field private mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

.field protected mContext:Landroid/content/Context;

.field mLocation:Lcom/google/android/maps/GeoPoint;

.field mManIcon:Landroid/graphics/drawable/Drawable;

.field private final mPaintBMP:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSensor:Lcom/layar/util/SensorHelper;

.field myScreenCoords:Landroid/graphics/Point;

.field myScreenCoords2:Landroid/graphics/Point;

.field protected objectIcons:[Landroid/graphics/Bitmap;

.field protected poiContainer:Lcom/layar/data/POIsContainerHelper;

.field remfil:Landroid/graphics/PaintFlagsDrawFilter;

.field setfil:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 6
    .parameter "context"
    .parameter "density"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const-wide/high16 v4, 0x3fe0

    .line 64
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 51
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/layar/ui/MapOverlay;->setfil:Landroid/graphics/PaintFlagsDrawFilter;

    .line 52
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/layar/ui/MapOverlay;->remfil:Landroid/graphics/PaintFlagsDrawFilter;

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/layar/ui/MapOverlay;->mRect:Landroid/graphics/Rect;

    .line 56
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    .line 57
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    .line 58
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    const v2, 0x31f37c8

    const v3, 0xe329ab

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lcom/layar/ui/MapOverlay;->mLocation:Lcom/google/android/maps/GeoPoint;

    .line 65
    iput-object p1, p0, Lcom/layar/ui/MapOverlay;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .local v0, paint:Landroid/graphics/Paint;
    iput-object v0, p0, Lcom/layar/ui/MapOverlay;->mPaintBMP:Landroid/graphics/Paint;

    .line 68
    iget-object v1, p0, Lcom/layar/ui/MapOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/ui/MapOverlay;->mManIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    iput p2, p0, Lcom/layar/ui/MapOverlay;->DENSITY:F

    .line 71
    const/high16 v1, 0x41e0

    mul-float/2addr v1, p2

    float-to-double v1, v1

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/layar/ui/MapOverlay;->iconSize:I

    .line 72
    const/high16 v1, 0x4200

    mul-float/2addr v1, p2

    float-to-double v1, v1

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/layar/ui/MapOverlay;->focusSize:I

    .line 73
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFI)V
    .locals 3
    .parameter "canvas"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "size"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/layar/ui/MapOverlay;->mRect:Landroid/graphics/Rect;

    .line 144
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/layar/ui/MapOverlay;->mPaintBMP:Landroid/graphics/Paint;

    .line 146
    .local v0, paint:Landroid/graphics/Paint;
    div-int/lit8 v2, p5, 0x2

    int-to-float v2, v2

    sub-float v2, p3, v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 147
    div-int/lit8 v2, p5, 0x2

    int-to-float v2, v2

    sub-float v2, p4, v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 148
    div-int/lit8 v2, p5, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 149
    div-int/lit8 v2, p5, 0x2

    int-to-float v2, v2

    add-float/2addr v2, p4

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 151
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 152
    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 128
    iget-object v0, p0, Lcom/layar/ui/MapOverlay;->downloadTask:Lcom/layar/ui/MapOverlay$DownloadIconsTaks;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/layar/ui/MapOverlay;->downloadTask:Lcom/layar/ui/MapOverlay$DownloadIconsTaks;

    invoke-virtual {v0, v2}, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->cancel(Z)Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v0}, Lcom/layar/data/POIsContainerHelper;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;-><init>(Lcom/layar/ui/MapOverlay;Lcom/layar/ui/MapOverlay$DownloadIconsTaks;)V

    iput-object v0, p0, Lcom/layar/ui/MapOverlay;->downloadTask:Lcom/layar/ui/MapOverlay$DownloadIconsTaks;

    .line 134
    iget-object v0, p0, Lcom/layar/ui/MapOverlay;->downloadTask:Lcom/layar/ui/MapOverlay$DownloadIconsTaks;

    new-array v1, v2, [[Lcom/layar/data/BasePOI;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v3}, Lcom/layar/data/POIsContainerHelper;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/layar/ui/MapOverlay$DownloadIconsTaks;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :cond_1
    return-void
.end method

.method public dataUpdateStarted()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 27
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 155
    invoke-super/range {p0 .. p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mSensor:Lcom/layar/util/SensorHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v22

    .line 157
    .local v22, loc:Landroid/location/Location;
    if-eqz v22, :cond_0

    .line 158
    new-instance v5, Lcom/google/android/maps/GeoPoint;

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    const-wide v9, 0x412e848000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/ui/MapOverlay;->mLocation:Lcom/google/android/maps/GeoPoint;

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mLocation:Lcom/google/android/maps/GeoPoint;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 160
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v25

    .line 162
    .local v25, projection:Lcom/google/android/maps/Projection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mLocation:Lcom/google/android/maps/GeoPoint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    move-object v6, v0

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mManIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 165
    .local v17, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_3

    .line 166
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    .line 167
    .local v26, w:I
    if-gtz v26, :cond_1

    .line 168
    const/high16 v5, 0x41c8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/MapOverlay;->DENSITY:F

    move v6, v0

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 169
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    .line 170
    .local v20, h:I
    if-gtz v20, :cond_2

    .line 171
    const/high16 v5, 0x41c8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/MapOverlay;->DENSITY:F

    move v6, v0

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v20, v0

    .line 172
    :cond_2
    div-int/lit8 v26, v26, 0x2

    .line 173
    div-int/lit8 v20, v20, 0x2

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v5, v5, v26

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v6, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int v7, v7, v26

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int v8, v8, v20

    .line 174
    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    .end local v20           #h:I
    .end local v26           #w:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v5, v0

    if-nez v5, :cond_5

    .line 221
    .end local v17           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v25           #projection:Lcom/google/android/maps/Projection;
    :cond_4
    :goto_0
    return-void

    .line 182
    .restart local v17       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v25       #projection:Lcom/google/android/maps/Projection;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/layar/data/POIsContainerHelper;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v24

    .line 183
    .local v24, pois:[Lcom/layar/data/BasePOI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mSensor:Lcom/layar/util/SensorHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/layar/util/SensorHelper;->getCurrentDirection()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/layar/data/POIsContainerHelper;->getFocus(F)Lcom/layar/data/BasePOI;

    move-result-object v18

    .line 186
    .local v18, focusData:Lcom/layar/data/BasePOI;
    if-eqz v24, :cond_4

    .line 188
    const/16 v19, 0x0

    .line 189
    .local v19, focusIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->setfil:Landroid/graphics/PaintFlagsDrawFilter;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 190
    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int v21, v5, v6

    .local v21, i:I
    :goto_1
    if-gez v21, :cond_9

    .line 206
    if-eqz v18, :cond_8

    .line 207
    new-instance v5, Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/layar/data/BasePOI;->latitude:D

    move-wide v6, v0

    const-wide v8, 0x412e848000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/layar/data/BasePOI;->longitude:D

    move-wide v7, v0

    const-wide v9, 0x412e848000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v6, v0

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/layar/ui/MapOverlay;->getFocusHighlight()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 210
    .local v10, focusHighlight:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/MapOverlay;->focusSize:I

    move v13, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/layar/ui/MapOverlay;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFI)V

    .line 213
    :cond_6
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v5

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/ui/MapOverlay;->getIcon(Lcom/layar/data/BasePOI;ZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 214
    .local v7, icon:Landroid/graphics/Bitmap;
    if-nez v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->defaultFocus:Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 216
    :cond_7
    if-eqz v7, :cond_8

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/MapOverlay;->focusSize:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v7

    invoke-direct/range {v11 .. v16}, Lcom/layar/ui/MapOverlay;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFI)V

    .line 219
    .end local v7           #icon:Landroid/graphics/Bitmap;
    .end local v10           #focusHighlight:Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->remfil:Landroid/graphics/PaintFlagsDrawFilter;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto/16 :goto_0

    .line 191
    :cond_9
    aget-object v23, v24, v21

    .line 194
    .local v23, poi:Lcom/layar/data/BasePOI;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 195
    move/from16 v19, v21

    .line 190
    :cond_a
    :goto_2
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_1

    .line 198
    :cond_b
    new-instance v5, Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/layar/data/BasePOI;->latitude:D

    move-wide v6, v0

    const-wide v8, 0x412e848000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/layar/data/BasePOI;->longitude:D

    move-wide v7, v0

    const-wide v9, 0x412e848000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v6, v0

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 199
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v5

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/ui/MapOverlay;->getIcon(Lcom/layar/data/BasePOI;ZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 200
    .restart local v7       #icon:Landroid/graphics/Bitmap;
    if-nez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->defaultIcon:Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 201
    :cond_c
    if-eqz v7, :cond_a

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/MapOverlay;->iconSize:I

    move v10, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/layar/ui/MapOverlay;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFI)V

    goto :goto_2
.end method

.method protected getFocusHighlight()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getIcon(Lcom/layar/data/BasePOI;ZI)Landroid/graphics/Bitmap;
.end method

.method public init(Lcom/layar/data/POIsContainerHelper;Lcom/layar/util/SensorHelper;Lcom/layar/ui/BriefInfoViewWrapper;)V
    .locals 0
    .parameter "poiContainer"
    .parameter "sensor"
    .parameter "biw"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    .line 82
    iput-object p2, p0, Lcom/layar/ui/MapOverlay;->mSensor:Lcom/layar/util/SensorHelper;

    .line 83
    iput-object p3, p0, Lcom/layar/ui/MapOverlay;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    .line 85
    invoke-virtual {p0}, Lcom/layar/ui/MapOverlay;->layerChanged()V

    .line 86
    invoke-virtual {p0}, Lcom/layar/ui/MapOverlay;->dataChanged()V

    .line 87
    return-void
.end method

.method public layerChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 91
    iget-object v9, p0, Lcom/layar/ui/MapOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 92
    .local v7, resources:Landroid/content/res/Resources;
    const v9, 0x7f02010e

    invoke-static {v7, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    .local v1, border:Landroid/graphics/Bitmap;
    const v9, 0x7f020111

    invoke-static {v7, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    .local v3, glow:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/layar/ui/MapOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020110

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 96
    .local v5, mask:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 97
    .local v8, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 98
    .local v4, height:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, bmResult:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 102
    .local v6, paint:Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    .line 103
    iget-object v10, p0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v10}, Lcom/layar/data/POIsContainerHelper;->getInnerColor()I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 104
    invoke-virtual {v2, v5, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 106
    invoke-virtual {v2, v3, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    invoke-virtual {v2, v1, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    iput-object v0, p0, Lcom/layar/ui/MapOverlay;->defaultIcon:Landroid/graphics/Bitmap;

    .line 111
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #c:Landroid/graphics/Canvas;
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .restart local v2       #c:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    .line 114
    iget-object v10, p0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v10}, Lcom/layar/data/POIsContainerHelper;->getBIWBackgroundColor()I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 113
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 115
    invoke-virtual {v2, v5, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 118
    invoke-virtual {v2, v3, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    invoke-virtual {v2, v1, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    iput-object v0, p0, Lcom/layar/ui/MapOverlay;->defaultFocus:Landroid/graphics/Bitmap;

    .line 124
    return-void
.end method

.method protected abstract onPoiTapped(Lcom/layar/data/BasePOI;)V
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 20
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 233
    const/4 v4, 0x0

    .line 234
    .local v4, focus:Lcom/layar/data/BasePOI;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v11

    int-to-float v5, v11

    .line 236
    .local v5, minDelta:F
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v7

    .line 237
    .local v7, projection:Lcom/google/android/maps/Projection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    move-object v11, v0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    move-object v11, v0

    iget v9, v11, Landroid/graphics/Point;->x:I

    .line 240
    .local v9, tx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords:Landroid/graphics/Point;

    move-object v11, v0

    iget v10, v11, Landroid/graphics/Point;->y:I

    .line 242
    .local v10, ty:I
    const/high16 v11, 0x4160

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/ui/MapOverlay;->DENSITY:F

    move v12, v0

    mul-float/2addr v11, v12

    float-to-int v8, v11

    .line 244
    .local v8, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v11, v0

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/layar/data/POIsContainerHelper;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    invoke-super/range {p0 .. p2}, Lcom/google/android/maps/Overlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    move-result v11

    .line 274
    :goto_0
    return v11

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/layar/data/POIsContainerHelper;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v12, :cond_2

    .line 257
    if-nez v4, :cond_5

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/layar/data/POIsContainerHelper;->clearFocusLock()V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOI(Lcom/layar/data/BasePOI;Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    move-object v11, v0

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/layar/ui/BriefInfoViewWrapper;->setVisibility(I)V

    .line 274
    invoke-super/range {p0 .. p2}, Lcom/google/android/maps/Overlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    move-result v11

    goto :goto_0

    .line 245
    :cond_2
    aget-object v6, v11, v13

    .line 246
    .local v6, poi:Lcom/layar/data/BasePOI;
    new-instance v14, Lcom/google/android/maps/GeoPoint;

    iget-wide v15, v6, Lcom/layar/data/BasePOI;->latitude:D

    const-wide v17, 0x412e848000000000L

    mul-double v15, v15, v17

    double-to-int v15, v15

    move-object v0, v6

    iget-wide v0, v0, Lcom/layar/data/BasePOI;->longitude:D

    move-wide/from16 v16, v0

    const-wide v18, 0x412e848000000000L

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v15, v0

    invoke-interface {v7, v14, v15}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-gt v14, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-le v14, v8, :cond_4

    .line 245
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 250
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->myScreenCoords2:Landroid/graphics/Point;

    move-object v15, v0

    iget v15, v15, Landroid/graphics/Point;->y:I

    sub-int/2addr v15, v10

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v3, v14

    .line 251
    .local v3, delta:F
    cmpg-float v14, v3, v5

    if-gez v14, :cond_3

    .line 252
    move v5, v3

    .line 253
    move-object v4, v6

    goto :goto_2

    .line 261
    .end local v3           #delta:F
    .end local v6           #poi:Lcom/layar/data/BasePOI;
    :cond_5
    iget-boolean v11, v4, Lcom/layar/data/BasePOI;->showBiwOnClick:Z

    if-nez v11, :cond_6

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/layar/data/POIsContainerHelper;->clearFocusLock()V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOI(Lcom/layar/data/BasePOI;Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    move-object v11, v0

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/layar/ui/BriefInfoViewWrapper;->setVisibility(I)V

    .line 265
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/layar/ui/MapOverlay;->onPoiTapped(Lcom/layar/data/BasePOI;)V

    .line 266
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 268
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v11, v0

    invoke-virtual {v11, v4}, Lcom/layar/data/POIsContainerHelper;->setFocus(Lcom/layar/data/BasePOI;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v4, v12}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOI(Lcom/layar/data/BasePOI;Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/MapOverlay;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/layar/ui/BriefInfoViewWrapper;->setVisibility(I)V

    .line 271
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/layar/ui/MapOverlay;->onPoiTapped(Lcom/layar/data/BasePOI;)V

    .line 272
    const/4 v11, 0x1

    goto/16 :goto_0
.end method
