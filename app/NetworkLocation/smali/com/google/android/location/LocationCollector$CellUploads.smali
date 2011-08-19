.class Lcom/google/android/location/LocationCollector$CellUploads;
.super Ljava/lang/Object;
.source "LocationCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/LocationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellUploads"
.end annotation


# instance fields
.field private final MIN_DISTANCE:I

.field private final SIZE:I

.field private final cells:[Ljava/lang/String;

.field private final distance:[F

.field private index:I

.field private final latitudes:[D

.field private final longitudes:[D

.field final synthetic this$0:Lcom/google/android/location/LocationCollector;

.field private final valid:[Z


# direct methods
.method private constructor <init>(Lcom/google/android/location/LocationCollector;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 480
    iput-object p1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->this$0:Lcom/google/android/location/LocationCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const/16 v1, 0x32

    iput v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->MIN_DISTANCE:I

    .line 472
    iput v2, p0, Lcom/google/android/location/LocationCollector$CellUploads;->SIZE:I

    .line 473
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->cells:[Ljava/lang/String;

    .line 474
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->valid:[Z

    .line 475
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->latitudes:[D

    .line 476
    new-array v1, v2, [D

    iput-object v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->longitudes:[D

    .line 477
    const/4 v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->distance:[F

    .line 478
    iput v3, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    .line 481
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 482
    iget-object v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->valid:[Z

    aput-boolean v3, v1, v0

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/LocationCollector;Lcom/google/android/location/LocationCollector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/google/android/location/LocationCollector$CellUploads;-><init>(Lcom/google/android/location/LocationCollector;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/location/LocationCollector$CellUploads;Lcom/google/android/location/CellState;Landroid/location/Location;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 469
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/LocationCollector$CellUploads;->contains(Lcom/google/android/location/CellState;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method private contains(Lcom/google/android/location/CellState;Landroid/location/Location;)Z
    .locals 11
    .parameter "cellState"
    .parameter "loc"

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getCid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getLac()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getMnc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getMcc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, cell:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 491
    .local v4, lat:D
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 493
    .local v6, lng:D
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v10, v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->valid:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->cells:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->latitudes:[D

    aget-wide v0, v0, v10

    iget-object v2, p0, Lcom/google/android/location/LocationCollector$CellUploads;->longitudes:[D

    aget-wide v2, v2, v10

    iget-object v8, p0, Lcom/google/android/location/LocationCollector$CellUploads;->distance:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 496
    iget-object v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->distance:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x4248

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 497
    const/4 v0, 0x1

    .line 510
    :goto_1
    return v0

    .line 493
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->cells:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    aput-object v9, v0, v1

    .line 502
    iget-object v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->latitudes:[D

    iget v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    aput-wide v4, v0, v1

    .line 503
    iget-object v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->longitudes:[D

    iget v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    aput-wide v6, v0, v1

    .line 504
    iget-object v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->valid:[Z

    iget v1, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 506
    iget v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    .line 507
    iget v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/LocationCollector$CellUploads;->index:I

    .line 510
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
