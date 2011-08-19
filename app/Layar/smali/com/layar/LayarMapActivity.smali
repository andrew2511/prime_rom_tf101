.class public abstract Lcom/layar/LayarMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "LayarMapActivity.java"

# interfaces
.implements Lcom/layar/util/SensorHelper$LocationChangeListener;
.implements Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;
.implements Lcom/layar/data/AudioPlayer;
.implements Lcom/layar/ui/OnDestroyInformer;
.implements Lcom/layar/data/DownloadListener;
.implements Lcom/layar/ui/ActionsMenu$ActionsMenuListener;
.implements Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/LayarMapActivity$MediaScannerNotifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/MapActivity;",
        "Lcom/layar/util/SensorHelper$LocationChangeListener;",
        "Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;",
        "Lcom/layar/data/AudioPlayer;",
        "Lcom/layar/ui/OnDestroyInformer;",
        "Lcom/layar/data/DownloadListener",
        "<",
        "Lcom/layar/data/POI;",
        ">;",
        "Lcom/layar/ui/ActionsMenu$ActionsMenuListener;",
        "Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;"
    }
.end annotation


# static fields
.field protected static final SUBACTIVITY_LAYER_INFO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "layar.LayarMapActivity"

.field public static final VIEW_REFRESH_INTERVAL:J = 0x1f4L


# instance fields
.field protected audioPlayer:Lcom/layar/ui/AudioView;

.field protected destroyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/ui/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field protected helper:Lcom/layar/ActivityHelper;

.field protected mAddFavDialog:Lcom/layar/ui/AddFavoritesDialog;

.field protected mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

.field protected mLayerManager:Lcom/layar/data/layer/LayerManager;

.field protected mLocation:Lcom/google/android/maps/GeoPoint;

.field protected mManIcon:Landroid/graphics/drawable/Drawable;

.field protected mMapController:Lcom/google/android/maps/MapController;

.field protected mMapView:Lcom/google/android/maps/MapView;

.field protected mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

.field protected mResolverDialog:Lcom/layar/ui/ResolverDialog;

.field protected mStatus:Lcom/layar/ui/StatusView;

.field protected mapCentered:Z

.field protected mapOverlay:Lcom/layar/ui/MapOverlay;

.field protected zoomControls:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/LayarMapActivity;->helper:Lcom/layar/ActivityHelper;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/LayarMapActivity;->destroyListeners:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method private informDestroyListeners()V
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->destroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    return-void

    .line 354
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/OnDestroyListener;

    .line 355
    .local v0, listener:Lcom/layar/ui/OnDestroyListener;
    invoke-interface {v0}, Lcom/layar/ui/OnDestroyListener;->destroyingEvent()V

    goto :goto_0
.end method


# virtual methods
.method public createScreenshot()V
    .locals 14

    .prologue
    .line 247
    new-instance v10, Lcom/layar/ui/SmartDialog$Builder;

    .line 248
    const v11, 0x7f0900b4

    const/4 v12, 0x1

    .line 247
    invoke-direct {v10, p0, v11, v12}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;IZ)V

    .line 249
    invoke-virtual {v10}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v2

    .line 250
    .local v2, dlg:Lcom/layar/ui/SmartDialog;
    invoke-virtual {v2}, Lcom/layar/ui/SmartDialog;->show()V

    .line 252
    const v10, 0x7f070066

    invoke-virtual {p0, v10}, Lcom/layar/LayarMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 253
    .local v6, layout:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 254
    .local v9, screenshot:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 257
    move-object v1, v9

    .line 258
    .local v1, corrected:Landroid/graphics/Bitmap;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "yyyyMMddkkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 259
    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 258
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, filename:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/sdcard/layar/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v4, file:Ljava/io/File;
    const-string v10, "layar.LayarMapActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file.getName = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 264
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    const/4 v7, 0x0

    .line 275
    .local v7, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    .end local v7           #os:Ljava/io/OutputStream;
    .local v8, os:Ljava/io/OutputStream;
    :try_start_2
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v1, v10, v11, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 279
    const-string v10, "layar.LayarMapActivity"

    const-string v11, "Failed to write screenshot"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0900bb

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v10

    invoke-virtual {v10}, Lcom/layar/ui/SmartToast;->show()V

    .line 281
    invoke-virtual {v2}, Lcom/layar/ui/SmartDialog;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    invoke-static {v8}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 295
    .end local v8           #os:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 266
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "layar.LayarMapActivity"

    const-string v11, "Could not create image directory"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0900bb

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v10

    invoke-virtual {v10}, Lcom/layar/ui/SmartToast;->show()V

    .line 268
    invoke-virtual {v2}, Lcom/layar/ui/SmartDialog;->dismiss()V

    goto :goto_0

    .line 285
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 286
    .local v3, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v10, "layar.LayarMapActivity"

    const-string v11, "Could not write screenshot to file"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0900bb

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v10

    invoke-virtual {v10}, Lcom/layar/ui/SmartToast;->show()V

    .line 288
    invoke-virtual {v2}, Lcom/layar/ui/SmartDialog;->dismiss()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    invoke-static {v7}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 290
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 291
    :goto_2
    invoke-static {v7}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 292
    throw v10

    .line 291
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :cond_1
    invoke-static {v8}, Lcom/layar/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 294
    new-instance v10, Lcom/layar/LayarMapActivity$MediaScannerNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/sdcard/layar/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "image/png"

    invoke-direct {v10, p0, v2, v11, v12}, Lcom/layar/LayarMapActivity$MediaScannerNotifier;-><init>(Lcom/layar/LayarMapActivity;Lcom/layar/ui/SmartDialog;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 285
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v10

    move-object v3, v10

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public dataChanged()V
    .locals 12

    .prologue
    const-wide v10, 0x412e848000000000L

    .line 370
    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v6}, Lcom/layar/data/POIsContainerHelper;->getPOIs()[Lcom/layar/data/BasePOI;

    move-result-object v0

    .line 371
    .local v0, dataList:[Lcom/layar/data/BasePOI;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-nez v6, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    .line 374
    .local v3, lat_min:I
    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    .line 375
    .local v2, lat_max:I
    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    .line 376
    .local v5, lon_min:I
    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    .line 378
    .local v4, lon_max:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-lt v1, v6, :cond_2

    .line 385
    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mMapController:Lcom/google/android/maps/MapController;

    iget-object v7, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v6, v7}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 386
    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mMapController:Lcom/google/android/maps/MapController;

    .line 387
    iget-object v7, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v7

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v8}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    .line 388
    iget-object v8, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v8}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v8

    sub-int v8, v4, v8

    iget-object v9, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v9}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 386
    invoke-virtual {v6, v7, v8}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    .line 391
    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mapOverlay:Lcom/layar/ui/MapOverlay;

    invoke-virtual {v6}, Lcom/layar/ui/MapOverlay;->dataChanged()V

    goto :goto_0

    .line 379
    :cond_2
    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/layar/data/BasePOI;->latitude:D

    mul-double/2addr v6, v10

    int-to-double v8, v3

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/layar/data/BasePOI;->latitude:D

    mul-double/2addr v6, v10

    double-to-int v3, v6

    .line 380
    :cond_3
    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/layar/data/BasePOI;->latitude:D

    mul-double/2addr v6, v10

    int-to-double v8, v2

    cmpl-double v6, v6, v8

    if-lez v6, :cond_4

    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/layar/data/BasePOI;->latitude:D

    mul-double/2addr v6, v10

    double-to-int v2, v6

    .line 381
    :cond_4
    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/layar/data/BasePOI;->longitude:D

    mul-double/2addr v6, v10

    int-to-double v8, v5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/layar/data/BasePOI;->longitude:D

    mul-double/2addr v6, v10

    double-to-int v5, v6

    .line 382
    :cond_5
    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/layar/data/BasePOI;->longitude:D

    mul-double/2addr v6, v10

    int-to-double v8, v4

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    aget-object v6, v0, v1

    iget-wide v6, v6, Lcom/layar/data/BasePOI;->longitude:D

    mul-double/2addr v6, v10

    double-to-int v4, v6

    .line 378
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public getAudioPlayer()Lcom/layar/data/AudioPlayer;
    .locals 0

    .prologue
    .line 396
    return-object p0
.end method

.method protected abstract getMapOverlay(Landroid/content/Context;F)Lcom/layar/ui/MapOverlay;
.end method

.method public getOwner()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 401
    return-object p0
.end method

.method public getPoisContainer()Lcom/layar/core/POIsContainer;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    return-object v0
.end method

.method protected abstract initPOIsContainer()V
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    invoke-virtual {v0, p0}, Lcom/layar/ui/BriefInfoViewWrapper;->setActionListener(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    .line 238
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public locationChanged(Landroid/location/Location;)V
    .locals 6
    .parameter "loc"

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 155
    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    .line 157
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 156
    iput-object v0, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    .line 158
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->mMapController:Lcom/google/android/maps/MapController;

    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V
    .locals 7
    .parameter "action"
    .parameter "layer"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v0}, Lcom/layar/data/POIsContainerHelper;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v2

    .line 445
    .local v2, focus:Lcom/layar/data/BasePOI;
    iget-object v4, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    move-object v0, p1

    move-object v1, p2

    move-object v3, p0

    move-object v5, p0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/layar/data/ActionHelper;->executeAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    .line 446
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 183
    if-nez p2, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->finish()V

    .line 187
    :cond_0
    return-void
.end method

.method protected abstract onAfterCreate()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 110
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->initPOIsContainer()V

    .line 112
    const v3, 0x7f030029

    invoke-virtual {p0, v3}, Lcom/layar/LayarMapActivity;->setContentView(I)V

    .line 113
    const v3, 0x7f070071

    invoke-virtual {p0, v3}, Lcom/layar/LayarMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/MapView;

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 114
    const v3, 0x7f07006a

    invoke-virtual {p0, v3}, Lcom/layar/LayarMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/BriefInfoViewWrapper;

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    .line 115
    const v3, 0x7f070069

    invoke-virtual {p0, v3}, Lcom/layar/LayarMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/StatusView;

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->mStatus:Lcom/layar/ui/StatusView;

    .line 117
    const v3, 0x7f070073

    invoke-virtual {p0, v3}, Lcom/layar/LayarMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/AudioView;

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    .line 118
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/layar/ui/AudioView;->setVisibility(I)V

    .line 120
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 121
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getZoomControls()Landroid/view/View;

    move-result-object v2

    .line 122
    .local v2, zoomView:Landroid/view/View;
    const/high16 v3, -0x3f40

    sget v4, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    const v3, 0x7f070072

    invoke-virtual {p0, v3}, Lcom/layar/LayarMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->setEnabled(Z)V

    .line 125
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->mMapController:Lcom/google/android/maps/MapController;

    .line 126
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mMapController:Lcom/google/android/maps/MapController;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 128
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 129
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    iget-object v4, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v3, v4}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOIsContainer(Lcom/layar/core/POIsContainer;)V

    .line 133
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v3, v4}, Lcom/layar/LayarMapActivity;->getMapOverlay(Landroid/content/Context;F)Lcom/layar/ui/MapOverlay;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->mapOverlay:Lcom/layar/ui/MapOverlay;

    .line 136
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mapOverlay:Lcom/layar/ui/MapOverlay;

    iget-object v4, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    iget-object v5, p0, Lcom/layar/LayarMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v5, v5, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    iget-object v6, p0, Lcom/layar/LayarMapActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    invoke-virtual {v3, v4, v5, v6}, Lcom/layar/ui/MapOverlay;->init(Lcom/layar/data/POIsContainerHelper;Lcom/layar/util/SensorHelper;Lcom/layar/ui/BriefInfoViewWrapper;)V

    .line 137
    iget-object v3, p0, Lcom/layar/LayarMapActivity;->mapOverlay:Lcom/layar/ui/MapOverlay;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v3, Lcom/google/android/maps/GeoPoint;

    const v4, 0x31f37c8

    const v5, 0xe329ab

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    .line 141
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/LayarMapActivity;->mManIcon:Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->onAfterCreate()V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/layar/LayarMapActivity;->informDestroyListeners()V

    .line 350
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 351
    return-void
.end method

.method public onDownloaded(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 412
    return-void
.end method

.method public onDownloadingCanceled()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public onDownloadingEnded()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public onDownloadingError(I)V
    .locals 4
    .parameter "responseCode"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->helper:Lcom/layar/ActivityHelper;

    const/4 v1, 0x1

    .line 438
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 437
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    .line 439
    return-void
.end method

.method public onDownloadingStarted()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public onItemDownloaded(Lcom/layar/data/POI;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 432
    return-void
.end method

.method public bridge synthetic onItemDownloaded(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/POI;

    invoke-virtual {p0, p1}, Lcom/layar/LayarMapActivity;->onItemDownloaded(Lcom/layar/data/POI;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 165
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/layar/LayarMapActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    invoke-virtual {v0}, Lcom/layar/ui/AudioView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    invoke-virtual {v0}, Lcom/layar/ui/AudioView;->stop()V

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->MAP:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->unregisterView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 220
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->unRegisterLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 221
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->mStatus:Lcom/layar/ui/StatusView;

    invoke-virtual {v0}, Lcom/layar/ui/StatusView;->stop()V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide v5, 0x412e848000000000L

    .line 191
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 194
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    sget-object v2, Lcom/layar/data/layer/LayerManager$LayarView;->MAP:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager;->registerView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 195
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mStatus:Lcom/layar/ui/StatusView;

    invoke-virtual {v1}, Lcom/layar/ui/StatusView;->start()V

    .line 197
    iput-boolean v7, p0, Lcom/layar/LayarMapActivity;->mapCentered:Z

    .line 199
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 200
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 202
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 201
    iput-object v1, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mMapController:Lcom/google/android/maps/MapController;

    iget-object v2, p0, Lcom/layar/LayarMapActivity;->mLocation:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 205
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v1}, Lcom/layar/data/POIsContainerHelper;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v1}, Lcom/layar/data/POIsContainerHelper;->isFocusLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    iget-object v2, p0, Lcom/layar/LayarMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v2}, Lcom/layar/data/POIsContainerHelper;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOI(Lcom/layar/data/BasePOI;Z)V

    .line 208
    iget-object v1, p0, Lcom/layar/LayarMapActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    invoke-virtual {v1, v7}, Lcom/layar/ui/BriefInfoViewWrapper;->setVisibility(I)V

    .line 210
    :cond_1
    return-void
.end method

.method protected onSettingsButtonClicked()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 241
    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 243
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->finish()V

    .line 244
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStart()V

    .line 176
    invoke-virtual {p0}, Lcom/layar/LayarMapActivity;->initView()V

    .line 177
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    .line 228
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    invoke-virtual {v0}, Lcom/layar/ui/AudioView;->stop()V

    .line 229
    return-void
.end method

.method public playAudio(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    invoke-virtual {v0, p1, p0}, Lcom/layar/ui/AudioView;->play(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 345
    return-void
.end method

.method public registerOnDestroyListener(Lcom/layar/ui/OnDestroyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->destroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public unregisterOnDestroyListener(Lcom/layar/ui/OnDestroyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/layar/LayarMapActivity;->destroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method
