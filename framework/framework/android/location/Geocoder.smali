.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Geocoder"

.field private static final maxtry:I = 0x5


# instance fields
.field private mParams:Landroid/location/GeocoderParams;

.field private mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 6
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-nez p2, :cond_d

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "locale == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_d
    new-instance v1, Landroid/location/GeocoderParams;

    invoke-direct {v1, p1, p2}, Landroid/location/GeocoderParams;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    .line 87
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 88
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    .line 89
    return-void
.end method

.method public static isPresent()Z
    .registers 5

    .prologue
    .line 63
    const-string v3, "location"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v2

    .line 66
    .local v2, lm:Landroid/location/ILocationManager;
    :try_start_a
    invoke-interface {v2}, Landroid/location/ILocationManager;->geocoderIsPresent()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v3

    .line 69
    :goto_e
    return v3

    .line 67
    :catch_f
    move-exception v1

    .line 68
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "isPresent: got RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v3, 0x0

    goto :goto_e
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .registers 17
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2b

    .line 129
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2b
    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_3d

    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p3, v0

    if-lez v0, :cond_56

    .line 132
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_56
    :try_start_56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v7, results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v6, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/location/ILocationManager;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, ex:Ljava/lang/String;
    const/4 v8, 0x0

    .line 140
    .local v8, count:I
    :goto_68
    if-eqz v10, :cond_7c

    const/4 v0, 0x5

    if-ge v8, v0, :cond_7c

    .line 141
    iget-object v0, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v6, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/location/ILocationManager;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 143
    add-int/lit8 v8, v8, 0x1

    goto :goto_68

    .line 146
    :cond_7c
    if-eqz v10, :cond_8f

    .line 147
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_84} :catch_84

    .line 151
    .end local v7           #results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #count:I
    .end local v10           #ex:Ljava/lang/String;
    :catch_84
    move-exception v0

    move-object v9, v0

    .line 152
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "Geocoder"

    const-string v1, "getFromLocation: got RemoteException"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v0, 0x0

    .end local v9           #e:Landroid/os/RemoteException;
    :goto_8e
    return-object v0

    .restart local v7       #results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v8       #count:I
    .restart local v10       #ex:Ljava/lang/String;
    :cond_8f
    move-object v0, v7

    .line 149
    goto :goto_8e
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .registers 22
    .parameter "locationName"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    if-nez p1, :cond_a

    .line 182
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "locationName == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_a
    :try_start_a
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v15, results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object v14, v0

    move-object/from16 v4, p1

    move/from16 v13, p2

    invoke-interface/range {v3 .. v15}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    .line 189
    .local v18, ex:Ljava/lang/String;
    const/16 v16, 0x0

    .line 190
    .local v16, count:I
    :goto_2b
    if-eqz v18, :cond_50

    const/4 v3, 0x5

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_50

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object v14, v0

    move-object/from16 v4, p1

    move/from16 v13, p2

    invoke-interface/range {v3 .. v15}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    .line 193
    add-int/lit8 v16, v16, 0x1

    goto :goto_2b

    .line 196
    :cond_50
    if-eqz v18, :cond_6b

    .line 197
    new-instance v3, Ljava/io/IOException;

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_5b} :catch_5b

    .line 201
    .end local v15           #results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v16           #count:I
    .end local v18           #ex:Ljava/lang/String;
    :catch_5b
    move-exception v3

    move-object/from16 v17, v3

    .line 202
    .local v17, e:Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "getFromLocationName: got RemoteException"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const/4 v3, 0x0

    .end local v17           #e:Landroid/os/RemoteException;
    :goto_6a
    return-object v3

    .restart local v15       #results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v16       #count:I
    .restart local v18       #ex:Ljava/lang/String;
    :cond_6b
    move-object v3, v15

    .line 199
    goto :goto_6a
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .registers 30
    .parameter "locationName"
    .parameter "maxResults"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    if-nez p1, :cond_a

    .line 246
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "locationName == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_a
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p3, v3

    if-ltz v3, :cond_1c

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p3, v3

    if-lez v3, :cond_38

    .line 249
    :cond_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowerLeftLatitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_38
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p5, v3

    if-ltz v3, :cond_4a

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p5, v3

    if-lez v3, :cond_66

    .line 253
    :cond_4a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowerLeftLongitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_66
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p7, v3

    if-ltz v3, :cond_78

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p7, v3

    if-lez v3, :cond_95

    .line 257
    :cond_78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upperRightLatitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_95
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p9, v3

    if-ltz v3, :cond_a7

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p9, v3

    if-lez v3, :cond_c4

    .line 261
    :cond_a7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upperRightLongitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_c4
    :try_start_c4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object v14, v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p2

    invoke-interface/range {v3 .. v15}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    .line 270
    .local v18, ex:Ljava/lang/String;
    const/16 v16, 0x0

    .line 271
    .local v16, count:I
    :goto_e5
    if-eqz v18, :cond_10a

    const/4 v3, 0x5

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_10a

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object v14, v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p2

    invoke-interface/range {v3 .. v15}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    .line 275
    add-int/lit8 v16, v16, 0x1

    goto :goto_e5

    .line 278
    :cond_10a
    if-eqz v18, :cond_125

    .line 279
    new-instance v3, Ljava/io/IOException;

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_115} :catch_115

    .line 283
    .end local v15           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    .end local v16           #count:I
    .end local v18           #ex:Ljava/lang/String;
    :catch_115
    move-exception v3

    move-object/from16 v17, v3

    .line 284
    .local v17, e:Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "getFromLocationName: got RemoteException"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    const/4 v3, 0x0

    .end local v17           #e:Landroid/os/RemoteException;
    :goto_124
    return-object v3

    .restart local v15       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    .restart local v16       #count:I
    .restart local v18       #ex:Ljava/lang/String;
    :cond_125
    move-object v3, v15

    .line 281
    goto :goto_124
.end method
