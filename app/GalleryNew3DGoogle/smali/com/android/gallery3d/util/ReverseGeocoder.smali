.class public Lcom/android/gallery3d/util/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;
    }
.end annotation


# static fields
.field private static sCurrentAddress:Landroid/location/Address;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeoCache:Lcom/android/gallery3d/util/BlobCache;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 75
    const-string v0, "rev_geocoding"

    const/16 v1, 0x3e8

    const v2, 0x7d000

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/util/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/util/BlobCache;

    .line 78
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "locality"

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const-string v0, ""

    .line 273
    :goto_0
    return-object v0

    .line 271
    :cond_0
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 273
    goto :goto_0
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 4
    .parameter "addr"
    .parameter "approxLocation"

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const-string v2, ""

    .line 294
    :goto_0
    return-object v2

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, localityAdminStr:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 281
    if-eqz p2, :cond_1

    .line 288
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, adminArea:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v2, v1

    .line 292
    goto :goto_0

    .line 294
    .end local v0           #adminArea:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
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
    .line 401
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, retVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 403
    const/4 v1, 0x0

    .line 404
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 389
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
    .line 393
    if-nez p1, :cond_0

    .line 394
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public computeAddress(Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;
    .locals 46
    .parameter "set"

    .prologue
    .line 82
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-wide v4, v0

    .line 83
    .local v4, setMinLatitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    move-wide v6, v0

    .line 84
    .local v6, setMinLongitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-wide v9, v0

    .line 85
    .local v9, setMaxLatitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    move-wide v11, v0

    .line 86
    .local v11, setMaxLongitude:D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-wide v13, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-wide v15, v0

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide v15, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v3, v13, v15

    if-gez v3, :cond_0

    .line 88
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    move-wide v4, v0

    .line 89
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-wide v6, v0

    .line 90
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    move-wide v9, v0

    .line 91
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide v11, v0

    .line 93
    :cond_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v22

    .line 94
    .local v22, addr1:Landroid/location/Address;
    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v27

    .line 95
    .local v27, addr2:Landroid/location/Address;
    if-nez v22, :cond_1

    .line 96
    move-object/from16 v22, v27

    .line 97
    :cond_1
    if-nez v27, :cond_2

    .line 98
    move-object/from16 v27, v22

    .line 99
    :cond_2
    if-eqz v22, :cond_3

    if-nez v27, :cond_4

    .line 100
    :cond_3
    const/4 v3, 0x0

    .line 265
    .end local v4           #setMinLatitude:D
    :goto_0
    return-object v3

    .line 105
    .restart local v4       #setMinLatitude:D
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v8, "location"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/location/LocationManager;

    .line 107
    .local v42, locationManager:Landroid/location/LocationManager;
    const/16 v41, 0x0

    .line 108
    .local v41, location:Landroid/location/Location;
    invoke-virtual/range {v42 .. v42}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v45

    .line 109
    .local v45, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v40, 0x0

    .local v40, i:I
    :goto_1
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v40

    move v1, v3

    if-ge v0, v1, :cond_5

    .line 110
    move-object/from16 v0, v45

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 111
    .local v44, provider:Ljava/lang/String;
    if-eqz v44, :cond_a

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    move-object/from16 v41, v3

    .line 112
    :goto_2
    if-eqz v41, :cond_b

    .line 115
    .end local v44           #provider:Ljava/lang/String;
    :cond_5
    const-string v37, ""

    .line 116
    .local v37, currentCity:Ljava/lang/String;
    const-string v36, ""

    .line 117
    .local v36, currentAdminArea:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v38

    .line 118
    .local v38, currentCountry:Ljava/lang/String;
    if-eqz v41, :cond_6

    .line 119
    invoke-virtual/range {v41 .. v41}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {v41 .. v41}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    const/16 v18, 0x1

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v35

    .line 121
    .local v35, currentAddress:Landroid/location/Address;
    if-nez v35, :cond_c

    .line 122
    sget-object v35, Lcom/android/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    .line 126
    :goto_3
    if-eqz v35, :cond_6

    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 127
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 128
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 129
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 133
    .end local v35           #currentAddress:Landroid/location/Address;
    :cond_6
    const/16 v33, 0x0

    .line 134
    .local v33, closestCommonLocation:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 135
    .local v26, addr1Locality:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 136
    .local v31, addr2Locality:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 137
    .local v23, addr1AdminArea:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 138
    .local v28, addr2AdminArea:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 139
    .local v25, addr1CountryCode:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 141
    .local v30, addr2CountryCode:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 142
    :cond_7
    move-object/from16 v43, v37

    .line 143
    .local v43, otherCity:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 144
    move-object/from16 v43, v31

    .line 145
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 146
    move-object/from16 v43, v28

    .line 147
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 151
    :cond_8
    move-object/from16 v31, v26

    .line 152
    move-object/from16 v28, v23

    .line 153
    move-object/from16 v30, v25

    .line 166
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, v27

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 167
    if-eqz v33, :cond_f

    const-string v3, "null"

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 168
    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .end local v4           #setMinLatitude:D
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    :cond_9
    move-object/from16 v3, v33

    .line 171
    goto/16 :goto_0

    .line 111
    .end local v23           #addr1AdminArea:Ljava/lang/String;
    .end local v25           #addr1CountryCode:Ljava/lang/String;
    .end local v26           #addr1Locality:Ljava/lang/String;
    .end local v28           #addr2AdminArea:Ljava/lang/String;
    .end local v30           #addr2CountryCode:Ljava/lang/String;
    .end local v31           #addr2Locality:Ljava/lang/String;
    .end local v33           #closestCommonLocation:Ljava/lang/String;
    .end local v36           #currentAdminArea:Ljava/lang/String;
    .end local v37           #currentCity:Ljava/lang/String;
    .end local v38           #currentCountry:Ljava/lang/String;
    .end local v43           #otherCity:Ljava/lang/String;
    .restart local v4       #setMinLatitude:D
    .restart local v44       #provider:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v41, v3

    goto/16 :goto_2

    .line 109
    :cond_b
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_1

    .line 124
    .end local v44           #provider:Ljava/lang/String;
    .restart local v35       #currentAddress:Landroid/location/Address;
    .restart local v36       #currentAdminArea:Ljava/lang/String;
    .restart local v37       #currentCity:Ljava/lang/String;
    .restart local v38       #currentCountry:Ljava/lang/String;
    :cond_c
    sput-object v35, Lcom/android/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto/16 :goto_3

    .line 155
    .end local v35           #currentAddress:Landroid/location/Address;
    .restart local v23       #addr1AdminArea:Ljava/lang/String;
    .restart local v25       #addr1CountryCode:Ljava/lang/String;
    .restart local v26       #addr1Locality:Ljava/lang/String;
    .restart local v28       #addr2AdminArea:Ljava/lang/String;
    .restart local v30       #addr2CountryCode:Ljava/lang/String;
    .restart local v31       #addr2Locality:Ljava/lang/String;
    .restart local v33       #closestCommonLocation:Ljava/lang/String;
    .restart local v43       #otherCity:Ljava/lang/String;
    :cond_d
    move-object/from16 v43, v26

    .line 156
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 157
    move-object/from16 v43, v23

    .line 158
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 162
    :cond_e
    move-object/from16 v26, v31

    .line 163
    move-object/from16 v23, v28

    .line 164
    move-object/from16 v25, v30

    goto/16 :goto_4

    .line 175
    :cond_f
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 176
    if-eqz v33, :cond_10

    const-string v3, "null"

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v3, v33

    .line 177
    goto/16 :goto_0

    .line 182
    .end local v43           #otherCity:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 183
    if-eqz v33, :cond_13

    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 184
    move-object/from16 v32, v23

    .line 185
    .local v32, adminArea:Ljava/lang/String;
    move-object/from16 v34, v25

    .line 186
    .local v34, countryCode:Ljava/lang/String;
    if-eqz v32, :cond_11

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 187
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    .end local v4           #setMinLatitude:D
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    :cond_11
    :goto_5
    move-object/from16 v3, v33

    .line 193
    goto/16 :goto_0

    .line 190
    .restart local v4       #setMinLatitude:D
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    .end local v4           #setMinLatitude:D
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto :goto_5

    .line 198
    .end local v32           #adminArea:Ljava/lang/String;
    .end local v34           #countryCode:Ljava/lang/String;
    .restart local v4       #setMinLatitude:D
    :cond_13
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 199
    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 200
    move-object/from16 v26, v31

    .line 202
    :cond_14
    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 203
    move-object/from16 v31, v26

    .line 205
    :cond_15
    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 206
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    .end local v4           #setMinLatitude:D
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    :goto_6
    move-object/from16 v3, v33

    .line 211
    goto/16 :goto_0

    .line 209
    .restart local v4       #setMinLatitude:D
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    .end local v4           #setMinLatitude:D
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto :goto_6

    .line 217
    .restart local v4       #setMinLatitude:D
    :cond_17
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [F

    move-object/from16 v21, v0

    .local v21, distanceFloat:[F
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    .line 218
    invoke-static/range {v13 .. v21}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 220
    const/4 v3, 0x0

    aget v3, v21, v3

    float-to-double v13, v3

    invoke-static {v13, v14}, Lcom/android/gallery3d/util/Utils;->toMile(D)D

    move-result-wide v13

    move-wide v0, v13

    double-to-int v0, v0

    move/from16 v39, v0

    .line 221
    .local v39, distance:I
    const/16 v3, 0x14

    move/from16 v0, v39

    move v1, v3

    if-ge v0, v1, :cond_19

    .line 224
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v33

    .line 225
    if-eqz v33, :cond_18

    move-object/from16 v3, v33

    .line 226
    goto/16 :goto_0

    .line 228
    :cond_18
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v33

    .line 229
    if-eqz v33, :cond_19

    move-object/from16 v3, v33

    .line 230
    goto/16 :goto_0

    .line 235
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 236
    if-eqz v33, :cond_1b

    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 237
    move-object/from16 v34, v25

    .line 238
    .restart local v34       #countryCode:Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 239
    if-eqz v34, :cond_1a

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    .end local v4           #setMinLatitude:D
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    :cond_1a
    move-object/from16 v3, v33

    .line 243
    goto/16 :goto_0

    .line 247
    .end local v34           #countryCode:Ljava/lang/String;
    .restart local v4       #setMinLatitude:D
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 248
    if-eqz v33, :cond_1c

    const-string v3, ""

    move-object v0, v3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object/from16 v3, v33

    .line 249
    goto/16 :goto_0

    .line 252
    :cond_1c
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v24

    .line 253
    .local v24, addr1Country:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v29

    .line 254
    .local v29, addr2Country:Ljava/lang/String;
    if-nez v24, :cond_1d

    .line 255
    move-object/from16 v24, v25

    .line 256
    :cond_1d
    if-nez v29, :cond_1e

    .line 257
    move-object/from16 v29, v30

    .line 258
    :cond_1e
    if-eqz v24, :cond_1f

    if-nez v29, :cond_20

    .line 259
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 260
    :cond_20
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_21

    .end local v4           #setMinLatitude:D
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_22

    .line 261
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    :goto_7
    move-object/from16 v3, v33

    .line 265
    goto/16 :goto_0

    .line 263
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto :goto_7
.end method

.method public lookupAddress(DDZ)Landroid/location/Address;
    .locals 24
    .parameter "latitude"
    .parameter "longitude"
    .parameter "useCache"

    .prologue
    .line 300
    const-wide v4, 0x4056800000000000L

    add-double v4, v4, p1

    const-wide/high16 v6, 0x4000

    mul-double/2addr v4, v6

    const-wide v6, 0x4056800000000000L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    add-double v6, v6, p3

    add-double/2addr v4, v6

    const-wide v6, 0x415854a640000000L

    mul-double/2addr v4, v6

    move-wide v0, v4

    double-to-long v0, v0

    move-wide/from16 v20, v0

    .line 302
    .local v20, locationKey:J
    const/4 v13, 0x0

    .line 303
    .local v13, cachedLocation:[B
    if-eqz p5, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/util/BlobCache;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/util/BlobCache;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/BlobCache;->lookup(J)[B

    move-result-object v13

    .line 306
    :cond_0
    const/4 v10, 0x0

    .line 307
    .local v10, address:Landroid/location/Address;
    if-eqz v13, :cond_1

    array-length v4, v13

    if-nez v4, :cond_5

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    move-object v4, v0

    const/4 v9, 0x1

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v11

    .line 309
    .local v11, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 310
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #address:Landroid/location/Address;
    check-cast v10, Landroid/location/Address;

    .line 311
    .restart local v10       #address:Landroid/location/Address;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    .local v12, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 313
    .local v16, dos:Ljava/io/DataOutputStream;
    invoke-virtual {v10}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v19

    .line 314
    .local v19, locale:Ljava/util/Locale;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v10}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v10}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v22

    .line 320
    .local v22, numAddressLines:I
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 321
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 322
    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 321
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {v10}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v10}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v10}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v10}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v10}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v10}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v10}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v10}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v10}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/util/BlobCache;

    move-object v4, v0

    if-eqz v4, :cond_3

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/util/BlobCache;

    move-object v4, v0

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v0, v4

    move-wide/from16 v1, v20

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/util/BlobCache;->insert(J[B)V

    .line 339
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V

    .end local v11           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v12           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v16           #dos:Ljava/io/DataOutputStream;
    .end local v17           #i:I
    .end local v19           #locale:Ljava/util/Locale;
    .end local v22           #numAddressLines:I
    :cond_4
    :goto_1
    move-object v4, v10

    .line 385
    .end local v10           #address:Landroid/location/Address;
    :goto_2
    return-object v4

    .line 343
    .restart local v10       #address:Landroid/location/Address;
    :cond_5
    new-instance v15, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 345
    .local v15, dis:Ljava/io/DataInputStream;
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v18

    .line 346
    .local v18, language:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v14

    .line 347
    .local v14, country:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v23

    .line 348
    .local v23, variant:Ljava/lang/String;
    const/16 v19, 0x0

    .line 349
    .restart local v19       #locale:Ljava/util/Locale;
    if-eqz v18, :cond_6

    .line 350
    if-nez v14, :cond_7

    .line 351
    new-instance v19, Ljava/util/Locale;

    .end local v19           #locale:Ljava/util/Locale;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 358
    .restart local v19       #locale:Ljava/util/Locale;
    :cond_6
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 359
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 360
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v4

    goto :goto_2

    .line 352
    :cond_7
    if-nez v23, :cond_8

    .line 353
    new-instance v19, Ljava/util/Locale;

    .end local v19           #locale:Ljava/util/Locale;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v19       #locale:Ljava/util/Locale;
    goto :goto_3

    .line 355
    :cond_8
    new-instance v19, Ljava/util/Locale;

    .end local v19           #locale:Ljava/util/Locale;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object v2, v14

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v19       #locale:Ljava/util/Locale;
    goto :goto_3

    .line 362
    :cond_9
    new-instance v10, Landroid/location/Address;

    .end local v10           #address:Landroid/location/Address;
    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 364
    .restart local v10       #address:Landroid/location/Address;
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 366
    .restart local v22       #numAddressLines:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 367
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v10

    move/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 366
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 369
    :cond_a
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 370
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 371
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 372
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 374
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 375
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 376
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 377
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 378
    invoke-static {v15}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 382
    .end local v10           #address:Landroid/location/Address;
    .end local v14           #country:Ljava/lang/String;
    .end local v15           #dis:Ljava/io/DataInputStream;
    .end local v17           #i:I
    .end local v18           #language:Ljava/lang/String;
    .end local v19           #locale:Ljava/util/Locale;
    .end local v22           #numAddressLines:I
    .end local v23           #variant:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 385
    const/4 v4, 0x0

    goto/16 :goto_2
.end method
