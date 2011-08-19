.class Lcom/google/ads/LocationTracker;
.super Ljava/lang/Object;
.source "LocationTracker.java"


# static fields
.field static PROTO_TEMPLATE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "desc < role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d>"

    sput-object v0, Lcom/google/ads/LocationTracker;->PROTO_TEMPLATE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/ads/LocationTracker;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private getLastKnownLocations()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v6, p0, Lcom/google/ads/LocationTracker;->mContext:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 55
    .local v3, locationManager:Landroid/location/LocationManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v5

    .line 56
    .local v5, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v1, lastLocations:Ljava/util/List;,"Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    .local v4, provider:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 59
    .local v2, location:Landroid/location/Location;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v2           #location:Landroid/location/Location;
    .end local v4           #provider:Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method encodeProto(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "proto"

    .prologue
    .line 77
    :try_start_0
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 78
    .local v3, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v7, 0x10

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 81
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 82
    .local v0, a:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 83
    .local v1, b:[B
    array-length v5, v0

    array-length v6, v1

    add-int/2addr v5, v6

    new-array v2, v5, [B

    .line 84
    .local v2, c:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    const/4 v5, 0x0

    array-length v6, v0

    array-length v7, v1

    invoke-static {v1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    const/16 v5, 0xb

    invoke-static {v2, v5}, Lcom/google/ads/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 88
    .end local v0           #a:[B
    .end local v1           #b:[B
    .end local v2           #c:[B
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    :goto_0
    return-object v5

    .line 87
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 88
    .local v4, e:Ljava/security/GeneralSecurityException;
    const/4 v5, 0x0

    goto :goto_0

    .line 78
    :array_0
    .array-data 0x1
        0xat
        0x37t
        0x90t
        0xd1t
        0xfat
        0x7t
        0xbt
        0x4bt
        0xf9t
        0x87t
        0x79t
        0x45t
        0x50t
        0xc3t
        0xft
        0x5t
    .end array-data
.end method

.method getLocationParam()Ljava/lang/String;
    .locals 6

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/ads/LocationTracker;->getLastKnownLocations()Ljava/util/List;

    move-result-object v3

    .line 36
    .local v3, lastLocations:Ljava/util/List;,"Ljava/util/List<Landroid/location/Location;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 38
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    invoke-virtual {p0, v5}, Lcom/google/ads/LocationTracker;->protoFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, proto:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/google/ads/LocationTracker;->encodeProto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, encoded:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 41
    if-nez v2, :cond_1

    .line 42
    const-string v5, "e1+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_1
    const-string v5, "+e1+"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 49
    .end local v1           #encoded:Ljava/lang/String;
    .end local v4           #proto:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protoFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 9
    .parameter "location"

    .prologue
    const-wide v7, 0x416312d000000000L

    .line 67
    sget-object v0, Lcom/google/ads/LocationTracker;->PROTO_TEMPLATE:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v7

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v7

    double-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    float-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
