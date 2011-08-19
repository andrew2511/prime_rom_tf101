.class public Lcom/google/android/street/PanoramaRequest;
.super Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;
.source "PanoramaRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/PanoramaRequest$Listener;
    }
.end annotation


# static fields
.field private static sDelayBeforeRequestingMetadata:I


# instance fields
.field private mIsImmediate:Z

.field private final mListener:Lcom/google/android/street/PanoramaRequest$Listener;

.field private mLogMsg:Ljava/lang/StringBuilder;

.field private mQueued:Z

.field private final mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

.field private mRequestedPanoId:Ljava/lang/String;

.field private mRequestedZoom:I

.field private mTilesGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/google/android/street/PanoramaRequest;->sDelayBeforeRequestingMetadata:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/street/PanoramaRequest$Listener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 156
    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequestedZoom:I

    .line 61
    iput-boolean v2, p0, Lcom/google/android/street/PanoramaRequest;->mIsImmediate:Z

    .line 157
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/android/street/PanoramaRequest;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/google/android/street/PanoramaRequest;->mListener:Lcom/google/android/street/PanoramaRequest$Listener;

    .line 160
    new-instance v0, Lcom/google/mobile/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->STREET_VIEW_REQUEST_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    .line 161
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v1, 0x33

    invoke-virtual {v0, v1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 163
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v3}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 167
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 169
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4, v3}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 174
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->createProtoBuf(Lcom/google/mobile/common/io/protocol/ProtoBuf;I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PR sending request for pano "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mLogMsg:Ljava/lang/StringBuilder;

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/google/android/street/PanoramaRequest$Listener;Lcom/google/android/street/MapPoint;)V
    .locals 3
    .parameter "listener"
    .parameter "mapPoint"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/google/android/street/PanoramaRequest;-><init>(Lcom/google/android/street/PanoramaRequest$Listener;)V

    .line 148
    const-string v1, "mapPoint"

    invoke-static {p2, v1}, Lcom/google/android/street/PanoramaRequest;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Lcom/google/android/street/MapPoint;->toMapPointProto()Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 151
    .local v0, mapPointProto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/mobile/common/io/protocol/ProtoBuf;)V

    .line 152
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mLogMsg:Ljava/lang/StringBuilder;

    const-string v2, "@ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/google/android/street/PanoramaRequest$Listener;Ljava/lang/String;)V
    .locals 2
    .parameter "listener"
    .parameter "panoId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/google/android/street/PanoramaRequest;-><init>(Lcom/google/android/street/PanoramaRequest$Listener;)V

    .line 127
    const-string v0, "panoId"

    invoke-static {p2, v0}, Lcom/google/android/street/PanoramaRequest;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p2, p0, Lcom/google/android/street/PanoramaRequest;->mRequestedPanoId:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mLogMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    return-void
.end method

.method private static assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "o"
    .parameter "name"

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    return-void
.end method

.method private internalSendRequest()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    .line 321
    return-void
.end method

.method public static uncompactJpeg([B)[B
    .locals 2
    .parameter "compactJpegData"

    .prologue
    .line 334
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 335
    invoke-static {p0}, Lcom/google/image/compression/jpeg/JpegUtil;->uncompactJpeg([B)[B

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public addConfigRequest()Lcom/google/android/street/PanoramaRequest;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 195
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mLogMsg:Ljava/lang/StringBuilder;

    const-string v2, " config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 197
    .local v0, metadataRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/16 v1, 0x38

    invoke-virtual {v0, v1, v3}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 199
    const/16 v1, 0x39

    invoke-virtual {v0, v1, v3}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 201
    return-object p0
.end method

.method public addTile(III)Lcom/google/android/street/PanoramaRequest;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "face"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mTilesGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "must call addTilesRequest first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mLogMsg:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") face "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mTilesGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v2, 0x25

    invoke-static {v1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->addProtoBuf(Lcom/google/mobile/common/io/protocol/ProtoBuf;I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 267
    .local v0, indexGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/16 v1, 0x27

    invoke-virtual {v0, v1, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 268
    const/16 v1, 0x28

    invoke-virtual {v0, v1, p2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 271
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 272
    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p3}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 275
    :cond_1
    return-object p0
.end method

.method public addTilesRequest(I)Lcom/google/android/street/PanoramaRequest;
    .locals 4
    .parameter "zoom"

    .prologue
    .line 219
    if-gez p1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "zoom < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mTilesGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_1

    .line 223
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already requested tiles"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mLogMsg:Ljava/lang/StringBuilder;

    const-string v2, " tiles @ zoom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    iput p1, p0, Lcom/google/android/street/PanoramaRequest;->mRequestedZoom:I

    .line 228
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->createProtoBuf(Lcom/google/mobile/common/io/protocol/ProtoBuf;I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mTilesGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    .line 234
    new-instance v0, Lcom/google/mobile/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->CLIENT_CAPABILITIES_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBufType;)V

    .line 235
    .local v0, cap:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 237
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mTilesGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/mobile/common/io/protocol/ProtoBuf;)V

    .line 240
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mTilesGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v2, 0x23

    const/16 v3, 0x200

    invoke-virtual {v1, v2, v3}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 242
    iget-object v1, p0, Lcom/google/android/street/PanoramaRequest;->mTilesGroup:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v2, 0x24

    invoke-virtual {v1, v2, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 244
    return-object p0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 344
    const/16 v0, 0x28

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/google/android/street/PanoramaRequest;->mIsImmediate:Z

    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 22
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 361
    .local v17, t0:J
    sget-object v3, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->STREET_VIEW_RESPONSE_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->readProtoBufResponse(Lcom/google/mobile/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 367
    .local v16, response:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/4 v3, 0x2

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, responsePanoId:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 373
    .local v11, configProto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    if-eqz v11, :cond_2

    .line 374
    new-instance v10, Lcom/google/android/street/PanoramaConfig;

    invoke-direct {v10, v11}, Lcom/google/android/street/PanoramaConfig;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    .line 381
    .local v10, config:Lcom/google/android/street/PanoramaConfig;
    iget-object v15, v10, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    .line 382
    .local v15, panoId:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/google/android/street/PanoramaConfig;->getTransitionLatency()I

    move-result v3

    sput v3, Lcom/google/android/street/PanoramaRequest;->sDelayBeforeRequestingMetadata:I

    .line 384
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PR received config "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " != response "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/PanoramaRequest;->mRequestedPanoId:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/PanoramaRequest;->mRequestedPanoId:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PR received config "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " != request "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/PanoramaRequest;->mRequestedPanoId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 396
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/PanoramaRequest;->mListener:Lcom/google/android/street/PanoramaRequest$Listener;

    move-object v3, v0

    invoke-interface {v3, v10, v11}, Lcom/google/android/street/PanoramaRequest$Listener;->receivedPanoramaConfig(Lcom/google/android/street/PanoramaConfig;Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    .line 400
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .end local v15           #panoId:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x11

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v21

    .line 402
    .local v21, tilesProto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    if-eqz v21, :cond_5

    .line 403
    const/16 v3, 0x13

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 405
    .local v5, receivedZoom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/PanoramaRequest;->mRequestedZoom:I

    move v3, v0

    if-eq v5, v3, :cond_3

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PR received zoom "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " != request "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/PanoramaRequest;->mRequestedZoom:I

    move v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 409
    :cond_3
    const/16 v3, 0x16

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v14

    .line 415
    .local v14, numTiles:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v14, :cond_5

    .line 416
    const/16 v3, 0x16

    move-object/from16 v0, v21

    move v1, v3

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v20

    .line 418
    .local v20, tileProto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/16 v3, 0x17

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 420
    .local v6, x:I
    const/16 v3, 0x18

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 422
    .local v7, y:I
    const/16 v3, 0x1a

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x1a

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    move v8, v3

    .line 425
    .local v8, face:I
    :goto_1
    const/16 v3, 0x19

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v19

    .line 427
    .local v19, tileData:[B
    invoke-static/range {v19 .. v19}, Lcom/google/android/street/PanoramaRequest;->uncompactJpeg([B)[B

    move-result-object v9

    .line 428
    .local v9, uncompactedTileData:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/PanoramaRequest;->mListener:Lcom/google/android/street/PanoramaRequest$Listener;

    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/street/PanoramaRequest$Listener;->receivedPanoramaTile(Ljava/lang/String;IIII[B)V

    .line 415
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 422
    .end local v8           #face:I
    .end local v9           #uncompactedTileData:[B
    .end local v19           #tileData:[B
    :cond_4
    const/4 v3, -0x1

    move v8, v3

    goto :goto_1

    .line 434
    .end local v5           #receivedZoom:I
    .end local v6           #x:I
    .end local v7           #y:I
    .end local v12           #i:I
    .end local v14           #numTiles:I
    .end local v20           #tileProto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    :cond_5
    const/16 v3, 0x22

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v13

    .line 436
    .local v13, isThrottled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/PanoramaRequest;->mListener:Lcom/google/android/street/PanoramaRequest$Listener;

    move-object v3, v0

    invoke-interface {v3, v4, v13}, Lcom/google/android/street/PanoramaRequest$Listener;->receivedDone(Ljava/lang/String;Z)V

    .line 438
    const/4 v3, 0x1

    return v3
.end method

.method public send()V
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/android/street/PanoramaRequest;->mQueued:Z

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already queued"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/PanoramaRequest;->mQueued:Z

    .line 297
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mLogMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mLogMsg:Ljava/lang/StringBuilder;

    .line 300
    sget v0, Lcom/google/android/street/PanoramaRequest;->sDelayBeforeRequestingMetadata:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :try_start_0
    sget v0, Lcom/google/android/street/PanoramaRequest;->sDelayBeforeRequestingMetadata:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    const/4 v0, 0x0

    sput v0, Lcom/google/android/street/PanoramaRequest;->sDelayBeforeRequestingMetadata:I

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/google/android/street/PanoramaRequest;->internalSendRequest()V

    .line 312
    return-void

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setImmediate(Z)Lcom/google/android/street/PanoramaRequest;
    .locals 0
    .parameter "isImmediate"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/google/android/street/PanoramaRequest;->mIsImmediate:Z

    .line 190
    return-object p0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 1
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/street/PanoramaRequest;->mRequest:Lcom/google/mobile/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 444
    return-void
.end method
