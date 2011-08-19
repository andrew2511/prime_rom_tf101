.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 101
    const-string v0, "exif"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 103
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Landroid/media/ExifInterface;->loadAttributes()V

    .line 122
    return-void
.end method

.method private native appendThumbnailNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native commitChangesNative(Ljava/lang/String;)V
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 10
    .parameter "rationalString"
    .parameter "ref"

    .prologue
    .line 376
    :try_start_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, parts:[Ljava/lang/String;
    const/4 p0, 0x0

    aget-object p0, v4, p0

    .end local p0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 380
    .local p0, pair:[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    .end local p0           #pair:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 383
    .local v0, degrees:D
    const/4 p0, 0x1

    aget-object p0, v4, p0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 384
    .restart local p0       #pair:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v5, 0x1

    aget-object p0, p0, v5

    .end local p0           #pair:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    div-double/2addr v2, v5

    .line 387
    .local v2, minutes:D
    const/4 p0, 0x2

    aget-object p0, v4, p0

    const-string v4, "/"

    .end local v4           #parts:[Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 388
    .restart local p0       #pair:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object p0, p0, v6

    .end local p0           #pair:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 391
    .local v4, seconds:D
    const-wide/high16 v6, 0x404e

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L

    div-double v2, v4, v2

    add-double/2addr v0, v2

    .line 392
    .local v0, result:D
    const-string p0, "S"

    .end local v2           #minutes:D
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7f} :catch_87
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_7f} :catch_8e

    move-result p0

    if-eqz p0, :cond_85

    .line 393
    :cond_82
    neg-double p0, v0

    double-to-float p0, p0

    .line 395
    :goto_84
    return p0

    :cond_85
    double-to-float p0, v0

    goto :goto_84

    .line 396
    .end local v0           #result:D
    .end local v4           #seconds:D
    :catch_87
    move-exception p0

    .line 398
    .local p0, e:Ljava/lang/NumberFormatException;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #e:Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 399
    :catch_8e
    move-exception p0

    .line 401
    .local p0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private native getAttributesNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getThumbnailNative(Ljava/lang/String;)[B
.end method

.method private loadAttributes()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    .line 200
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    .line 203
    sget-object v9, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 204
    :try_start_c
    iget-object v10, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v10}, Landroid/media/ExifInterface;->getAttributesNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, attrStr:Ljava/lang/String;
    monitor-exit v9
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_5a

    .line 208
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 209
    .local v8, ptr:I
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 211
    .local v4, count:I
    add-int/lit8 v8, v8, 0x1

    .line 213
    const/4 v6, 0x0

    .local v6, i:I
    :goto_23
    if-ge v6, v4, :cond_63

    .line 215
    const/16 v9, 0x3d

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 216
    .local v5, equalPos:I
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, attrName:Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    .line 220
    invoke-virtual {v2, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 221
    .local v7, lenPos:I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, attrLen:I
    add-int/lit8 v8, v7, 0x1

    .line 225
    add-int v9, v8, v0

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, attrValue:Ljava/lang/String;
    add-int/2addr v8, v0

    .line 228
    const-string v9, "hasThumbnail"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 229
    const-string/jumbo v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 213
    :goto_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 205
    .end local v0           #attrLen:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrStr:Ljava/lang/String;
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v4           #count:I
    .end local v5           #equalPos:I
    .end local v6           #i:I
    .end local v7           #lenPos:I
    .end local v8           #ptr:I
    :catchall_5a
    move-exception v10

    :try_start_5b
    monitor-exit v9
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v10

    .line 231
    .restart local v0       #attrLen:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrStr:Ljava/lang/String;
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v4       #count:I
    .restart local v5       #equalPos:I
    .restart local v6       #i:I
    .restart local v7       #lenPos:I
    .restart local v8       #ptr:I
    :cond_5d
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 234
    .end local v0           #attrLen:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #equalPos:I
    .end local v7           #lenPos:I
    :cond_63
    return-void
.end method

.method private native saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public getAltitude(D)D
    .registers 11
    .parameter "defaultValue"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 321
    const-string v3, "GPSAltitude"

    const-wide/high16 v4, -0x4010

    invoke-virtual {p0, v3, v4, v5}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 322
    .local v0, altitude:D
    const-string v3, "GPSAltitudeRef"

    invoke-virtual {p0, v3, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 324
    .local v2, ref:I
    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_20

    if-ltz v2, :cond_20

    .line 325
    if-ne v2, v7, :cond_1e

    move v3, v6

    :goto_1b
    int-to-double v3, v3

    mul-double/2addr v3, v0

    .line 327
    :goto_1d
    return-wide v3

    :cond_1e
    move v3, v7

    .line 325
    goto :goto_1b

    :cond_20
    move-wide v3, p1

    .line 327
    goto :goto_1d
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "tag"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .registers 13
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 161
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 162
    .local v6, value:Ljava/lang/String;
    if-nez v6, :cond_c

    move-wide v7, p2

    .line 171
    :goto_b
    return-wide v7

    .line 164
    :cond_c
    :try_start_c
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 165
    .local v3, index:I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_17

    move-wide v7, p2

    goto :goto_b

    .line 166
    :cond_17
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 167
    .local v0, denom:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-nez v7, :cond_29

    move-wide v7, p2

    goto :goto_b

    .line 168
    :cond_29
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_31} :catch_35

    move-result-wide v4

    .line 169
    .local v4, num:D
    div-double v7, v4, v0

    goto :goto_b

    .line 170
    .end local v0           #denom:D
    .end local v3           #index:I
    .end local v4           #num:D
    :catch_35
    move-exception v7

    move-object v2, v7

    .local v2, ex:Ljava/lang/NumberFormatException;
    move-wide v7, p2

    .line 171
    goto :goto_b
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .registers 6
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 143
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_c

    move v2, p2

    .line 148
    :goto_b
    return v2

    .line 146
    :cond_c
    :try_start_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_15

    move-result v2

    goto :goto_b

    .line 147
    :catch_15
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v2, p2

    .line 148
    goto :goto_b
.end method

.method public getDateTime()J
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    .line 337
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v5, "DateTime"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .local v0, dateTimeString:Ljava/lang/String;
    if-nez v0, :cond_10

    move-wide v4, v6

    .line 346
    :goto_f
    return-wide v4

    .line 340
    :cond_10
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 342
    .local v3, pos:Ljava/text/ParsePosition;
    :try_start_16
    sget-object v4, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 343
    .local v1, datetime:Ljava/util/Date;
    if-nez v1, :cond_20

    move-wide v4, v6

    goto :goto_f

    .line 344
    :cond_20
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_23} :catch_25

    move-result-wide v4

    goto :goto_f

    .line 345
    .end local v1           #datetime:Ljava/util/Date;
    :catch_25
    move-exception v4

    move-object v2, v4

    .local v2, ex:Ljava/lang/IllegalArgumentException;
    move-wide v4, v6

    .line 346
    goto :goto_f
.end method

.method public getGpsDateTime()J
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    .line 356
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v7, "GPSDateStamp"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    .local v0, date:Ljava/lang/String;
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v7, "GPSTimeStamp"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 358
    .local v5, time:Ljava/lang/String;
    if-eqz v0, :cond_1a

    if-nez v5, :cond_1c

    :cond_1a
    move-wide v6, v8

    .line 369
    :goto_1b
    return-wide v6

    .line 360
    :cond_1c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, dateTimeString:Ljava/lang/String;
    if-nez v1, :cond_37

    move-wide v6, v8

    goto :goto_1b

    .line 363
    :cond_37
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 365
    .local v4, pos:Ljava/text/ParsePosition;
    :try_start_3d
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 366
    .local v2, datetime:Ljava/util/Date;
    if-nez v2, :cond_47

    move-wide v6, v8

    goto :goto_1b

    .line 367
    :cond_47
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_4a} :catch_4c

    move-result-wide v6

    goto :goto_1b

    .line 368
    .end local v2           #datetime:Ljava/util/Date;
    :catch_4c
    move-exception v6

    move-object v3, v6

    .local v3, ex:Ljava/lang/IllegalArgumentException;
    move-wide v6, v8

    .line 369
    goto :goto_1b
.end method

.method public getLatLong([F)Z
    .registers 10
    .parameter "output"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v5, "GPSLatitude"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    .local v1, latValue:Ljava/lang/String;
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v5, "GPSLatitudeRef"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, latRef:Ljava/lang/String;
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v5, "GPSLongitude"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 299
    .local v3, lngValue:Ljava/lang/String;
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v5, "GPSLongitudeRef"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    .local v2, lngRef:Ljava/lang/String;
    if-eqz v1, :cond_43

    if-eqz v0, :cond_43

    if-eqz v3, :cond_43

    if-eqz v2, :cond_43

    .line 303
    const/4 v4, 0x0

    :try_start_33
    invoke-static {v1, v0}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4

    .line 304
    const/4 v4, 0x1

    invoke-static {v3, v2}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_40} :catch_42

    move v4, v7

    .line 311
    :goto_41
    return v4

    .line 306
    :catch_42
    move-exception v4

    :cond_43
    move v4, v6

    .line 311
    goto :goto_41
.end method

.method public getThumbnail()[B
    .registers 3

    .prologue
    .line 285
    sget-object v0, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->getThumbnailNative(Ljava/lang/String;)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 287
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public hasThumbnail()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public saveAttributes()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 250
    .local v5, size:I
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v8, "hasThumbnail"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 251
    add-int/lit8 v5, v5, -0x1

    .line 253
    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 255
    .local v1, iter:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    .local v2, key:Ljava/lang/String;
    const-string v7, "hasThumbnail"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 260
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 261
    .local v6, val:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 265
    .end local v1           #iter:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #val:Ljava/lang/String;
    :cond_8b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, s:Ljava/lang/String;
    sget-object v7, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v7

    .line 267
    :try_start_92
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Landroid/media/ExifInterface;->saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v8, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v8}, Landroid/media/ExifInterface;->commitChangesNative(Ljava/lang/String;)V

    .line 269
    monitor-exit v7

    .line 270
    return-void

    .line 269
    :catchall_9e
    move-exception v8

    monitor-exit v7
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_9e

    throw v8
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 182
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method
