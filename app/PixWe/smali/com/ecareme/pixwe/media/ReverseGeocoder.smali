.class public final Lcom/ecareme/pixwe/media/ReverseGeocoder;
.super Ljava/lang/Thread;
.source "ReverseGeocoder.java"


# static fields
.field private static LOCATION_CRITERIA:Landroid/location/Criteria; = null

.field private static final MAX_COUNTRY_NAME_LENGTH:I = 0x8

.field private static final MAX_LOCALITY_MILE_RANGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"

.field private static sCurrentAddress:Landroid/location/Address;

.field private static final sGeoCache:Lcom/ecareme/pixwe/media/DiskCache;

.field private static final sQueue:Lcom/ecareme/pixwe/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Deque",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/ecareme/pixwe/media/Deque;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Deque;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sQueue:Lcom/ecareme/pixwe/media/Deque;

    .line 45
    new-instance v0, Lcom/ecareme/pixwe/media/DiskCache;

    const-string v1, "geocoder-cache"

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sGeoCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 47
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    .line 51
    sget-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 52
    sget-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 53
    sget-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 54
    sget-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 55
    sget-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->LOCATION_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const-string v0, "ReverseGeocoder"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->start()V

    .line 65
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "locality"

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    const-string v0, ""

    .line 307
    :goto_0
    return-object v0

    .line 305
    :cond_0
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 307
    goto :goto_0
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 4
    .parameter "addr"
    .parameter "approxLocation"

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 385
    const-string v2, ""

    .line 401
    :goto_0
    return-object v2

    .line 386
    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, localityAdminStr:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 395
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, adminArea:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 399
    goto :goto_0

    .line 401
    .end local v0           #adminArea:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private lookupAddress(DD)Landroid/location/Address;
    .locals 25
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 406
    const-wide v5, 0x4056800000000000L

    add-double v5, v5, p1

    const-wide/high16 v7, 0x4000

    mul-double/2addr v5, v7

    const-wide v7, 0x4056800000000000L

    mul-double/2addr v5, v7

    const-wide v7, 0x4066800000000000L

    add-double v7, v7, p3

    add-double/2addr v5, v7

    const-wide v7, 0x415854a640000000L

    mul-double/2addr v5, v7

    move-wide v0, v5

    double-to-long v0, v0

    move-wide/from16 v21, v0

    .line 407
    .local v21, locationKey:J
    :try_start_0
    sget-object v5, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sGeoCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v6, 0x0

    move-object v0, v5

    move-wide/from16 v1, v21

    move-wide v3, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v14

    .line 408
    .local v14, cachedLocation:[B
    const/4 v11, 0x0

    .line 409
    .local v11, address:Landroid/location/Address;
    if-eqz v14, :cond_0

    array-length v5, v14

    if-nez v5, :cond_3

    .line 411
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    move-object v5, v0

    const/4 v10, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v12

    .line 412
    .local v12, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 413
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #address:Landroid/location/Address;
    check-cast v11, Landroid/location/Address;

    .line 414
    .restart local v11       #address:Landroid/location/Address;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 415
    .local v13, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v17, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x100

    invoke-direct {v5, v13, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 416
    .local v17, dos:Ljava/io/DataOutputStream;
    invoke-virtual {v11}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v20

    .line 417
    .local v20, locale:Ljava/util/Locale;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v11}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v11}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v23

    .line 423
    .local v23, numAddressLines:I
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 424
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 427
    invoke-virtual {v11}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v11}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v11}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v11}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v11}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v11}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v11}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v11}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v11}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V

    .line 439
    sget-object v5, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sGeoCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-wide/16 v9, 0x0

    move-wide/from16 v6, v21

    invoke-virtual/range {v5 .. v10}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V

    .line 440
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->close()V

    .end local v12           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v17           #dos:Ljava/io/DataOutputStream;
    .end local v18           #i:I
    .end local v20           #locale:Ljava/util/Locale;
    .end local v23           #numAddressLines:I
    :cond_1
    :goto_1
    move-object v5, v11

    .line 489
    .end local v11           #address:Landroid/location/Address;
    .end local v14           #cachedLocation:[B
    :goto_2
    return-object v5

    .line 425
    .restart local v11       #address:Landroid/location/Address;
    .restart local v12       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #cachedLocation:[B
    .restart local v17       #dos:Ljava/io/DataOutputStream;
    .restart local v18       #i:I
    .restart local v20       #locale:Ljava/util/Locale;
    .restart local v23       #numAddressLines:I
    :cond_2
    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 424
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 447
    .end local v12           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v17           #dos:Ljava/io/DataOutputStream;
    .end local v18           #i:I
    .end local v20           #locale:Ljava/util/Locale;
    .end local v23           #numAddressLines:I
    :cond_3
    new-instance v16, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 448
    .local v16, dis:Ljava/io/DataInputStream;
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v19

    .line 449
    .local v19, language:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 450
    .local v15, country:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v24

    .line 451
    .local v24, variant:Ljava/lang/String;
    const/16 v20, 0x0

    .line 452
    .restart local v20       #locale:Ljava/util/Locale;
    if-eqz v19, :cond_4

    .line 453
    if-nez v15, :cond_5

    .line 454
    new-instance v20, Ljava/util/Locale;

    .end local v20           #locale:Ljava/util/Locale;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 461
    .restart local v20       #locale:Ljava/util/Locale;
    :cond_4
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 462
    sget-object v5, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sGeoCache:Lcom/ecareme/pixwe/media/DiskCache;

    move-object v0, v5

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DiskCache;->delete(J)V

    .line 463
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 464
    invoke-direct/range {p0 .. p4}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v5

    goto :goto_2

    .line 455
    :cond_5
    if-nez v24, :cond_6

    .line 456
    new-instance v20, Ljava/util/Locale;

    .end local v20           #locale:Ljava/util/Locale;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v20       #locale:Ljava/util/Locale;
    goto :goto_3

    .line 458
    :cond_6
    new-instance v20, Ljava/util/Locale;

    .end local v20           #locale:Ljava/util/Locale;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object v2, v15

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v20       #locale:Ljava/util/Locale;
    goto :goto_3

    .line 466
    :cond_7
    new-instance v11, Landroid/location/Address;

    .end local v11           #address:Landroid/location/Address;
    move-object v0, v11

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 468
    .restart local v11       #address:Landroid/location/Address;
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    .line 470
    .restart local v23       #numAddressLines:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 473
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 474
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 475
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 476
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 478
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 479
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 480
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 481
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 482
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    goto/16 :goto_1

    .line 486
    .end local v11           #address:Landroid/location/Address;
    .end local v14           #cachedLocation:[B
    .end local v15           #country:Ljava/lang/String;
    .end local v16           #dis:Ljava/io/DataInputStream;
    .end local v18           #i:I
    .end local v19           #language:Ljava/lang/String;
    .end local v20           #locale:Ljava/util/Locale;
    .end local v23           #numAddressLines:I
    .end local v24           #variant:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 489
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 471
    .restart local v11       #address:Landroid/location/Address;
    .restart local v14       #cachedLocation:[B
    .restart local v15       #country:Ljava/lang/String;
    .restart local v16       #dis:Ljava/io/DataInputStream;
    .restart local v18       #i:I
    .restart local v19       #language:Ljava/lang/String;
    .restart local v20       #locale:Ljava/util/Locale;
    .restart local v23       #numAddressLines:I
    .restart local v24       #variant:Ljava/lang/String;
    :cond_8
    invoke-static/range {v16 .. v16}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    add-int/lit8 v18, v18, 0x1

    goto :goto_4
.end method

.method private process(Lcom/ecareme/pixwe/media/MediaSet;)Z
    .locals 2
    .parameter "set"

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-boolean v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mLatLongDetermined:Z

    if-nez v0, :cond_0

    .line 110
    iput-boolean v1, p1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    .line 111
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->computeMostGranularCommonLocation(Lcom/ecareme/pixwe/media/MediaSet;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    .line 114
    iput-boolean v1, p1, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    move v0, v1

    .line 115
    goto :goto_0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 493
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected computeMostGranularCommonLocation(Lcom/ecareme/pixwe/media/MediaSet;)Ljava/lang/String;
    .locals 43
    .parameter "set"

    .prologue
    .line 120
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLatLatitude:D

    move-wide v5, v0

    .line 121
    .local v5, setMinLatitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLatLongitude:D

    move-wide v7, v0

    .line 122
    .local v7, setMinLongitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLatLatitude:D

    move-wide v9, v0

    .line 123
    .local v9, setMaxLatitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLatLongitude:D

    move-wide v11, v0

    .line 124
    .local v11, setMaxLongitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLatLatitude:D

    move-wide/from16 v37, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLatLatitude:D

    move-wide/from16 v39, v0

    sub-double v37, v37, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->abs(D)D

    move-result-wide v37

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLonLongitude:D

    move-wide/from16 v39, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLonLongitude:D

    move-wide/from16 v41, v0

    sub-double v39, v39, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->abs(D)D

    move-result-wide v39

    cmpg-double v37, v37, v39

    if-gez v37, :cond_0

    .line 125
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLonLatitude:D

    move-wide v5, v0

    .line 126
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLonLongitude:D

    move-wide v7, v0

    .line 127
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLonLatitude:D

    move-wide v9, v0

    .line 128
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLonLongitude:D

    move-wide v11, v0

    .line 130
    :cond_0
    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v13

    .line 131
    .local v13, addr1:Landroid/location/Address;
    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide v3, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v18

    .line 132
    .local v18, addr2:Landroid/location/Address;
    if-nez v13, :cond_1

    .line 133
    move-object/from16 v13, v18

    .line 134
    :cond_1
    if-nez v18, :cond_2

    .line 135
    move-object/from16 v18, v13

    .line 136
    :cond_2
    if-eqz v13, :cond_3

    if-nez v18, :cond_4

    .line 137
    :cond_3
    const/16 v37, 0x0

    .line 299
    :goto_0
    return-object v37

    .line 142
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    const-string v38, "location"

    invoke-virtual/range {v37 .. v38}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/location/LocationManager;

    .line 143
    .local v33, locationManager:Landroid/location/LocationManager;
    const/16 v32, 0x0

    .line 144
    .local v32, location:Landroid/location/Location;
    invoke-virtual/range {v33 .. v33}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v36

    .line 145
    .local v36, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v31, 0x0

    .local v31, i:I
    :goto_1
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v37

    move/from16 v0, v31

    move/from16 v1, v37

    if-lt v0, v1, :cond_9

    .line 151
    :cond_5
    const-string v28, ""

    .line 152
    .local v28, currentCity:Ljava/lang/String;
    const-string v27, ""

    .line 153
    .local v27, currentAdminArea:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v29

    .line 154
    .local v29, currentCountry:Ljava/lang/String;
    if-eqz v32, :cond_6

    .line 155
    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getLatitude()D

    move-result-wide v37

    invoke-virtual/range {v32 .. v32}, Landroid/location/Location;->getLongitude()D

    move-result-wide v39

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    move-wide/from16 v3, v39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v26

    .line 156
    .local v26, currentAddress:Landroid/location/Address;
    if-nez v26, :cond_b

    .line 157
    sget-object v26, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    .line 161
    :goto_2
    if-eqz v26, :cond_6

    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_6

    .line 162
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 163
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 164
    invoke-virtual/range {v26 .. v26}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 168
    .end local v26           #currentAddress:Landroid/location/Address;
    :cond_6
    const/16 v24, 0x0

    .line 169
    .local v24, closestCommonLocation:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 170
    .local v17, addr1Locality:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 171
    .local v22, addr2Locality:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 172
    .local v14, addr1AdminArea:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 173
    .local v19, addr2AdminArea:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 174
    .local v16, addr1CountryCode:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 176
    .local v21, addr2CountryCode:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 177
    move-object/from16 v34, v28

    .line 178
    .local v34, otherCity:Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_c

    .line 179
    move-object/from16 v34, v22

    .line 180
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_7

    .line 181
    move-object/from16 v34, v19

    .line 182
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_7

    .line 183
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 186
    :cond_7
    move-object/from16 v22, v17

    .line 187
    move-object/from16 v19, v14

    .line 188
    move-object/from16 v21, v16

    .line 202
    :goto_3
    const/16 v37, 0x0

    move-object v0, v13

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 203
    if-eqz v24, :cond_e

    const-string v37, "null"

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_e

    .line 204
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_8

    .line 205
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :cond_8
    move-object/from16 v37, v24

    .line 207
    goto/16 :goto_0

    .line 146
    .end local v14           #addr1AdminArea:Ljava/lang/String;
    .end local v16           #addr1CountryCode:Ljava/lang/String;
    .end local v17           #addr1Locality:Ljava/lang/String;
    .end local v19           #addr2AdminArea:Ljava/lang/String;
    .end local v21           #addr2CountryCode:Ljava/lang/String;
    .end local v22           #addr2Locality:Ljava/lang/String;
    .end local v24           #closestCommonLocation:Ljava/lang/String;
    .end local v27           #currentAdminArea:Ljava/lang/String;
    .end local v28           #currentCity:Ljava/lang/String;
    .end local v29           #currentCountry:Ljava/lang/String;
    .end local v34           #otherCity:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 147
    .local v35, provider:Ljava/lang/String;
    if-eqz v35, :cond_a

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v37

    move-object/from16 v32, v37

    .line 148
    :goto_4
    if-nez v32, :cond_5

    .line 145
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 147
    :cond_a
    const/16 v37, 0x0

    move-object/from16 v32, v37

    goto :goto_4

    .line 159
    .end local v35           #provider:Ljava/lang/String;
    .restart local v26       #currentAddress:Landroid/location/Address;
    .restart local v27       #currentAdminArea:Ljava/lang/String;
    .restart local v28       #currentCity:Ljava/lang/String;
    .restart local v29       #currentCountry:Ljava/lang/String;
    :cond_b
    sput-object v26, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto/16 :goto_2

    .line 190
    .end local v26           #currentAddress:Landroid/location/Address;
    .restart local v14       #addr1AdminArea:Ljava/lang/String;
    .restart local v16       #addr1CountryCode:Ljava/lang/String;
    .restart local v17       #addr1Locality:Ljava/lang/String;
    .restart local v19       #addr2AdminArea:Ljava/lang/String;
    .restart local v21       #addr2CountryCode:Ljava/lang/String;
    .restart local v22       #addr2Locality:Ljava/lang/String;
    .restart local v24       #closestCommonLocation:Ljava/lang/String;
    .restart local v34       #otherCity:Ljava/lang/String;
    :cond_c
    move-object/from16 v34, v17

    .line 191
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_d

    .line 192
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 194
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_d

    .line 195
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 198
    :cond_d
    move-object/from16 v17, v22

    .line 199
    move-object/from16 v14, v19

    .line 200
    move-object/from16 v16, v21

    goto/16 :goto_3

    .line 211
    :cond_e
    invoke-virtual {v13}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 212
    if-eqz v24, :cond_f

    const-string v37, "null"

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_f

    move-object/from16 v37, v24

    .line 213
    goto/16 :goto_0

    .line 218
    .end local v34           #otherCity:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 219
    if-eqz v24, :cond_12

    const-string v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_12

    .line 220
    move-object/from16 v23, v14

    .line 221
    .local v23, adminArea:Ljava/lang/String;
    move-object/from16 v25, v16

    .line 222
    .local v25, countryCode:Ljava/lang/String;
    if-eqz v23, :cond_10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_10

    .line 223
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_11

    .line 224
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :cond_10
    :goto_5
    move-object/from16 v37, v24

    .line 229
    goto/16 :goto_0

    .line 226
    :cond_11
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_5

    .line 234
    .end local v23           #adminArea:Ljava/lang/String;
    .end local v25           #countryCode:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v27

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_16

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_16

    .line 235
    const-string v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_13

    .line 236
    move-object/from16 v17, v22

    .line 238
    :cond_13
    const-string v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_14

    .line 239
    move-object/from16 v22, v17

    .line 241
    :cond_14
    const-string v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_16

    .line 242
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 243
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_6
    move-object/from16 v37, v24

    .line 247
    goto/16 :goto_0

    .line 245
    :cond_15
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_6

    .line 253
    :cond_16
    invoke-static/range {v5 .. v12}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->toMile(D)D

    move-result-wide v37

    move-wide/from16 v0, v37

    double-to-int v0, v0

    move/from16 v30, v0

    .line 255
    .local v30, distance:I
    const/16 v37, 0x14

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_18

    .line 258
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v24

    .line 259
    if-eqz v24, :cond_17

    move-object/from16 v37, v24

    .line 260
    goto/16 :goto_0

    .line 262
    :cond_17
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v24

    .line 263
    if-eqz v24, :cond_18

    move-object/from16 v37, v24

    .line 264
    goto/16 :goto_0

    .line 269
    :cond_18
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 270
    if-eqz v24, :cond_1a

    const-string v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1a

    .line 271
    move-object/from16 v25, v16

    .line 272
    .restart local v25       #countryCode:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_19

    .line 273
    if-eqz v25, :cond_19

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_19

    .line 274
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :cond_19
    move-object/from16 v37, v24

    .line 277
    goto/16 :goto_0

    .line 281
    .end local v25           #countryCode:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 282
    if-eqz v24, :cond_1b

    const-string v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1b

    move-object/from16 v37, v24

    .line 283
    goto/16 :goto_0

    .line 286
    :cond_1b
    invoke-virtual {v13}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v15

    .line 287
    .local v15, addr1Country:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v20

    .line 288
    .local v20, addr2Country:Ljava/lang/String;
    if-nez v15, :cond_1c

    .line 289
    move-object/from16 v15, v16

    .line 290
    :cond_1c
    if-nez v20, :cond_1d

    .line 291
    move-object/from16 v20, v21

    .line 292
    :cond_1d
    if-eqz v15, :cond_1e

    if-nez v20, :cond_1f

    .line 293
    :cond_1e
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 294
    :cond_1f
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_21

    .line 295
    :cond_20
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_7
    move-object/from16 v37, v24

    .line 299
    goto/16 :goto_0

    .line 297
    :cond_21
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v38, " - "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_7
.end method

.method public enqueue(Lcom/ecareme/pixwe/media/MediaSet;)V
    .locals 2
    .parameter "set"

    .prologue
    .line 68
    sget-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sQueue:Lcom/ecareme/pixwe/media/Deque;

    .line 69
    .local v0, inQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/MediaSet;>;"
    monitor-enter v0

    .line 70
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/Deque;->addFirst(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 69
    monitor-exit v0

    .line 73
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushCache()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sGeoCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 100
    return-void
.end method

.method protected getReverseGeocodedLocation(DDI)Ljava/lang/String;
    .locals 9
    .parameter "latitude"
    .parameter "longitude"
    .parameter "desiredNumDetails"

    .prologue
    .line 311
    const/4 v5, 0x0

    .line 312
    .local v5, location:Ljava/lang/String;
    const/4 v6, 0x0

    .line 314
    .local v6, numDetails:I
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->lookupAddress(DD)Landroid/location/Address;

    move-result-object v0

    .line 316
    .local v0, addr:Landroid/location/Address;
    if-eqz v0, :cond_a

    .line 320
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    .line 321
    if-eqz v5, :cond_1

    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 322
    add-int/lit8 v6, v6, 0x1

    .line 335
    :cond_0
    :goto_0
    if-ne v6, p5, :cond_3

    move-object v7, v5

    .line 379
    .end local v0           #addr:Landroid/location/Address;
    :goto_1
    return-object v7

    .line 324
    .restart local v0       #addr:Landroid/location/Address;
    :cond_1
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    .line 325
    if-eqz v5, :cond_2

    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 326
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    .line 329
    if-eqz v5, :cond_0

    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 330
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 339
    :cond_3
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, locality:Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v7, "null"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 341
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 346
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 349
    :cond_4
    if-ne v6, p5, :cond_6

    move-object v7, v5

    .line 350
    goto :goto_1

    .line 344
    :cond_5
    move-object v5, v4

    goto :goto_2

    .line 353
    :cond_6
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, adminArea:Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v7, "null"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 355
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 360
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 363
    :cond_7
    if-ne v6, p5, :cond_9

    move-object v7, v5

    .line 364
    goto/16 :goto_1

    .line 358
    :cond_8
    move-object v5, v1

    goto :goto_3

    .line 367
    :cond_9
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, countryCode:Ljava/lang/String;
    if-eqz v2, :cond_a

    const-string v7, "null"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 369
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v1           #adminArea:Ljava/lang/String;
    .end local v2           #countryCode:Ljava/lang/String;
    .end local v4           #locality:Ljava/lang/String;
    :cond_a
    :goto_4
    move-object v7, v5

    .line 377
    goto/16 :goto_1

    .line 372
    .restart local v1       #adminArea:Ljava/lang/String;
    .restart local v2       #countryCode:Ljava/lang/String;
    .restart local v4       #locality:Ljava/lang/String;
    :cond_b
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_4

    .line 378
    .end local v0           #addr:Landroid/location/Address;
    .end local v1           #adminArea:Ljava/lang/String;
    .end local v2           #countryCode:Ljava/lang/String;
    .end local v4           #locality:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 379
    .local v3, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 77
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 78
    sget-object v0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->sQueue:Lcom/ecareme/pixwe/media/Deque;

    .line 79
    .local v0, queue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/MediaSet;>;"
    new-instance v2, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 80
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/Deque;->clear()V

    .line 85
    :goto_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaSet;

    .local v1, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v1, :cond_0

    .line 85
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-direct {p0, v1}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->process(Lcom/ecareme/pixwe/media/MediaSet;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 93
    .end local v1           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :catch_0
    move-exception v2

    .line 96
    return-void

    .line 87
    .restart local v1       #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 85
    .end local v1           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->flushCache()V

    .line 104
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ReverseGeocoder;->interrupt()V

    .line 105
    return-void
.end method
