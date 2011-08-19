.class Lcom/asus/Viewer/BitmapCache;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Lcom/asus/Viewer/ImageViewTouchBase$Recycler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/Viewer/BitmapCache$Entry;
    }
.end annotation


# instance fields
.field private final mCache:[Lcom/asus/Viewer/BitmapCache$Entry;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    new-array v1, p1, [Lcom/asus/Viewer/BitmapCache$Entry;

    iput-object v1, p0, Lcom/asus/Viewer/BitmapCache;->mCache:[Lcom/asus/Viewer/BitmapCache$Entry;

    .line 1254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/Viewer/BitmapCache;->mCache:[Lcom/asus/Viewer/BitmapCache$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/asus/Viewer/BitmapCache;->mCache:[Lcom/asus/Viewer/BitmapCache$Entry;

    new-instance v2, Lcom/asus/Viewer/BitmapCache$Entry;

    invoke-direct {v2}, Lcom/asus/Viewer/BitmapCache$Entry;-><init>()V

    aput-object v2, v1, v0

    .line 1254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1257
    :cond_0
    return-void
.end method

.method private findEntry(I)Lcom/asus/Viewer/BitmapCache$Entry;
    .locals 5
    .parameter "pos"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/asus/Viewer/BitmapCache;->mCache:[Lcom/asus/Viewer/BitmapCache$Entry;

    .local v0, arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1263
    .local v1, e:Lcom/asus/Viewer/BitmapCache$Entry;
    iget v4, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    if-ne p1, v4, :cond_0

    move-object v4, v1

    .line 1267
    .end local v1           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :goto_1
    return-object v4

    .line 1262
    .restart local v1       #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1267
    .end local v1           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 1316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/asus/Viewer/BitmapCache;->mCache:[Lcom/asus/Viewer/BitmapCache$Entry;

    .local v0, arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1317
    .local v1, e:Lcom/asus/Viewer/BitmapCache$Entry;
    iget-object v4, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 1318
    iget-object v4, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1320
    :cond_0
    invoke-virtual {v1}, Lcom/asus/Viewer/BitmapCache$Entry;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1322
    .end local v1           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :cond_1
    monitor-exit p0

    return-void

    .line 1316
    .end local v0           #arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized clearCache(I)V
    .locals 9
    .parameter "pos"

    .prologue
    const/4 v8, -0x1

    .line 1347
    monitor-enter p0

    const/4 v1, 0x0

    .line 1348
    .local v1, best:Lcom/asus/Viewer/BitmapCache$Entry;
    const/4 v6, -0x1

    .line 1349
    .local v6, maxDist:I
    :try_start_0
    iget-object v0, p0, Lcom/asus/Viewer/BitmapCache;->mCache:[Lcom/asus/Viewer/BitmapCache$Entry;

    .local v0, arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 1350
    .local v3, e:Lcom/asus/Viewer/BitmapCache$Entry;
    iget v7, v3, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    if-ne v7, v8, :cond_2

    .line 1351
    move-object v1, v3

    .line 1364
    .end local v3           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :cond_0
    iget-object v7, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 1365
    iget-object v7, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1367
    :cond_1
    const/4 v7, -0x1

    iput v7, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    .line 1368
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    monitor-exit p0

    return-void

    .line 1354
    .restart local v3       #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :cond_2
    :try_start_1
    iget v7, v3, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1355
    .local v2, dist:I
    if-le v2, v6, :cond_3

    .line 1356
    move v6, v2

    .line 1357
    move-object v1, v3

    .line 1349
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1347
    .end local v0           #arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    .end local v2           #dist:I
    .end local v3           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pos"

    .prologue
    .line 1272
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/asus/Viewer/BitmapCache;->findEntry(I)Lcom/asus/Viewer/BitmapCache$Entry;

    move-result-object v0

    .line 1273
    .local v0, e:Lcom/asus/Viewer/BitmapCache$Entry;
    if-eqz v0, :cond_0

    .line 1274
    iget-object v1, v0, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1272
    .end local v0           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getError(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 1378
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/asus/Viewer/BitmapCache;->findEntry(I)Lcom/asus/Viewer/BitmapCache$Entry;

    move-result-object v0

    .line 1379
    .local v0, e:Lcom/asus/Viewer/BitmapCache$Entry;
    if-eqz v0, :cond_0

    .line 1380
    iget-boolean v1, v0, Lcom/asus/Viewer/BitmapCache$Entry;->isError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1378
    .end local v0           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasBitmap(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 1326
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/asus/Viewer/BitmapCache;->findEntry(I)Lcom/asus/Viewer/BitmapCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1327
    .local v0, e:Lcom/asus/Viewer/BitmapCache$Entry;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1326
    .end local v0           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(ILandroid/graphics/Bitmap;)V
    .locals 9
    .parameter "pos"
    .parameter "bitmap"

    .prologue
    .line 1281
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/asus/Viewer/BitmapCache;->findEntry(I)Lcom/asus/Viewer/BitmapCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1312
    :goto_0
    monitor-exit p0

    return-void

    .line 1289
    :cond_0
    const/4 v1, 0x0

    .line 1290
    .local v1, best:Lcom/asus/Viewer/BitmapCache$Entry;
    const/4 v6, -0x1

    .line 1291
    .local v6, maxDist:I
    :try_start_1
    iget-object v0, p0, Lcom/asus/Viewer/BitmapCache;->mCache:[Lcom/asus/Viewer/BitmapCache$Entry;

    .local v0, arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 1292
    .local v3, e:Lcom/asus/Viewer/BitmapCache$Entry;
    iget v7, v3, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 1293
    move-object v1, v3

    .line 1307
    .end local v3           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :cond_1
    iget-object v7, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 1308
    iget-object v7, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1310
    :cond_2
    iput p1, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    .line 1311
    iput-object p2, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1281
    .end local v0           #arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    .end local v1           #best:Lcom/asus/Viewer/BitmapCache$Entry;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #maxDist:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1296
    .restart local v0       #arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    .restart local v1       #best:Lcom/asus/Viewer/BitmapCache$Entry;
    .restart local v3       #e:Lcom/asus/Viewer/BitmapCache$Entry;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #maxDist:I
    :cond_3
    :try_start_2
    iget v7, v3, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 1297
    .local v2, dist:I
    if-le v2, v6, :cond_4

    .line 1298
    move v6, v2

    .line 1299
    move-object v1, v3

    .line 1291
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public declared-synchronized recycle(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "b"

    .prologue
    .line 1333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/asus/Viewer/BitmapCache;->mCache:[Lcom/asus/Viewer/BitmapCache$Entry;

    .local v0, arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1334
    .local v1, e:Lcom/asus/Viewer/BitmapCache$Entry;
    iget v4, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mPos:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1335
    iget-object v4, v1, Lcom/asus/Viewer/BitmapCache$Entry;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_0

    .line 1341
    .end local v1           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :goto_1
    monitor-exit p0

    return-void

    .line 1333
    .restart local v1       #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1340
    .end local v1           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1333
    .end local v0           #arr$:[Lcom/asus/Viewer/BitmapCache$Entry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setError(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1371
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/asus/Viewer/BitmapCache;->findEntry(I)Lcom/asus/Viewer/BitmapCache$Entry;

    move-result-object v0

    .line 1372
    .local v0, e:Lcom/asus/Viewer/BitmapCache$Entry;
    if-eqz v0, :cond_0

    .line 1373
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/asus/Viewer/BitmapCache$Entry;->isError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    :cond_0
    monitor-exit p0

    return-void

    .line 1371
    .end local v0           #e:Lcom/asus/Viewer/BitmapCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
