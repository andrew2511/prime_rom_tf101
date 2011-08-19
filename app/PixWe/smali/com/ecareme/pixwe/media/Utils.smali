.class public Lcom/ecareme/pixwe/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static CRCTable:[J = null

.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final UNCONSTRAINED:I = -0x1

.field private static init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ecareme/pixwe/media/Utils;->init:Z

    .line 106
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lcom/ecareme/pixwe/media/Utils;->CRCTable:[J

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 241
    .local v0, in:Ljava/io/InputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 242
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 243
    return-void
.end method

.method public static final Crc64(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "in"

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v5, 0x0

    .line 161
    :goto_0
    return-object v5

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v0

    .line 158
    .local v0, crc:J
    long-to-int v5, v0

    and-int/lit8 v3, v5, -0x1

    .line 159
    .local v3, low:I
    const/16 v5, 0x20

    shr-long v5, v0, v5

    long-to-int v5, v5

    and-int/lit8 v2, v5, -0x1

    .line 160
    .local v2, high:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, outVal:Ljava/lang/String;
    move-object v5, v4

    .line 161
    goto :goto_0
.end method

.method public static final Crc64Long(Ljava/lang/String;)J
    .locals 10
    .parameter "in"

    .prologue
    .line 116
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    const-wide/16 v0, 0x0

    .line 140
    :goto_0
    return-wide v0

    .line 120
    :cond_1
    const-wide/16 v0, -0x1

    .line 121
    .local v0, crc:J
    sget-boolean v2, Lcom/ecareme/pixwe/media/Utils;->init:Z

    if-nez v2, :cond_2

    .line 122
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v3, 0x100

    if-lt v2, v3, :cond_3

    .line 133
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ecareme/pixwe/media/Utils;->init:Z

    .line 135
    .end local v2           #i:I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 136
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, k:I
    move v3, v2

    .end local v2           #k:I
    .local v3, k:I
    move-wide v8, v0

    .end local v0           #crc:J
    .local v8, crc:J
    move-wide v1, v8

    .end local v8           #crc:J
    .local v1, crc:J
    :goto_2
    if-lt v3, v4, :cond_6

    move-wide v0, v1

    .line 140
    goto :goto_0

    .line 123
    .end local v1           #crc:J
    .end local v3           #k:I
    .end local v4           #length:I
    .restart local v0       #crc:J
    .local v2, i:I
    :cond_3
    int-to-long v4, v2

    .line 124
    .local v4, part:J
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    const/16 v6, 0x8

    if-lt v3, v6, :cond_4

    .line 131
    sget-object v3, Lcom/ecareme/pixwe/media/Utils;->CRCTable:[J

    .end local v3           #j:I
    aput-wide v4, v3, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .restart local v3       #j:I
    :cond_4
    long-to-int v6, v4

    and-int/lit8 v6, v6, 0x1

    .line 126
    .local v6, value:I
    if-eqz v6, :cond_5

    .line 127
    const/4 v6, 0x1

    shr-long/2addr v4, v6

    const-wide v6, -0x6a536cd653b4364bL

    xor-long/2addr v4, v6

    .line 124
    .end local v6           #value:I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 129
    .restart local v6       #value:I
    :cond_5
    const/4 v6, 0x1

    shr-long/2addr v4, v6

    goto :goto_4

    .line 137
    .end local v0           #crc:J
    .end local v2           #i:I
    .end local v6           #value:I
    .restart local v1       #crc:J
    .local v3, k:I
    .local v4, length:I
    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 138
    .local v0, c:C
    sget-object v5, Lcom/ecareme/pixwe/media/Utils;->CRCTable:[J

    long-to-int v6, v1

    xor-int/2addr v0, v6

    and-int/lit16 v0, v0, 0xff

    aget-wide v5, v5, v0

    .end local v0           #c:C
    const/16 v0, 0x8

    shr-long v0, v1, v0

    xor-long/2addr v0, v5

    .line 136
    .end local v1           #crc:J
    .local v0, crc:J
    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .local v2, k:I
    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    move-wide v8, v0

    .end local v0           #crc:J
    .restart local v8       #crc:J
    move-wide v1, v8

    .end local v8           #crc:J
    .restart local v1       #crc:J
    goto :goto_2
.end method

.method public static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 295
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 296
    .local v4, w:D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 298
    .local v0, h:D
    if-ne p2, v10, :cond_0

    move v2, v11

    .line 300
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v10, :cond_1

    const/16 v6, 0x80

    move v3, v6

    .line 304
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_2

    move v6, v2

    .line 315
    :goto_2
    return v6

    .line 299
    .end local v2           #lowerBound:I
    .end local v3           #upperBound:I
    :cond_0
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v2, v6

    goto :goto_0

    .line 301
    .restart local v2       #lowerBound:I
    :cond_1
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 302
    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 301
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    move v3, v6

    goto :goto_1

    .line 309
    .restart local v3       #upperBound:I
    :cond_2
    if-ne p2, v10, :cond_3

    .line 310
    if-ne p1, v10, :cond_3

    move v6, v11

    .line 311
    goto :goto_2

    .line 312
    :cond_3
    if-ne p1, v10, :cond_4

    move v6, v2

    .line 313
    goto :goto_2

    :cond_4
    move v6, v3

    .line 315
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 277
    invoke-static {p0, p1, p2}, Lcom/ecareme/pixwe/media/Utils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 281
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 282
    const/4 v1, 0x1

    .line 283
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 290
    :goto_1
    return v1

    .line 284
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 249
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-gtz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 253
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 254
    return-void

    .line 250
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 9
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const-string v1, "/"

    .line 167
    .local v1, string:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 169
    .local p1, numPaths:I
    const/4 p0, 0x0

    .local p0, i:I
    :goto_0
    const/4 v2, 0x1

    sub-int v2, p1, v2

    if-lt p0, v2, :cond_0

    .line 174
    invoke-static {v1}, Lcom/ecareme/pixwe/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result p0

    .end local p0           #i:I
    int-to-long p0, p0

    .line 202
    .end local v0           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #string:Ljava/lang/String;
    .end local p1           #numPaths:I
    :goto_1
    return-wide p0

    .line 170
    .restart local v0       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #string:Ljava/lang/String;
    .restart local p0       #i:I
    .restart local p1       #numPaths:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1           #string:Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1       #string:Ljava/lang/String;
    const/4 v2, 0x2

    sub-int v2, p1, v2

    if-eq p0, v2, :cond_1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1           #string:Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1       #string:Ljava/lang/String;
    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 176
    .end local v0           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #string:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, uri:Landroid/net/Uri;
    :cond_2
    const/4 v6, 0x0

    .line 178
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 179
    .local v7, id:J
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 180
    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    .end local p1           #uri:Landroid/net/Uri;
    const/4 p1, 0x0

    const-string v0, "bucket_id"

    aput-object v0, v2, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "_id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 182
    .end local v6           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_3

    .line 183
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    .end local p0           #cr:Landroid/content/ContentResolver;
    move-result-wide v0

    .line 185
    .local v0, setVal:J
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-wide p0, v0

    .line 186
    goto :goto_1

    .line 189
    .end local v0           #setVal:J
    .restart local p0       #cr:Landroid/content/ContentResolver;
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 190
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    .line 192
    .end local p1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_4

    .line 193
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 194
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 195
    .restart local v0       #setVal:J
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-wide p0, v0

    .line 196
    goto/16 :goto_1

    .line 199
    .end local v0           #setVal:J
    .end local v7           #id:J
    .restart local v6       #cursor:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception p0

    move-object p0, v6

    .line 202
    .end local v6           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    :cond_4
    :goto_2
    const-wide/16 p0, -0x1

    goto/16 :goto_1

    .line 199
    .end local p0           #cursor:Landroid/database/Cursor;
    .restart local v7       #id:J
    .restart local p1       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception p0

    move-object p0, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .restart local p0       #cursor:Landroid/database/Cursor;
    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_2
.end method

.method public static getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 207
    invoke-static {p0, p1}, Lcom/ecareme/pixwe/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v6

    .line 208
    .local v6, bucketId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    .line 210
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 211
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bucket_id=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 210
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 213
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 214
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 216
    .local v9, setName:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 234
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #setName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 220
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 221
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bucket_id=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 220
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 223
    if-eqz v8, :cond_1

    .line 224
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 226
    .restart local v9       #setName:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    .line 227
    goto :goto_0

    .line 230
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #setName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 234
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static playVideo(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 2
    .parameter "context"
    .parameter "item"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ecareme/pixwe/media/Utils$1;

    invoke-direct {v1, p1, p0}, Lcom/ecareme/pixwe/media/Utils$1;-><init>(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, retVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static final resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "maxSize"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 79
    .local v4, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 80
    .local v3, srcHeight:I
    move v5, p1

    .line 81
    .local v5, width:I
    move v0, p1

    .line 82
    .local v0, height:I
    const/4 v1, 0x0

    .line 83
    .local v1, needsResize:Z
    if-le v4, v3, :cond_1

    .line 84
    if-le v4, p1, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 86
    mul-int v6, p1, v3

    div-int v0, v6, v4

    .line 94
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 95
    const/4 v6, 0x1

    invoke-static {p0, v5, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, retVal:Landroid/graphics/Bitmap;
    move-object v6, v2

    .line 98
    .end local v2           #retVal:Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 89
    :cond_1
    if-le v3, p1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 91
    mul-int v6, p1, v4

    div-int v5, v6, v3

    goto :goto_0

    :cond_2
    move-object v6, p0

    .line 98
    goto :goto_1
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "dos"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method
