.class public Lcom/google/android/location/LocationMasfClient;
.super Ljava/lang/Object;
.source "LocationMasfClient.java"


# static fields
.field private static PLATFORM_BUILD:Ljava/lang/String;


# instance fields
.field private final MAX_COLLECTION_BUFFER_SIZE:I

.field private final MIN_COLLECTION_INTERVAL:J

.field private final mCacheDir:Ljava/lang/String;

.field private mCellHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/CellState;",
            ">;"
        }
    .end annotation
.end field

.field private mCellState:Lcom/google/android/location/CellState;

.field private mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

.field private final mContext:Landroid/content/Context;

.field private mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

.field private mDeviceRestart:Z

.field private mGpsLocation:Lcom/google/android/location/CollectedLocation;

.field private mLastCollectionUploadTime:J

.field private mLocation:Landroid/location/Location;

.field private mLocationCache:Lcom/google/android/location/LocationCache;

.field private mPlatformKey:Ljava/lang/String;

.field private mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

.field private mScanTime:J

.field private mWifiScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/location/LocationMasfClient;->PLATFORM_BUILD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v5, Landroid/location/Location;

    const-string v6, "network"

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    .line 119
    const/16 v5, 0x1e

    iput v5, p0, Lcom/google/android/location/LocationMasfClient;->MAX_COLLECTION_BUFFER_SIZE:I

    .line 120
    const-wide/32 v5, 0xdbba0

    iput-wide v5, p0, Lcom/google/android/location/LocationMasfClient;->MIN_COLLECTION_INTERVAL:J

    .line 121
    iput-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    .line 122
    iput-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    .line 123
    iput-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    .line 124
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/android/location/LocationMasfClient;->mLastCollectionUploadTime:J

    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mWifiScanResults:Ljava/util/List;

    .line 128
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/google/android/location/LocationMasfClient;->mScanTime:J

    .line 129
    iput-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mCellState:Lcom/google/android/location/CellState;

    .line 131
    iput-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mGpsLocation:Lcom/google/android/location/CollectedLocation;

    .line 145
    iput-boolean v8, p0, Lcom/google/android/location/LocationMasfClient;->mDeviceRestart:Z

    .line 155
    iput-object p1, p0, Lcom/google/android/location/LocationMasfClient;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v2

    .line 157
    .local v2, mux:Lcom/google/masf/MobileServiceMux;
    if-nez v2, :cond_1

    .line 158
    const-string v1, "https://www.google.com/loc/m/api"

    .line 159
    .local v1, masfAddress:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "url:google_location_server"

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, rewriteRule:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 162
    const-string v5, " "

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, rule:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v4, v8

    const-string v6, "rewrite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    const/4 v5, 0x2

    aget-object v1, v4, v5

    .line 168
    .end local v4           #rule:[Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/google/common/android/AndroidConfig;

    invoke-direct {v0, p1}, Lcom/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, config:Lcom/google/common/android/AndroidConfig;
    invoke-static {v0}, Lcom/google/common/Config;->setConfig(Lcom/google/common/Config;)V

    .line 171
    const-string v5, "location"

    const-string v6, "1.0"

    const-string v7, "android"

    const-string v8, "android"

    invoke-static {v1, v5, v6, v7, v8}, Lcom/google/masf/MobileServiceMux;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v0           #config:Lcom/google/common/android/AndroidConfig;
    .end local v1           #masfAddress:Ljava/lang/String;
    .end local v3           #rewriteRule:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCacheDir:Ljava/lang/String;

    .line 175
    new-instance v5, Lcom/google/android/location/LocationCache;

    iget-object v6, p0, Lcom/google/android/location/LocationMasfClient;->mCacheDir:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/google/android/location/LocationCache;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mLocationCache:Lcom/google/android/location/LocationCache;

    .line 177
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/google/android/location/LocationMasfClient;->PLATFORM_BUILD:Ljava/lang/String;

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_2
    const-string v5, "android"

    sput-object v5, Lcom/google/android/location/LocationMasfClient;->PLATFORM_BUILD:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/location/LocationMasfClient;Lcom/google/common/io/protocol/ProtoBuf;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/location/LocationMasfClient;->parseNetworkLocationReply(Lcom/google/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/location/LocationMasfClient;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/location/LocationMasfClient;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/location/LocationMasfClient;->setPlatformKey(Ljava/lang/String;)V

    return-void
.end method

.method private clearPlatformKey()V
    .locals 3

    .prologue
    .line 968
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformKey:Ljava/lang/String;

    .line 969
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mCacheDir:Ljava/lang/String;

    const-string v2, "gls.platform.key"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 971
    return-void
.end method

.method private createCellularPlatformProfile(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 6
    .parameter "cellState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1049
    const/4 v0, -0x1

    .line 1050
    .local v0, radioType:I
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getRadioType()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1051
    const/4 v0, 0x3

    .line 1058
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_1

    .line 1059
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/location/protocol/GlocationMessageTypes;->GCELLULAR_PLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    .line 1063
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1064
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getHomeMcc()I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getHomeMnc()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 1065
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getHomeMcc()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1067
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getHomeMnc()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1070
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getCarrier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1071
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1075
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mCellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v1

    .line 1052
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getRadioType()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 1053
    const/4 v0, 0x4

    goto :goto_0

    .line 1054
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getRadioType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1055
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private createCellularProfile(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 7
    .parameter "cellState"

    .prologue
    .line 1171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1172
    :cond_0
    const/4 v4, 0x0

    .line 1189
    :goto_0
    return-object v4

    .line 1175
    :cond_1
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/GcellularMessageTypes;->GCELLULAR_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1176
    .local v0, cellularProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getTime()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 1179
    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/android/location/CellState;->gcell()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 1182
    invoke-virtual {p1}, Lcom/google/android/location/CellState;->getNeighbors()Ljava/util/List;

    move-result-object v3

    .line 1183
    .local v3, neighbors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/CellState$NeighborCell;>;"
    if-eqz v3, :cond_2

    .line 1184
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/CellState$NeighborCell;

    .line 1185
    .local v2, neighbor:Lcom/google/android/location/CellState$NeighborCell;
    const/4 v4, 0x3

    invoke-virtual {v2, p1}, Lcom/google/android/location/CellState$NeighborCell;->gcell(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #neighbor:Lcom/google/android/location/CellState$NeighborCell;
    :cond_2
    move-object v4, v0

    .line 1189
    goto :goto_0
.end method

.method private createDebugProfileLocked()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1258
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/location/protocol/GdebugprofileMessageTypes;->GDEBUG_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1260
    iget-boolean v1, p0, Lcom/google/android/location/LocationMasfClient;->mDeviceRestart:Z

    if-eqz v1, :cond_0

    .line 1261
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 1262
    iput-boolean v4, p0, Lcom/google/android/location/LocationMasfClient;->mDeviceRestart:Z

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_location_provider_debug"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1266
    if-eqz v1, :cond_1

    .line 1267
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 1268
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 1269
    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1270
    const/4 v5, 0x5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 1269
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1275
    :cond_1
    return-object v0
.end method

.method static createLocationProto(Lcom/google/android/location/CollectedLocation;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 8
    .parameter "location"

    .prologue
    const/4 v7, 0x1

    const-wide v5, 0x416312d000000000L

    .line 1221
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1222
    .local v0, latlngElement:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {v0, v7, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1223
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1225
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/location/protocol/GlocationMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1226
    .local v1, locationElement:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v7, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 1227
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1228
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 1229
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->getPluggedIn()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 1230
    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1231
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1233
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1234
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->getSpeed()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setFloat(IF)V

    .line 1236
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1237
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->getBearing()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1239
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1240
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/location/CollectedLocation;->getAltitude()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1242
    :cond_3
    return-object v1
.end method

.method private createPlatformProfile()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2

    .prologue
    .line 1019
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1020
    .local v0, locale:Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/google/android/location/LocationMasfClient;->createPlatformProfile(Ljava/util/Locale;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    return-object v1
.end method

.method private createPlatformProfile(Ljava/util/Locale;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4
    .parameter "locale"

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_0

    .line 1025
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/location/protocol/GlocationMessageTypes;->GPLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    .line 1026
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    sget-object v3, Lcom/google/android/location/LocationMasfClient;->PLATFORM_BUILD:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1031
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1032
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1036
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/LocationMasfClient;->getPlatformKey()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, platformKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1038
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1042
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 1044
    iget-object v1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v1
.end method

.method private createWifiProfile(Ljava/util/List;J)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 6
    .parameter
    .parameter "scanTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)",
            "Lcom/google/common/io/protocol/ProtoBuf;"
        }
    .end annotation

    .prologue
    .line 1201
    .local p1, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1202
    :cond_0
    const/4 v4, 0x0

    .line 1217
    :goto_0
    return-object v4

    .line 1205
    :cond_1
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/GwifiMessageTypes;->GWIFI_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1206
    .local v3, wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 1208
    const/4 v0, 0x0

    .line 1209
    .local v0, count:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1210
    .local v2, s:Landroid/net/wifi/ScanResult;
    const/4 v4, 0x2

    invoke-static {v2}, Lcom/google/android/location/LocationMasfClient;->wifiDeviceProto(Landroid/net/wifi/ScanResult;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 1211
    add-int/lit8 v0, v0, 0x1

    .line 1212
    const/16 v4, 0x19

    if-lt v0, v4, :cond_2

    .end local v2           #s:Landroid/net/wifi/ScanResult;
    :cond_3
    move-object v4, v3

    .line 1217
    goto :goto_0
.end method

.method private generateVerboseDebugInfo()Z
    .locals 3

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/google/android/location/LocationMasfClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_provider_debug"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_0

    const-string v1, "verbose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAddressFromProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/Locale;Ljava/util/List;)V
    .locals 22
    .parameter "location"
    .parameter "locale"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p3, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    const-wide/high16 v9, -0x4010

    .line 1081
    .local v9, lat:D
    const-wide/high16 v13, -0x4010

    .line 1083
    .local v13, lng:D
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1084
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 1085
    .local v11, latlng:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v18, 0x1

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x416312d000000000L

    div-double v9, v18, v20

    .line 1086
    const/16 v18, 0x2

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x416312d000000000L

    div-double v13, v18, v20

    .line 1089
    .end local v11           #latlng:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    const/4 v3, 0x0

    .local v3, a:I
    :goto_0
    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v18

    move v0, v3

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 1091
    new-instance v16, Landroid/location/Address;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1093
    .local v16, output:Landroid/location/Address;
    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 1094
    .local v7, feature:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v18, 0x1

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 1096
    const/16 v18, 0x5

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1097
    const/16 v18, 0x5

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 1098
    .local v5, center:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x416312d000000000L

    div-double v18, v18, v20

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLatitude(D)V

    .line 1099
    const/16 v18, 0x2

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x416312d000000000L

    div-double v18, v18, v20

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLongitude(D)V

    .line 1106
    .end local v5           #center:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    :goto_1
    const/16 v18, 0x3

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 1108
    .local v4, address:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    const/16 v18, 0x1

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 1109
    const/16 v18, 0x1

    move-object v0, v4

    move/from16 v1, v18

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v12

    .line 1110
    .local v12, line:Ljava/lang/String;
    move-object/from16 v0, v16

    move v1, v8

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 1108
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1101
    .end local v4           #address:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v8           #i:I
    .end local v12           #line:Ljava/lang/String;
    :cond_2
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1102
    move-object/from16 v0, v16

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLatitude(D)V

    .line 1103
    move-object/from16 v0, v16

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setLongitude(D)V

    goto :goto_1

    .line 1113
    .restart local v4       #address:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v8       #i:I
    :cond_3
    const/4 v8, 0x0

    :goto_3
    const/16 v18, 0x2

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 1114
    const/16 v18, 0x2

    move-object v0, v4

    move/from16 v1, v18

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 1115
    .local v6, component:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v18, 0x2

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v17

    .line 1116
    .local v17, type:I
    const/16 v18, 0x1

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1118
    .local v15, name:Ljava/lang/String;
    packed-switch v17, :pswitch_data_0

    .line 1113
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1120
    :pswitch_0
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    goto :goto_4

    .line 1124
    :pswitch_1
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    goto :goto_4

    .line 1128
    :pswitch_2
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_4

    .line 1132
    :pswitch_3
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_4

    .line 1136
    :pswitch_4
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    goto :goto_4

    .line 1140
    :pswitch_5
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    goto :goto_4

    .line 1144
    :pswitch_6
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setPremises(Ljava/lang/String;)V

    goto :goto_4

    .line 1148
    :pswitch_7
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    goto :goto_4

    .line 1152
    :pswitch_8
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    goto :goto_4

    .line 1156
    :pswitch_9
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    goto :goto_4

    .line 1166
    .end local v6           #component:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v15           #name:Ljava/lang/String;
    .end local v17           #type:I
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1168
    .end local v4           #address:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v7           #feature:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v8           #i:I
    .end local v16           #output:Landroid/location/Address;
    :cond_5
    return-void

    .line 1118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private getPlatformKey()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 974
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 975
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformKey:Ljava/lang/String;

    .line 991
    :goto_0
    return-object v5

    .line 979
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCacheDir:Ljava/lang/String;

    const-string v6, "gls.platform.key"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 981
    .local v3, istream:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 982
    .local v0, dataInput:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 983
    .local v4, platformKey:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 984
    iput-object v4, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformKey:Ljava/lang/String;

    .line 985
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 986
    .end local v0           #dataInput:Ljava/io/DataInputStream;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #istream:Ljava/io/FileInputStream;
    .end local v4           #platformKey:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/io/FileNotFoundException;
    move-object v5, v7

    .line 988
    goto :goto_0

    .line 989
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/io/IOException;
    move-object v5, v7

    .line 991
    goto :goto_0
.end method

.method private declared-synchronized parseNetworkLocationReply(Lcom/google/common/io/protocol/ProtoBuf;)Z
    .locals 47
    .parameter "response"

    .prologue
    .line 364
    monitor-enter p0

    if-nez p1, :cond_0

    .line 365
    :try_start_0
    const-string v3, "LocationMasfClient"

    const-string v4, "getNetworkLocation(): response is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    const/4 v3, 0x0

    .line 520
    :goto_0
    monitor-exit p0

    return v3

    .line 369
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v45

    .line 370
    .local v45, status1:I
    if-eqz v45, :cond_1

    .line 371
    const-string v3, "LocationMasfClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkLocation(): RPC failed with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v3, 0x0

    goto :goto_0

    .line 375
    :cond_1
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 377
    .local v42, platformKey:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->setPlatformKey(Ljava/lang/String;)V

    .line 382
    .end local v42           #platformKey:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 383
    const-string v3, "LocationMasfClient"

    const-string v4, "getNetworkLocation(): no ReplyElement"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v3, 0x0

    goto :goto_0

    .line 386
    :cond_3
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v44

    .line 391
    .local v44, replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 392
    .local v14, now:J
    const/16 v39, 0x0

    .local v39, i:I
    :goto_1
    const/4 v3, 0x3

    move-object/from16 v0, v44

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move/from16 v0, v39

    move v1, v3

    if-ge v0, v1, :cond_a

    .line 393
    const/4 v3, 0x3

    move-object/from16 v0, v44

    move v1, v3

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v33

    .line 394
    .local v33, device:Lcom/google/common/io/protocol/ProtoBuf;
    const-wide/16 v8, 0x0

    .line 395
    .local v8, lat:D
    const-wide/16 v10, 0x0

    .line 396
    .local v10, lng:D
    const/4 v12, -0x1

    .line 397
    .local v12, accuracy:I
    const/4 v13, -0x1

    .line 398
    .local v13, confidence:I
    const/16 v40, -0x1

    .line 399
    .local v40, locType:I
    const/4 v3, 0x1

    move-object/from16 v0, v33

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 400
    const/4 v3, 0x1

    move-object/from16 v0, v33

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v35

    .line 401
    .local v35, deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x3

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 404
    const/4 v3, 0x1

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    move v0, v3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x416312d000000000L

    div-double v8, v18, v20

    .line 406
    const/4 v3, 0x1

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    move v0, v3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x416312d000000000L

    div-double v10, v18, v20

    .line 408
    const/4 v3, 0x3

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v12

    .line 409
    const/4 v3, 0x4

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v13

    .line 411
    :cond_4
    const/16 v3, 0x8

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 412
    const/16 v3, 0x8

    move-object/from16 v0, v35

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v40

    .line 417
    .end local v35           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    const/4 v3, 0x2

    move-object/from16 v0, v33

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x3

    move/from16 v0, v40

    move v1, v3

    if-eq v0, v1, :cond_8

    .line 418
    const/4 v3, 0x2

    move-object/from16 v0, v33

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v34

    .line 419
    .local v34, deviceCell:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x2

    move-object/from16 v0, v34

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 420
    .local v7, cid:I
    const/4 v3, 0x1

    move-object/from16 v0, v34

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 421
    .local v6, lac:I
    const/4 v4, -0x1

    .line 422
    .local v4, mcc:I
    const/4 v5, -0x1

    .line 423
    .local v5, mnc:I
    const/4 v3, 0x4

    move-object/from16 v0, v34

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 424
    const/4 v3, 0x4

    move-object/from16 v0, v34

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 426
    :cond_6
    const/4 v3, 0x3

    move-object/from16 v0, v34

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 427
    const/4 v3, 0x3

    move-object/from16 v0, v34

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 429
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocationCache:Lcom/google/android/location/LocationCache;

    move-object v3, v0

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/location/LocationCache;->insert(IIIIDDIIJ)V

    .line 434
    .end local v4           #mcc:I
    .end local v5           #mnc:I
    .end local v6           #lac:I
    .end local v7           #cid:I
    .end local v34           #deviceCell:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_8
    const/4 v3, 0x3

    move-object/from16 v0, v33

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 435
    const/4 v3, 0x3

    move-object/from16 v0, v33

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v36

    .line 436
    .local v36, deviceWifi:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x1

    move-object/from16 v0, v36

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 437
    .local v17, bssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocationCache:Lcom/google/android/location/LocationCache;

    move-object/from16 v16, v0

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move-wide/from16 v24, v14

    invoke-virtual/range {v16 .. v25}, Lcom/google/android/location/LocationCache;->insert(Ljava/lang/String;DDIIJ)V

    .line 392
    .end local v17           #bssid:Ljava/lang/String;
    .end local v36           #deviceWifi:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_9
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1

    .line 441
    .end local v8           #lat:D
    .end local v10           #lng:D
    .end local v12           #accuracy:I
    .end local v13           #confidence:I
    .end local v33           #device:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v40           #locType:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocationCache:Lcom/google/android/location/LocationCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/location/LocationCache;->save()V

    .line 443
    const/4 v3, 0x1

    move-object/from16 v0, v44

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v46

    .line 444
    .local v46, status2:I
    if-eqz v46, :cond_b

    const/4 v3, 0x1

    move/from16 v0, v46

    move v1, v3

    if-eq v0, v1, :cond_b

    .line 446
    const-string v3, "LocationMasfClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkLocation(): GLS failed with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 451
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/LocationMasfClient;->generateVerboseDebugInfo()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/LocationMasfClient;->createDebugProfileLocked()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    move-object/from16 v23, v3

    .line 452
    .local v23, debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocationCache:Lcom/google/android/location/LocationCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mCellState:Lcom/google/android/location/CellState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mCellHistory:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mWifiScanResults:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/location/LocationCache;->lookup(Lcom/google/android/location/CellState;Ljava/util/List;Ljava/util/List;Landroid/location/Location;Lcom/google/common/io/protocol/ProtoBuf;)Z

    move-result v38

    .line 457
    .local v38, foundInCache:Z
    if-eqz v23, :cond_c

    .line 458
    const/16 v25, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mGpsLocation:Lcom/google/android/location/CollectedLocation;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mCellState:Lcom/google/android/location/CellState;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mWifiScanResults:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/LocationMasfClient;->mScanTime:J

    move-wide/from16 v29, v0

    const/16 v31, 0x0

    move-object/from16 v24, p0

    move-object/from16 v32, v23

    invoke-virtual/range {v24 .. v32}, Lcom/google/android/location/LocationMasfClient;->queueCollectionReportLocked(ILcom/google/android/location/CollectedLocation;Lcom/google/android/location/CellState;Ljava/util/List;JZLcom/google/common/io/protocol/ProtoBuf;)V

    .line 460
    const/16 v23, 0x0

    .line 463
    :cond_c
    if-eqz v38, :cond_f

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_e

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v37, v3

    .line 466
    .local v37, extras:Landroid/os/Bundle;
    :goto_3
    const-string v3, "networkLocationSource"

    const-string v4, "cached"

    move-object/from16 v0, v37

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 471
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 451
    .end local v23           #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v37           #extras:Landroid/os/Bundle;
    .end local v38           #foundInCache:Z
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v23, v3

    goto :goto_2

    .line 465
    .restart local v23       #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v38       #foundInCache:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v37, v3

    goto :goto_3

    .line 474
    :cond_f
    const/4 v3, 0x1

    move/from16 v0, v46

    move v1, v3

    if-ne v0, v1, :cond_10

    .line 475
    const-string v3, "LocationMasfClient"

    const-string v4, "getNetworkLocation(): GLS does not have location"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 482
    :cond_10
    const/4 v3, 0x2

    move-object/from16 v0, v44

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 483
    const-string v3, "LocationMasfClient"

    const-string v4, "getNetworkLocation(): no location in ReplyElement"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 486
    :cond_11
    const/4 v3, 0x2

    move-object/from16 v0, v44

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v41

    .line 488
    .local v41, location:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x1

    move-object/from16 v0, v41

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 489
    const-string v3, "LocationMasfClient"

    const-string v4, "getNetworkLocation(): no Lat,Lng in location"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 493
    :cond_12
    const/4 v3, 0x1

    move-object/from16 v0, v41

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v43

    .line 494
    .local v43, point:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v3, 0x1

    move-object/from16 v0, v43

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    move v0, v3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x416312d000000000L

    div-double v8, v18, v20

    .line 495
    .restart local v8       #lat:D
    const/4 v3, 0x2

    move-object/from16 v0, v43

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    move v0, v3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x416312d000000000L

    div-double v10, v18, v20

    .line 497
    .restart local v10       #lng:D
    const/4 v12, 0x0

    .line 498
    .restart local v12       #accuracy:I
    const/4 v3, 0x3

    move-object/from16 v0, v41

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 499
    const/4 v3, 0x3

    move-object/from16 v0, v41

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v12

    .line 502
    :cond_13
    const/16 v3, 0x1388

    if-le v12, v3, :cond_14

    .line 503
    const-string v3, "LocationMasfClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkLocation(): accuracy is too high "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 507
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    invoke-virtual {v3, v10, v11}, Landroid/location/Location;->setLongitude(D)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v0, v3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    int-to-float v4, v12

    invoke-virtual {v3, v4}, Landroid/location/Location;->setAccuracy(F)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_15

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v37, v3

    .line 513
    .restart local v37       #extras:Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {v37 .. v37}, Landroid/os/Bundle;->clear()V

    .line 514
    const-string v3, "networkLocationSource"

    const-string v4, "server"

    move-object/from16 v0, v37

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 520
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 512
    .end local v37           #extras:Landroid/os/Bundle;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    move-object/from16 v37, v3

    goto :goto_4

    .line 364
    .end local v8           #lat:D
    .end local v10           #lng:D
    .end local v12           #accuracy:I
    .end local v14           #now:J
    .end local v23           #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v38           #foundInCache:Z
    .end local v39           #i:I
    .end local v41           #location:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v43           #point:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v44           #replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v45           #status1:I
    .end local v46           #status2:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private setPlatformKey(Ljava/lang/String;)V
    .locals 7
    .parameter "platformKey"

    .prologue
    .line 996
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCacheDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 997
    .local v4, systemDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 998
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 999
    const-string v5, "LocationMasfClient"

    const-string v6, "setPlatformKey(): couldn\'t create directory"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_0
    return-void

    .line 1005
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCacheDir:Ljava/lang/String;

    const-string v6, "gls.platform.key"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1007
    .local v3, ostream:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1008
    .local v0, dataOut:Ljava/io/DataOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1010
    iput-object p1, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1011
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #ostream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1012
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "LocationMasfClient"

    const-string v6, "setPlatformKey(): unable to create platform key file"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1013
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 1014
    .local v1, e:Ljava/io/IOException;
    const-string v5, "LocationMasfClient"

    const-string v6, "setPlatformKey(): unable to write to platform key"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized uploadCollectionReport(Z)V
    .locals 10
    .parameter "immediate"

    .prologue
    .line 894
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 965
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 899
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    .local v3, payload:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    iget-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v7, v3}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 907
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/location/LocationMasfClient;->mLastCollectionUploadTime:J

    .line 910
    iget-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 911
    .local v0, count:I
    :goto_1
    if-lez v0, :cond_2

    .line 912
    iget-object v7, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v8, 0x4

    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-virtual {v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->remove(II)V

    .line 913
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 902
    .end local v0           #count:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 903
    .local v1, e:Ljava/io/IOException;
    const-string v7, "LocationMasfClient"

    const-string v8, "uploadCollectionReport(): unable to write request to payload"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 894
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #payload:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 917
    .restart local v0       #count:I
    .restart local v3       #payload:Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_4
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v7}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 918
    .local v5, reply:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v4, Lcom/google/masf/protocol/PlainRequest;

    const-string v7, "g:loc/ul"

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v4, v7, v8, v9}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    .line 921
    .local v4, plainRequest:Lcom/google/masf/protocol/Request;
    new-instance v2, Lcom/google/android/location/ProtoRequestListener;

    new-instance v7, Lcom/google/android/location/LocationMasfClient$2;

    invoke-direct {v7, p0}, Lcom/google/android/location/LocationMasfClient$2;-><init>(Lcom/google/android/location/LocationMasfClient;)V

    invoke-direct {v2, v5, v7}, Lcom/google/android/location/ProtoRequestListener;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/masf/ServiceCallback;)V

    .line 959
    .local v2, listener:Lcom/google/android/location/ProtoRequestListener;
    invoke-virtual {v4, v2}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    .line 962
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v6

    .line 963
    .local v6, serviceMux:Lcom/google/masf/MobileServiceMux;
    invoke-virtual {v6, v4, p1}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static wifiDeviceProto(Landroid/net/wifi/ScanResult;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "s"

    .prologue
    .line 1193
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/location/protocol/GwifiMessageTypes;->GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 1194
    .local v0, wifiDevice:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1195
    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 1196
    const/4 v1, 0x4

    iget v2, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 1197
    return-object v0
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .locals 3

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/LocationMasfClient;->mLocationCache:Lcom/google/android/location/LocationCache;

    invoke-virtual {v0}, Lcom/google/android/location/LocationCache;->clear()V

    .line 190
    invoke-direct {p0}, Lcom/google/android/location/LocationMasfClient;->clearPlatformKey()V

    .line 191
    iget-object v0, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/location/LocationMasfClient;->mPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forwardGeocode(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;DDDDILjava/util/List;)V
    .locals 28
    .parameter "locale"
    .parameter "appPackageName"
    .parameter "locationString"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DDDDI",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    .local p13, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v19, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 668
    .local v19, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v10, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/GlocationMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 669
    .local v10, locationElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object v0, v10

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 670
    const/16 v25, 0xf

    move-object v0, v10

    move/from16 v1, v25

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 671
    const/16 v25, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v25

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 673
    new-instance v7, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 675
    .local v7, geocodeElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    move-object v0, v7

    move/from16 v1, v25

    move/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 677
    const-wide/16 v25, 0x0

    cmpl-double v25, p4, v25

    if-eqz v25, :cond_0

    const-wide/16 v25, 0x0

    cmpl-double v25, p6, v25

    if-eqz v25, :cond_0

    const-wide/16 v25, 0x0

    cmpl-double v25, p8, v25

    if-eqz v25, :cond_0

    const-wide/16 v25, 0x0

    cmpl-double v25, p10, v25

    if-eqz v25, :cond_0

    .line 679
    new-instance v11, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 680
    .local v11, lowerLeft:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    const-wide v26, 0x416312d000000000L

    mul-double v26, v26, p4

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move-object v0, v11

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 681
    const/16 v25, 0x2

    const-wide v26, 0x416312d000000000L

    mul-double v26, v26, p6

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move-object v0, v11

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 683
    new-instance v24, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct/range {v24 .. v25}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 684
    .local v24, upperRight:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    const-wide v26, 0x416312d000000000L

    mul-double v26, v26, p8

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 685
    const/16 v25, 0x2

    const-wide v26, 0x416312d000000000L

    mul-double v26, v26, p10

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 687
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/GrectangleMessageTypes;->GRECTANGLE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 688
    .local v5, boundingBox:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    move-object v0, v5

    move/from16 v1, v25

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 689
    const/16 v25, 0x2

    move-object v0, v5

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 690
    const/16 v25, 0x3

    move-object v0, v7

    move/from16 v1, v25

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 692
    .end local v5           #boundingBox:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v11           #lowerLeft:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v24           #upperRight:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    const/16 v25, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v25

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 695
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 696
    .local v18, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 699
    invoke-direct/range {p0 .. p1}, Lcom/google/android/location/LocationMasfClient;->createPlatformProfile(Ljava/util/Locale;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v15

    .line 700
    .local v15, platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 703
    if-eqz p2, :cond_1

    .line 704
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/GlocationMessageTypes;->GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 705
    .local v4, appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    move-object v0, v4

    move/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 706
    const/16 v25, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 710
    .end local v4           #appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->uploadCollectionReport(Z)V

    .line 712
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 714
    .local v12, payload:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    new-instance v16, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v25, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 722
    .local v16, reply:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v13, Lcom/google/masf/protocol/PlainRequest;

    const-string v25, "g:loc/ql"

    const/16 v26, 0x0

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v27

    move-object v0, v13

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    .line 724
    .local v13, plainRequest:Lcom/google/masf/protocol/Request;
    new-instance v8, Lcom/google/android/location/ProtoRequestListener;

    const/16 v25, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/ProtoRequestListener;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/masf/ServiceCallback;)V

    .line 725
    .local v8, listener:Lcom/google/android/location/ProtoRequestListener;
    invoke-virtual {v13, v8}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    .line 728
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v21

    .line 729
    .local v21, serviceMux:Lcom/google/masf/MobileServiceMux;
    const/16 v25, 0x1

    move-object/from16 v0, v21

    move-object v1, v13

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V

    .line 732
    :try_start_1
    invoke-virtual {v8}, Lcom/google/android/location/ProtoRequestListener;->getAsyncResult()Lcom/google/masf/services/AsyncResult;

    move-result-object v25

    const-wide/16 v26, 0x1388

    invoke-virtual/range {v25 .. v27}, Lcom/google/masf/services/AsyncResult;->get(J)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 738
    .local v20, response:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v20, :cond_2

    .line 739
    new-instance v25, Ljava/io/IOException;

    const-string v26, "Unable to parse response from server"

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 715
    .end local v8           #listener:Lcom/google/android/location/ProtoRequestListener;
    .end local v13           #plainRequest:Lcom/google/masf/protocol/Request;
    .end local v16           #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v20           #response:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v21           #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_0
    move-exception v6

    .line 716
    .local v6, e:Ljava/io/IOException;
    const-string v25, "LocationMasfClient"

    const-string v26, "forwardGeocode(): unable to write request to payload"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    throw v6

    .line 733
    .end local v6           #e:Ljava/io/IOException;
    .restart local v8       #listener:Lcom/google/android/location/ProtoRequestListener;
    .restart local v13       #plainRequest:Lcom/google/masf/protocol/Request;
    .restart local v16       #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v21       #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_1
    move-exception v25

    move-object/from16 v6, v25

    .line 734
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v25, "LocationMasfClient"

    const-string v26, "forwardGeocode(): response timeout"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v25, Ljava/io/IOException;

    const-string v26, "response time-out"

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 743
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v20       #response:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v22

    .line 744
    .local v22, status1:I
    if-eqz v22, :cond_3

    .line 745
    const-string v25, "LocationMasfClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "forwardGeocode(): RPC failed with status "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "RPC failed with status "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 749
    :cond_3
    const/16 v25, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 750
    const/16 v25, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 751
    .local v14, platformKey:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 752
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->setPlatformKey(Ljava/lang/String;)V

    .line 756
    .end local v14           #platformKey:Ljava/lang/String;
    :cond_4
    const/16 v25, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-nez v25, :cond_5

    .line 757
    const-string v25, "LocationMasfClient"

    const-string v26, "forwardGeocode(): no ReplyElement"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_0
    return-void

    .line 760
    :cond_5
    const/16 v25, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v17

    .line 762
    .local v17, replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v23

    .line 763
    .local v23, status2:I
    if-eqz v23, :cond_6

    .line 764
    const-string v25, "LocationMasfClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "forwardGeocode(): GLS failed with status "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 768
    :cond_6
    const/16 v25, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-nez v25, :cond_7

    .line 769
    const-string v25, "LocationMasfClient"

    const-string v26, "forwardGeocode(): no location in ReplyElement"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 773
    :cond_7
    const/16 v25, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 774
    .local v9, location:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v25, 0x5

    move-object v0, v9

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-nez v25, :cond_8

    .line 775
    const-string v25, "LocationMasfClient"

    const-string v26, "forwardGeocode(): no feature in GLocation"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 779
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/LocationMasfClient;->getAddressFromProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/Locale;Ljava/util/List;)V

    goto :goto_0
.end method

.method public declared-synchronized getNetworkLocation(Ljava/util/Collection;ILcom/google/android/location/CellState;Ljava/util/List;Ljava/util/List;JLcom/google/android/location/CollectedLocation;Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 39
    .parameter
    .parameter "trigger"
    .parameter "cellState"
    .parameter
    .parameter
    .parameter "scanTime"
    .parameter "gpsLocation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/google/android/location/CellState;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/CellState;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;J",
            "Lcom/google/android/location/CollectedLocation;",
            "Lcom/google/android/location/NetworkLocationProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, apps:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p4, cellHistory:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/CellState;>;"
    .local p5, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    move-object/from16 v26, p9

    .line 215
    .local v26, finalProvider:Lcom/google/android/location/NetworkLocationProvider;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/LocationMasfClient;->generateVerboseDebugInfo()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/LocationMasfClient;->createDebugProfileLocked()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    move-object v9, v4

    .line 216
    .local v9, debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocationCache:Lcom/google/android/location/LocationCache;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v8, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/location/LocationCache;->lookup(Lcom/google/android/location/CellState;Ljava/util/List;Ljava/util/List;Landroid/location/Location;Lcom/google/common/io/protocol/ProtoBuf;)Z

    move-result v27

    .line 220
    .local v27, foundInCache:Z
    if-eqz v9, :cond_0

    .line 221
    const/16 v11, 0xc

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p8

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    move-wide/from16 v15, p6

    move-object/from16 v18, v9

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/location/LocationMasfClient;->queueCollectionReportLocked(ILcom/google/android/location/CollectedLocation;Lcom/google/android/location/CellState;Ljava/util/List;JZLcom/google/common/io/protocol/ProtoBuf;)V

    .line 223
    const/4 v9, 0x0

    .line 226
    :cond_0
    if-eqz v27, :cond_4

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/LocationMasfClient;->mLastCollectionUploadTime:J

    move-wide v6, v0

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xdbba0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 229
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->uploadCollectionReport(Z)V

    .line 232
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v25, v4

    .line 233
    .local v25, extras:Landroid/os/Bundle;
    :goto_1
    const-string v4, "networkLocationSource"

    const-string v5, "cached"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/NetworkLocationProvider;->locationReceived(Landroid/location/Location;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    .end local v25           #extras:Landroid/os/Bundle;
    :goto_2
    monitor-exit p0

    return-void

    .line 215
    .end local v9           #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v27           #foundInCache:Z
    :cond_2
    const/4 v4, 0x0

    move-object v9, v4

    goto :goto_0

    .line 232
    .restart local v9       #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v27       #foundInCache:Z
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mLocation:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v25, v4

    goto :goto_1

    .line 245
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mWifiScanResults:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 246
    if-eqz p5, :cond_5

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mWifiScanResults:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    :cond_5
    move-wide/from16 v0, p6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/LocationMasfClient;->mScanTime:J

    .line 250
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/LocationMasfClient;->mCellState:Lcom/google/android/location/CellState;

    .line 251
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/LocationMasfClient;->mCellHistory:Ljava/util/List;

    .line 252
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/LocationMasfClient;->mGpsLocation:Lcom/google/android/location/CollectedLocation;

    .line 255
    new-instance v36, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v36

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 258
    .local v36, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/LocationMasfClient;->createDebugProfileLocked()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 259
    const/16 v4, 0x63

    move-object/from16 v0, v36

    move v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 261
    const/4 v4, -0x1

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_6

    .line 262
    const/4 v4, 0x1

    move-object v0, v9

    move v1, v4

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 266
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->createCellularProfile(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v23

    .line 267
    .local v23, cellularProfile:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v23, :cond_b

    .line 268
    const/4 v4, 0x5

    const/4 v5, 0x2

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 272
    monitor-enter p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    :try_start_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/location/CellState;

    .line 274
    .local v21, c:Lcom/google/android/location/CellState;
    new-instance v30, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/GcellularMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 275
    .local v30, pastCell:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getLac()I

    move-result v5

    move-object/from16 v0, v30

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 276
    const/4 v4, 0x2

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getCid()I

    move-result v5

    move-object/from16 v0, v30

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 277
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getMcc()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 278
    const/4 v4, 0x4

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getMcc()I

    move-result v5

    move-object/from16 v0, v30

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 280
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getMnc()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 281
    const/4 v4, 0x3

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getMnc()I

    move-result v5

    move-object/from16 v0, v30

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 283
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getSignalStrength()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 284
    const/4 v4, 0x5

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getSignalStrength()I

    move-result v5

    move-object/from16 v0, v30

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 286
    :cond_9
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mCellState:Lcom/google/android/location/CellState;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/CellState;->getTime()J

    move-result-wide v5

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/location/CellState;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    move-object/from16 v0, v30

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 287
    const/4 v4, 0x4

    move-object/from16 v0, v23

    move v1, v4

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_3

    .line 289
    .end local v21           #c:Lcom/google/android/location/CellState;
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v30           #pastCell:Lcom/google/common/io/protocol/ProtoBuf;
    :catchall_0
    move-exception v4

    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    .end local v9           #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v23           #cellularProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v27           #foundInCache:Z
    .end local v36           #requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 289
    .restart local v9       #debugProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v23       #cellularProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v27       #foundInCache:Z
    .restart local v28       #i$:Ljava/util/Iterator;
    .restart local v36       #requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_a
    :try_start_4
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    const/4 v4, 0x1

    :try_start_5
    move-object/from16 v0, v36

    move v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 294
    .end local v28           #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/LocationMasfClient;->createWifiProfile(Ljava/util/List;J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v38

    .line 295
    .local v38, wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v38, :cond_c

    .line 296
    const/4 v4, 0x3

    const/4 v5, 0x2

    move-object/from16 v0, v38

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 299
    const/4 v4, 0x2

    move-object/from16 v0, v36

    move v1, v4

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 304
    :cond_c
    if-eqz p8, :cond_d

    .line 305
    const/4 v4, 0x3

    invoke-static/range {p8 .. p8}, Lcom/google/android/location/LocationMasfClient;->createLocationProto(Lcom/google/android/location/CollectedLocation;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    move-object/from16 v0, v36

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 310
    :cond_d
    new-instance v35, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v35

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 311
    .local v35, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x4

    move-object/from16 v0, v35

    move v1, v4

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/LocationMasfClient;->createPlatformProfile()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v33

    .line 315
    .local v33, platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mCellState:Lcom/google/android/location/CellState;

    move-object v4, v0

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mCellState:Lcom/google/android/location/CellState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/location/CellState;->isValid()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationMasfClient;->mCellState:Lcom/google/android/location/CellState;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->createCellularPlatformProfile(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v22

    .line 318
    .local v22, cellularPlatform:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x6

    move-object/from16 v0, v33

    move v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 321
    .end local v22           #cellularPlatform:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_e
    const/4 v4, 0x1

    move-object/from16 v0, v35

    move v1, v4

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 324
    if-eqz p1, :cond_f

    .line 325
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 326
    .local v19, app:Ljava/lang/String;
    new-instance v20, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/GlocationMessageTypes;->GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 327
    .local v20, appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 328
    const/4 v4, 0x2

    move-object/from16 v0, v35

    move v1, v4

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_4

    .line 333
    .end local v19           #app:Ljava/lang/String;
    .end local v20           #appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v28           #i$:Ljava/util/Iterator;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->uploadCollectionReport(Z)V

    .line 335
    new-instance v31, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v31 .. v31}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 337
    .local v31, payload:Ljava/io/ByteArrayOutputStream;
    :try_start_6
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 344
    :try_start_7
    new-instance v34, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v34

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 345
    .local v34, reply:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v32, Lcom/google/masf/protocol/PlainRequest;

    const-string v4, "g:loc/ql"

    const/4 v5, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    .line 348
    .local v32, plainRequest:Lcom/google/masf/protocol/Request;
    new-instance v29, Lcom/google/android/location/ProtoRequestListener;

    new-instance v4, Lcom/google/android/location/LocationMasfClient$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/LocationMasfClient$1;-><init>(Lcom/google/android/location/LocationMasfClient;Lcom/google/android/location/NetworkLocationProvider;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/ProtoRequestListener;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/masf/ServiceCallback;)V

    .line 356
    .local v29, listener:Lcom/google/android/location/ProtoRequestListener;
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    .line 359
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v37

    .line 360
    .local v37, serviceMux:Lcom/google/masf/MobileServiceMux;
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V

    goto/16 :goto_2

    .line 338
    .end local v29           #listener:Lcom/google/android/location/ProtoRequestListener;
    .end local v32           #plainRequest:Lcom/google/masf/protocol/Request;
    .end local v34           #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v37           #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_0
    move-exception v24

    .line 339
    .local v24, e:Ljava/io/IOException;
    const-string v4, "LocationMasfClient"

    const-string v5, "getNetworkLocation(): unable to write request to payload"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2
.end method

.method public declared-synchronized queueCollectionReport(ILcom/google/android/location/CollectedLocation;Lcom/google/android/location/CellState;Ljava/util/List;JZLcom/google/common/io/protocol/ProtoBuf;)V
    .locals 1
    .parameter "trigger"
    .parameter "location"
    .parameter "cellState"
    .parameter
    .parameter "scanTime"
    .parameter "immediate"
    .parameter "debugProfile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/location/CollectedLocation;",
            "Lcom/google/android/location/CellState;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;JZ",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 797
    .local p4, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p8}, Lcom/google/android/location/LocationMasfClient;->queueCollectionReportLocked(ILcom/google/android/location/CollectedLocation;Lcom/google/android/location/CellState;Ljava/util/List;JZLcom/google/common/io/protocol/ProtoBuf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    monitor-exit p0

    return-void

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queueCollectionReportLocked(ILcom/google/android/location/CollectedLocation;Lcom/google/android/location/CellState;Ljava/util/List;JZLcom/google/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter "trigger"
    .parameter "location"
    .parameter "cellState"
    .parameter
    .parameter "scanTime"
    .parameter "immediate"
    .parameter "debugProfile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/location/CollectedLocation;",
            "Lcom/google/android/location/CellState;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;JZ",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 810
    .local p4, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 813
    .local v3, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez p8, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/google/android/location/LocationMasfClient;->createDebugProfileLocked()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object p8

    .line 816
    :cond_0
    const/16 v5, 0x63

    invoke-virtual {v3, v5, p8}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 818
    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    .line 819
    const/4 v5, 0x1

    invoke-virtual {p8, v5, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 820
    const/16 v5, 0xab4

    invoke-static {v5, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 824
    :cond_1
    invoke-direct {p0, p3}, Lcom/google/android/location/LocationMasfClient;->createCellularProfile(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 825
    .local v1, cellularProfile:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v1, :cond_2

    .line 826
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 830
    :cond_2
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/location/LocationMasfClient;->createWifiProfile(Ljava/util/List;J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 831
    .local v4, wifiProfile:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v4, :cond_3

    .line 832
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 836
    :cond_3
    if-eqz p2, :cond_4

    .line 837
    const/4 v5, 0x3

    invoke-static {p2}, Lcom/google/android/location/LocationMasfClient;->createLocationProto(Lcom/google/android/location/CollectedLocation;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 840
    :cond_4
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    if-nez v5, :cond_9

    .line 841
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v6, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    .line 844
    invoke-direct {p0}, Lcom/google/android/location/LocationMasfClient;->createPlatformProfile()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 845
    .local v2, platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/google/android/location/CellState;->isValid()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 846
    invoke-direct {p0, p3}, Lcom/google/android/location/LocationMasfClient;->createCellularPlatformProfile(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 847
    .local v0, cellularPlatform:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x6

    invoke-virtual {v2, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 851
    .end local v0           #cellularPlatform:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 872
    :cond_6
    :goto_0
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 875
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_7

    .line 877
    const/4 p7, 0x1

    .line 880
    :cond_7
    if-eqz p7, :cond_8

    .line 882
    invoke-direct {p0, p7}, Lcom/google/android/location/LocationMasfClient;->uploadCollectionReport(Z)V

    .line 884
    :cond_8
    return-void

    .line 855
    .end local v2           #platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_9
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 857
    .restart local v2       #platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v2, :cond_a

    .line 858
    invoke-direct {p0}, Lcom/google/android/location/LocationMasfClient;->createPlatformProfile()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 859
    iget-object v5, p0, Lcom/google/android/location/LocationMasfClient;->mCurrentCollectionRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 864
    :cond_a
    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    if-nez v5, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/google/android/location/CellState;->isValid()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 866
    invoke-direct {p0, p3}, Lcom/google/android/location/LocationMasfClient;->createCellularPlatformProfile(Lcom/google/android/location/CellState;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 867
    .restart local v0       #cellularPlatform:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x6

    invoke-virtual {v2, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0
.end method

.method public reverseGeocode(Ljava/util/Locale;Ljava/lang/String;DDILjava/util/List;)V
    .locals 26
    .parameter "locale"
    .parameter "appPackageName"
    .parameter "lat"
    .parameter "lng"
    .parameter "maxResults"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "DDI",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    .local p8, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v23, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST_ELEMENT:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 541
    .local v18, requestElement:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v7, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v23, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 542
    .local v7, latlngElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v23, 0x1

    const-wide v24, 0x416312d000000000L

    mul-double v24, v24, p3

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move-object v0, v7

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 543
    const/16 v23, 0x2

    const-wide v24, 0x416312d000000000L

    mul-double v24, v24, p5

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move-object v0, v7

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 545
    new-instance v10, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v23, Lcom/google/android/location/protocol/GlocationMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 546
    .local v10, locationElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v23, 0x1

    move-object v0, v10

    move/from16 v1, v23

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 547
    const/16 v23, 0x6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object v0, v10

    move/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 548
    const/16 v23, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 550
    new-instance v6, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v23, Lcom/google/android/location/protocol/LocserverMessageTypes;->GGEOCODE_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 552
    .local v6, geocodeElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v23, 0x1

    move-object v0, v6

    move/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 553
    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 556
    new-instance v17, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v23, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 557
    .local v17, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v23, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 560
    invoke-direct/range {p0 .. p1}, Lcom/google/android/location/LocationMasfClient;->createPlatformProfile(Ljava/util/Locale;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    .line 561
    .local v14, platformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 564
    if-eqz p2, :cond_0

    .line 565
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v23, Lcom/google/android/location/protocol/GlocationMessageTypes;->GAPP_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 566
    .local v4, appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v23, 0x1

    move-object v0, v4

    move/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 567
    const/16 v23, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 571
    .end local v4           #appProfile:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->uploadCollectionReport(Z)V

    .line 573
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 575
    .local v11, payload:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    new-instance v15, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v23, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLOC_REPLY:Lcom/google/common/io/protocol/ProtoBufType;

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 583
    .local v15, reply:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v12, Lcom/google/masf/protocol/PlainRequest;

    const-string v23, "g:loc/ql"

    const/16 v24, 0x0

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    .line 585
    .local v12, plainRequest:Lcom/google/masf/protocol/Request;
    new-instance v8, Lcom/google/android/location/ProtoRequestListener;

    const/16 v23, 0x0

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/ProtoRequestListener;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/masf/ServiceCallback;)V

    .line 586
    .local v8, listener:Lcom/google/android/location/ProtoRequestListener;
    invoke-virtual {v12, v8}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    .line 589
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v20

    .line 590
    .local v20, serviceMux:Lcom/google/masf/MobileServiceMux;
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object v1, v12

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V

    .line 593
    :try_start_1
    invoke-virtual {v8}, Lcom/google/android/location/ProtoRequestListener;->getAsyncResult()Lcom/google/masf/services/AsyncResult;

    move-result-object v23

    const-wide/16 v24, 0x1388

    invoke-virtual/range {v23 .. v25}, Lcom/google/masf/services/AsyncResult;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 599
    .local v19, response:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v19, :cond_1

    .line 600
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Unable to parse response from server"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 576
    .end local v8           #listener:Lcom/google/android/location/ProtoRequestListener;
    .end local v12           #plainRequest:Lcom/google/masf/protocol/Request;
    .end local v15           #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v19           #response:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v20           #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_0
    move-exception v5

    .line 577
    .local v5, e:Ljava/io/IOException;
    const-string v23, "LocationMasfClient"

    const-string v24, "reverseGeocode(): unable to write request to payload"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    throw v5

    .line 594
    .end local v5           #e:Ljava/io/IOException;
    .restart local v8       #listener:Lcom/google/android/location/ProtoRequestListener;
    .restart local v12       #plainRequest:Lcom/google/masf/protocol/Request;
    .restart local v15       #reply:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v20       #serviceMux:Lcom/google/masf/MobileServiceMux;
    :catch_1
    move-exception v23

    move-object/from16 v5, v23

    .line 595
    .local v5, e:Ljava/lang/InterruptedException;
    const-string v23, "LocationMasfClient"

    const-string v24, "reverseGeocode(): response timeout"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v23, Ljava/io/IOException;

    const-string v24, "response time-out"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 604
    .end local v5           #e:Ljava/lang/InterruptedException;
    .restart local v19       #response:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v21

    .line 605
    .local v21, status1:I
    if-eqz v21, :cond_2

    .line 606
    const-string v23, "LocationMasfClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "reverseGeocode(): RPC failed with status "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v23, Ljava/io/IOException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RPC failed with status "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 610
    :cond_2
    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 611
    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 612
    .local v13, platformKey:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 613
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/location/LocationMasfClient;->setPlatformKey(Ljava/lang/String;)V

    .line 617
    .end local v13           #platformKey:Ljava/lang/String;
    :cond_3
    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v23

    if-nez v23, :cond_4

    .line 618
    const-string v23, "LocationMasfClient"

    const-string v24, "reverseGeocode(): no ReplyElement"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_0
    return-void

    .line 621
    :cond_4
    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 623
    .local v16, replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v22

    .line 624
    .local v22, status2:I
    if-eqz v22, :cond_5

    .line 625
    const-string v23, "LocationMasfClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "reverseGeocode(): GLS failed with status "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :cond_5
    const/16 v23, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v23

    if-nez v23, :cond_6

    .line 630
    const-string v23, "LocationMasfClient"

    const-string v24, "reverseGeocode(): no location in ReplyElement"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :cond_6
    const/16 v23, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 635
    .local v9, location:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v23, 0x5

    move-object v0, v9

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v23

    if-nez v23, :cond_7

    .line 636
    const-string v23, "LocationMasfClient"

    const-string v24, "reverseGeocode(): no feature in GLocation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    :cond_7
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/LocationMasfClient;->getAddressFromProtoBuf(Lcom/google/common/io/protocol/ProtoBuf;Ljava/util/Locale;Ljava/util/List;)V

    goto :goto_0
.end method
