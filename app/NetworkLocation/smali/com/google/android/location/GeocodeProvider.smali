.class Lcom/google/android/location/GeocodeProvider;
.super Lcom/android/location/provider/GeocodeProvider;
.source "GeocodeProvider.java"


# instance fields
.field private mMasfClient:Lcom/google/android/location/LocationMasfClient;


# direct methods
.method public constructor <init>(Lcom/google/android/location/LocationMasfClient;)V
    .locals 0
    .parameter "masfClient"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/location/provider/GeocodeProvider;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/location/GeocodeProvider;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    .line 41
    return-void
.end method


# virtual methods
.method public onGetFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/GeocodeProvider;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    invoke-virtual/range {p6 .. p6}, Landroid/location/GeocoderParams;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Landroid/location/GeocoderParams;->getClientPackage()Ljava/lang/String;

    move-result-object v2

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/location/LocationMasfClient;->reverseGeocode(Ljava/util/Locale;Ljava/lang/String;DDILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 50
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    .end local v9           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 52
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "GeocodeProvider"

    const-string v1, "getFromLocation got exception:"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGetFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 15
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/GeocodeProvider;->mMasfClient:Lcom/google/android/location/LocationMasfClient;

    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual/range {p11 .. p11}, Landroid/location/GeocoderParams;->getClientPackage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/location/LocationMasfClient;->forwardGeocode(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;DDDDILjava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    move-object v14, v0

    .line 68
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    .end local v14           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v14, v0

    .line 70
    .local v14, e:Ljava/lang/Exception;
    const-string v0, "GeocodeProvider"

    const-string v1, "getFromLocationName got exception:"

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method
