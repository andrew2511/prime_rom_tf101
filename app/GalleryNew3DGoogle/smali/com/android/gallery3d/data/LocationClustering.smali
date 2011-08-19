.class Lcom/android/gallery3d/data/LocationClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocationClustering$SmallItem;,
        Lcom/android/gallery3d/data/LocationClustering$Point;
    }
.end annotation


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mNames:[Ljava/lang/String;

.field private mNoLocationString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private generateName(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter "geocoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
            ">;",
            "Lcom/android/gallery3d/util/ReverseGeocoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v7}, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    .line 130
    .local v7, set:Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 131
    .local v6, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 132
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .line 133
    .local v1, item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    iget-wide v2, v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    .line 134
    .local v2, itemLatitude:D
    iget-wide v4, v1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    .line 136
    .local v4, itemLongitude:D
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v8, v8, v2

    if-lez v8, :cond_0

    .line 137
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 138
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 140
    :cond_0
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v8, v8, v2

    if-gez v8, :cond_1

    .line 141
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 142
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 144
    :cond_1
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v8, v8, v4

    if-lez v8, :cond_2

    .line 145
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 146
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 148
    :cond_2
    iget-wide v8, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v8, v8, v4

    if-gez v8, :cond_3

    .line 149
    iput-wide v2, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 150
    iput-wide v4, v7, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    .line 131
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v1           #item:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    .end local v2           #itemLatitude:D
    .end local v4           #itemLongitude:D
    :cond_4
    invoke-virtual {p2, v7}, Lcom/android/gallery3d/util/ReverseGeocoder;->computeAddress(Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static kMeans([Lcom/android/gallery3d/data/LocationClustering$Point;[I)[I
    .locals 27
    .parameter "points"
    .parameter "bestK"

    .prologue
    .line 181
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    .line 184
    .local v24, n:I
    const/4 v2, 0x1

    move/from16 v0, v24

    move v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 185
    .local v3, minK:I
    const/16 v2, 0x14

    move/from16 v0, v24

    move v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 187
    .local v23, maxK:I
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object v14, v0

    .line 188
    .local v14, center:[Lcom/android/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v16, v0

    .line 189
    .local v16, groupSum:[Lcom/android/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object v15, v0

    .line 190
    .local v15, groupCount:[I
    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 192
    .local v17, grouping:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    move v0, v2

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 193
    new-instance v4, Lcom/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v4}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v4, v14, v2

    .line 194
    new-instance v4, Lcom/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v4}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v4, v16, v2

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const v2, 0x7f7fffff

    .line 201
    .local v2, bestScore:F
    move/from16 v0, v24

    new-array v0, v0, [I

    move-object v11, v0

    .line 203
    .local v11, bestGrouping:[I
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, p1, v4

    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, lastDistance:F
    const/4 v5, 0x0

    .line 208
    .local v5, totalDistance:F
    move v3, v3

    .local v3, k:I
    move/from16 v21, v3

    .end local v3           #k:I
    .local v21, k:I
    move v6, v5

    .end local v5           #totalDistance:F
    .local v6, totalDistance:F
    move v13, v2

    .end local v2           #bestScore:F
    .local v13, bestScore:F
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_11

    .line 210
    div-int v2, v24, v21

    .line 211
    .local v2, delta:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    move v0, v3

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 212
    mul-int v5, v3, v2

    aget-object v5, p0, v5

    .line 213
    .local v5, p:Lcom/android/gallery3d/data/LocationClustering$Point;
    aget-object v7, v14, v3

    iget-wide v8, v5, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    iput-wide v8, v7, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 214
    aget-object v7, v14, v3

    iget-wide v8, v5, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    iput-wide v8, v7, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 217
    .end local v5           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_1
    const/4 v2, 0x0

    .local v2, iter:I
    move/from16 v19, v2

    .end local v2           #iter:I
    .local v19, iter:I
    move/from16 v22, v4

    .end local v4           #lastDistance:F
    .local v22, lastDistance:F
    move v2, v6

    .end local v3           #i:I
    .end local v6           #totalDistance:F
    .local v2, totalDistance:F
    :goto_3
    const/16 v3, 0x1e

    move/from16 v0, v19

    move v1, v3

    if-ge v0, v1, :cond_10

    .line 219
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    move v0, v2

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 220
    aget-object v3, v16, v2

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 221
    aget-object v3, v16, v2

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 222
    const/4 v3, 0x0

    aput v3, v15, v2

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 224
    :cond_2
    const/4 v3, 0x0

    .line 226
    .local v3, totalDistance:F
    const/4 v2, 0x0

    move/from16 v18, v2

    .end local v2           #i:I
    .local v18, i:I
    move/from16 v26, v3

    .end local v3           #totalDistance:F
    .local v26, totalDistance:F
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 227
    aget-object v25, p0, v18

    .line 228
    .local v25, p:Lcom/android/gallery3d/data/LocationClustering$Point;
    const v2, 0x7f7fffff

    .line 229
    .local v2, bestDistance:F
    const/4 v3, 0x0

    .line 230
    .local v3, bestIndex:I
    const/4 v4, 0x0

    .local v4, j:I
    move/from16 v20, v4

    .end local v4           #j:I
    .local v20, j:I
    move v12, v3

    .end local v3           #bestIndex:I
    .local v12, bestIndex:I
    move v10, v2

    .end local v2           #bestDistance:F
    .local v10, bestDistance:F
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 231
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-wide v2, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    move-wide v4, v0

    aget-object v6, v14, v20

    iget-wide v6, v6, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v8, v14, v20

    iget-wide v8, v8, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    invoke-static/range {v2 .. v9}, Lcom/android/gallery3d/util/Utils;->fastDistanceMeters(DDDD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 236
    .local v2, distance:F
    const/high16 v3, 0x3f80

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    .line 237
    const/4 v2, 0x0

    .line 239
    :cond_3
    cmpg-float v3, v2, v10

    if-gez v3, :cond_f

    .line 240
    move v2, v2

    .line 241
    .end local v10           #bestDistance:F
    .local v2, bestDistance:F
    move/from16 v3, v20

    .line 230
    .end local v12           #bestIndex:I
    .restart local v3       #bestIndex:I
    :goto_7
    add-int/lit8 v4, v20, 0x1

    .end local v20           #j:I
    .restart local v4       #j:I
    move/from16 v20, v4

    .end local v4           #j:I
    .restart local v20       #j:I
    move v12, v3

    .end local v3           #bestIndex:I
    .restart local v12       #bestIndex:I
    move v10, v2

    .end local v2           #bestDistance:F
    .restart local v10       #bestDistance:F
    goto :goto_6

    .line 244
    :cond_4
    aput v12, v17, v18

    .line 245
    aget v2, v15, v12

    add-int/lit8 v2, v2, 0x1

    aput v2, v15, v12

    .line 246
    aget-object v2, v16, v12

    iget-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-wide v5, v0

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 247
    aget-object v2, v16, v12

    iget-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    move-wide v5, v0

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 248
    add-float v3, v26, v10

    .line 226
    .end local v26           #totalDistance:F
    .local v3, totalDistance:F
    add-int/lit8 v2, v18, 0x1

    .end local v18           #i:I
    .local v2, i:I
    move/from16 v18, v2

    .end local v2           #i:I
    .restart local v18       #i:I
    move/from16 v26, v3

    .end local v3           #totalDistance:F
    .restart local v26       #totalDistance:F
    goto :goto_5

    .line 252
    .end local v10           #bestDistance:F
    .end local v12           #bestIndex:I
    .end local v20           #j:I
    .end local v25           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_5
    const/4 v2, 0x0

    .end local v18           #i:I
    .restart local v2       #i:I
    :goto_8
    move v0, v2

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 253
    aget v3, v15, v2

    if-lez v3, :cond_6

    .line 254
    aget-object v3, v14, v2

    aget-object v4, v16, v2

    iget-wide v4, v4, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget v6, v15, v2

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 255
    aget-object v3, v14, v2

    aget-object v4, v16, v2

    iget-wide v4, v4, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget v6, v15, v2

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 252
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 259
    :cond_7
    const/4 v2, 0x0

    cmpl-float v2, v26, v2

    if-eqz v2, :cond_e

    .end local v2           #i:I
    sub-float v2, v22, v26

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v2, v26

    const v3, 0x3c23d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    move/from16 v7, v26

    .line 267
    .end local v26           #totalDistance:F
    .local v7, totalDistance:F
    :goto_9
    move/from16 v0, v21

    new-array v0, v0, [I

    move-object v5, v0

    .line 268
    .local v5, reassign:[I
    const/4 v3, 0x0

    .line 269
    .local v3, realK:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    move v4, v3

    .end local v3           #realK:I
    .local v4, realK:I
    :goto_a
    move v0, v2

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 270
    aget v3, v15, v2

    if-lez v3, :cond_d

    .line 271
    add-int/lit8 v3, v4, 0x1

    .end local v4           #realK:I
    .restart local v3       #realK:I
    aput v4, v5, v2

    .line 269
    :goto_b
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #realK:I
    .restart local v4       #realK:I
    goto :goto_a

    .line 263
    .end local v2           #i:I
    .end local v4           #realK:I
    .end local v5           #reassign:[I
    .end local v7           #totalDistance:F
    .restart local v26       #totalDistance:F
    :cond_8
    move/from16 v3, v26

    .line 217
    .end local v22           #lastDistance:F
    .local v3, lastDistance:F
    add-int/lit8 v2, v19, 0x1

    .end local v19           #iter:I
    .local v2, iter:I
    move/from16 v19, v2

    .end local v2           #iter:I
    .restart local v19       #iter:I
    move/from16 v22, v3

    .end local v3           #lastDistance:F
    .restart local v22       #lastDistance:F
    move/from16 v2, v26

    .end local v26           #totalDistance:F
    .local v2, totalDistance:F
    goto/16 :goto_3

    .line 276
    .local v2, i:I
    .restart local v4       #realK:I
    .restart local v5       #reassign:[I
    .restart local v7       #totalDistance:F
    :cond_9
    int-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .end local v2           #i:I
    move-result-wide v2

    double-to-float v2, v2

    mul-float v6, v7, v2

    .line 278
    .local v6, score:F
    cmpg-float v2, v6, v13

    if-gez v2, :cond_b

    .line 279
    move v2, v6

    .line 280
    .end local v13           #bestScore:F
    .local v2, bestScore:F
    const/4 v3, 0x0

    aput v4, p1, v3

    .line 281
    const/4 v3, 0x0

    .end local v4           #realK:I
    .local v3, i:I
    :goto_c
    move v0, v3

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 282
    aget v4, v17, v3

    aget v4, v5, v4

    aput v4, v11, v3

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 284
    :cond_a
    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-nez v3, :cond_c

    .end local v3           #i:I
    move/from16 p1, v22

    .end local v22           #lastDistance:F
    .local p1, lastDistance:F
    move/from16 p0, v2

    .end local v2           #bestScore:F
    .local p0, bestScore:F
    move v2, v7

    .line 289
    .end local v5           #reassign:[I
    .end local v6           #score:F
    .end local v7           #totalDistance:F
    .end local v19           #iter:I
    .local v2, totalDistance:F
    :goto_d
    return-object v11

    .end local v2           #totalDistance:F
    .restart local v4       #realK:I
    .restart local v5       #reassign:[I
    .restart local v6       #score:F
    .restart local v7       #totalDistance:F
    .restart local v13       #bestScore:F
    .restart local v19       #iter:I
    .restart local v22       #lastDistance:F
    .local p0, points:[Lcom/android/gallery3d/data/LocationClustering$Point;
    .local p1, bestK:[I
    :cond_b
    move v2, v13

    .line 208
    .end local v4           #realK:I
    .end local v13           #bestScore:F
    .local v2, bestScore:F
    :cond_c
    add-int/lit8 v3, v21, 0x1

    .end local v21           #k:I
    .local v3, k:I
    move/from16 v21, v3

    .end local v3           #k:I
    .restart local v21       #k:I
    move v6, v7

    .end local v7           #totalDistance:F
    .local v6, totalDistance:F
    move/from16 v4, v22

    .end local v22           #lastDistance:F
    .local v4, lastDistance:F
    move v13, v2

    .end local v2           #bestScore:F
    .restart local v13       #bestScore:F
    goto/16 :goto_1

    .end local v6           #totalDistance:F
    .local v2, i:I
    .local v4, realK:I
    .restart local v7       #totalDistance:F
    .restart local v22       #lastDistance:F
    :cond_d
    move v3, v4

    .end local v4           #realK:I
    .local v3, realK:I
    goto :goto_b

    .end local v2           #i:I
    .end local v3           #realK:I
    .end local v5           #reassign:[I
    .end local v7           #totalDistance:F
    .restart local v26       #totalDistance:F
    :cond_e
    move/from16 v7, v26

    .end local v26           #totalDistance:F
    .restart local v7       #totalDistance:F
    goto :goto_9

    .end local v7           #totalDistance:F
    .local v2, distance:F
    .restart local v10       #bestDistance:F
    .restart local v12       #bestIndex:I
    .restart local v18       #i:I
    .restart local v20       #j:I
    .restart local v25       #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    .restart local v26       #totalDistance:F
    :cond_f
    move v3, v12

    .end local v12           #bestIndex:I
    .local v3, bestIndex:I
    move v2, v10

    .end local v10           #bestDistance:F
    .local v2, bestDistance:F
    goto/16 :goto_7

    .end local v3           #bestIndex:I
    .end local v18           #i:I
    .end local v20           #j:I
    .end local v25           #p:Lcom/android/gallery3d/data/LocationClustering$Point;
    .end local v26           #totalDistance:F
    .local v2, totalDistance:F
    :cond_10
    move v7, v2

    .end local v2           #totalDistance:F
    .restart local v7       #totalDistance:F
    goto :goto_9

    .end local v7           #totalDistance:F
    .end local v19           #iter:I
    .end local v22           #lastDistance:F
    .local v4, lastDistance:F
    .restart local v6       #totalDistance:F
    :cond_11
    move v2, v6

    .end local v6           #totalDistance:F
    .restart local v2       #totalDistance:F
    move/from16 p1, v4

    .end local v4           #lastDistance:F
    .local p1, lastDistance:F
    move/from16 p0, v13

    .end local v13           #bestScore:F
    .local p0, bestScore:F
    goto :goto_d
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 165
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .end local p0
    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 167
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 25
    .parameter "baseSet"

    .prologue
    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v17

    .line 63
    .local v17, total:I
    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    move-object v6, v0

    .line 65
    .local v6, buf:[Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object v12, v0

    .line 66
    .local v12, latLong:[D
    new-instance v20, Lcom/android/gallery3d/data/LocationClustering$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object v3, v12

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/data/LocationClustering$1;-><init>(Lcom/android/gallery3d/data/LocationClustering;I[D[Lcom/android/gallery3d/data/LocationClustering$SmallItem;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 78
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v18, withLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v19, withoutLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v14, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/LocationClustering$Point;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 82
    aget-object v16, v6, v10

    .line 83
    .local v16, s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    if-nez v16, :cond_0

    .line 81
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 84
    :cond_0
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 85
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v20, Lcom/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v21, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v23, v0

    invoke-direct/range {v20 .. v24}, Lcom/android/gallery3d/data/LocationClustering$Point;-><init>(DD)V

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_1
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    .end local v16           #s:Lcom/android/gallery3d/data/LocationClustering$SmallItem;
    :cond_2
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    .line 94
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 95
    .local v13, m:I
    if-lez v13, :cond_4

    .line 97
    new-array v15, v13, [Lcom/android/gallery3d/data/LocationClustering$Point;

    .line 98
    .local v15, pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    .end local v15           #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    check-cast v15, [Lcom/android/gallery3d/data/LocationClustering$Point;

    .line 99
    .restart local v15       #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object v5, v0

    .line 100
    .local v5, bestK:[I
    invoke-static {v15, v5}, Lcom/android/gallery3d/data/LocationClustering;->kMeans([Lcom/android/gallery3d/data/LocationClustering$Point;[I)[I

    move-result-object v11

    .line 102
    .local v11, index:[I
    const/4 v10, 0x0

    :goto_2
    const/16 v20, 0x0

    aget v20, v5, v20

    move v0, v10

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 106
    :cond_3
    const/4 v10, 0x0

    .end local p1
    :goto_3
    if-ge v10, v13, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    aget v21, v11, v10

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 111
    .end local v5           #bestK:[I
    .end local v11           #index:[I
    .end local v15           #pointsArray:[Lcom/android/gallery3d/data/LocationClustering$Point;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_5

    const/16 v20, 0x1

    move/from16 v9, v20

    .line 113
    .local v9, hasNoLatLong:Z
    :goto_4
    new-instance v8, Lcom/android/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v8, geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 115
    .local v7, g:I
    if-eqz v9, :cond_6

    const/16 v20, 0x1

    :goto_5
    add-int v20, v20, v7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/LocationClustering;->mNames:[Ljava/lang/String;

    .line 116
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v7, :cond_7

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/LocationClustering;->generateName(Ljava/util/ArrayList;Lcom/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v10

    .line 116
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 111
    .end local v7           #g:I
    .end local v8           #geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    .end local v9           #hasNoLatLong:Z
    :cond_5
    const/16 v20, 0x0

    move/from16 v9, v20

    goto :goto_4

    .line 115
    .restart local v7       #g:I
    .restart local v8       #geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    .restart local v9       #hasNoLatLong:Z
    :cond_6
    const/16 v20, 0x0

    goto :goto_5

    .line 120
    :cond_7
    if-eqz v9, :cond_8

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_8
    return-void
.end method
