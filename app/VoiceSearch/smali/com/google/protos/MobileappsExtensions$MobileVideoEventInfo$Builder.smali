.class public final Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;",
        "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

.field private avgBytesPerSecond_:I

.field private avgUsBetweenFrames_:I

.field private bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

.field private bitField0_:I

.field private category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

.field private duration_:J

.field private errorCode_:I

.field private format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

.field private heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

.field private numBufferingPauses_:I

.field private position_:J

.field private totalBufferingMs_:I

.field private uploadId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1411
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_SELECTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 1435
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;->SEARCH_RESULTS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    .line 1522
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_80:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 1546
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->MOBILE_NETWORK:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 1675
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 1227
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->maybeForceBuilderInitialization()V

    .line 1228
    return-void
.end method

.method static synthetic access$700()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1221
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1233
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1231
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 2

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    .line 1277
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1278
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1280
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 5

    .prologue
    .line 1284
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 1285
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1286
    const/4 v2, 0x0

    .line 1287
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1288
    or-int/lit8 v2, v2, 0x1

    .line 1290
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$902(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 1291
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1292
    or-int/lit8 v2, v2, 0x2

    .line 1294
    :cond_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1002(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    .line 1295
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1296
    or-int/lit8 v2, v2, 0x4

    .line 1298
    :cond_2
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->position_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1102(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;J)J

    .line 1299
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1300
    or-int/lit8 v2, v2, 0x8

    .line 1302
    :cond_3
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->duration_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1202(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;J)J

    .line 1303
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1304
    or-int/lit8 v2, v2, 0x10

    .line 1306
    :cond_4
    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->uploadId_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1302(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;J)J

    .line 1307
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1308
    or-int/lit8 v2, v2, 0x20

    .line 1310
    :cond_5
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1402(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 1311
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1312
    or-int/lit8 v2, v2, 0x40

    .line 1314
    :cond_6
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1502(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 1315
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1316
    or-int/lit16 v2, v2, 0x80

    .line 1318
    :cond_7
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->errorCode_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1602(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I

    .line 1319
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1320
    or-int/lit16 v2, v2, 0x100

    .line 1322
    :cond_8
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgUsBetweenFrames_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1702(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I

    .line 1323
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1324
    or-int/lit16 v2, v2, 0x200

    .line 1326
    :cond_9
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgBytesPerSecond_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1802(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I

    .line 1327
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1328
    or-int/lit16 v2, v2, 0x400

    .line 1330
    :cond_a
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->numBufferingPauses_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$1902(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I

    .line 1331
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1332
    or-int/lit16 v2, v2, 0x800

    .line 1334
    :cond_b
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->totalBufferingMs_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$2002(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I

    .line 1335
    and-int/lit16 v1, v1, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_c

    .line 1336
    or-int/lit16 v1, v2, 0x1000

    .line 1338
    :goto_0
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$2102(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 1339
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->access$2202(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;I)I

    .line 1340
    return-object v0

    :cond_c
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1237
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1238
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_SELECTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 1239
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1240
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;->SEARCH_RESULTS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    .line 1241
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1242
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->position_:J

    .line 1243
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1244
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->duration_:J

    .line 1245
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1246
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->uploadId_:J

    .line 1247
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1248
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_80:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 1249
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1250
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->MOBILE_NETWORK:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 1251
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1252
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->errorCode_:I

    .line 1253
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1254
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgUsBetweenFrames_:I

    .line 1255
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1256
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgBytesPerSecond_:I

    .line 1257
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1258
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->numBufferingPauses_:I

    .line 1259
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1260
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->totalBufferingMs_:I

    .line 1261
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1262
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 1263
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1264
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1429
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;->PLAY_SELECTED:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 1431
    return-object p0
.end method

.method public clearAvgBytesPerSecond()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1626
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1627
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgBytesPerSecond_:I

    .line 1629
    return-object p0
.end method

.method public clearAvgUsBetweenFrames()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1605
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1606
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgUsBetweenFrames_:I

    .line 1608
    return-object p0
.end method

.method public clearBearer()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1563
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1564
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;->MOBILE_NETWORK:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 1566
    return-object p0
.end method

.method public clearCategory()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1452
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1453
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;->SEARCH_RESULTS:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    .line 1455
    return-object p0
.end method

.method public clearDuration()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 2

    .prologue
    .line 1494
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->duration_:J

    .line 1497
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1584
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1585
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->errorCode_:I

    .line 1587
    return-object p0
.end method

.method public clearFormat()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1539
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1540
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;->MP4_80:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 1542
    return-object p0
.end method

.method public clearHeatMap()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1711
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 1713
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1714
    return-object p0
.end method

.method public clearNumBufferingPauses()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1647
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1648
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->numBufferingPauses_:I

    .line 1650
    return-object p0
.end method

.method public clearPosition()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 2

    .prologue
    .line 1473
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1474
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->position_:J

    .line 1476
    return-object p0
.end method

.method public clearTotalBufferingMs()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1

    .prologue
    .line 1668
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1669
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->totalBufferingMs_:I

    .line 1671
    return-object p0
.end method

.method public clearUploadId()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 2

    .prologue
    .line 1515
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1516
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->uploadId_:J

    .line 1518
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 2

    .prologue
    .line 1268
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    return-object v0
.end method

.method public getAvgBytesPerSecond()I
    .locals 1

    .prologue
    .line 1617
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgBytesPerSecond_:I

    return v0
.end method

.method public getAvgUsBetweenFrames()I
    .locals 1

    .prologue
    .line 1596
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgUsBetweenFrames_:I

    return v0
.end method

.method public getBearer()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    return-object v0
.end method

.method public getCategory()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1

    .prologue
    .line 1272
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 1485
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->duration_:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->errorCode_:I

    return v0
.end method

.method public getFormat()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    return-object v0
.end method

.method public getHeatMap()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object v0
.end method

.method public getNumBufferingPauses()I
    .locals 1

    .prologue
    .line 1638
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->numBufferingPauses_:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 1464
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->position_:J

    return-wide v0
.end method

.method public getTotalBufferingMs()I
    .locals 1

    .prologue
    .line 1659
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->totalBufferingMs_:I

    return v0
.end method

.method public getUploadId()J
    .locals 2

    .prologue
    .line 1506
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->uploadId_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1413
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgBytesPerSecond()Z
    .locals 2

    .prologue
    .line 1614
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvgUsBetweenFrames()Z
    .locals 2

    .prologue
    .line 1593
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBearer()Z
    .locals 2

    .prologue
    .line 1548
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategory()Z
    .locals 2

    .prologue
    .line 1437
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDuration()Z
    .locals 2

    .prologue
    .line 1482
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorCode()Z
    .locals 2

    .prologue
    .line 1572
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFormat()Z
    .locals 2

    .prologue
    .line 1524
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeatMap()Z
    .locals 2

    .prologue
    .line 1677
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumBufferingPauses()Z
    .locals 2

    .prologue
    .line 1635
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPosition()Z
    .locals 2

    .prologue
    .line 1461
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalBufferingMs()Z
    .locals 2

    .prologue
    .line 1656
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUploadId()Z
    .locals 2

    .prologue
    .line 1503
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1388
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1221
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1221
    check-cast p1, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1221
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1395
    const/4 v1, 0x0

    .line 1397
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1406
    :cond_0
    return-object p0

    .line 1398
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1399
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1400
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1402
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 1403
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    :cond_1
    throw v0

    .line 1402
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 1344
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1384
    :goto_0
    return-object v0

    .line 1345
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1346
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getAction()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1348
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1349
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getCategory()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setCategory(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1351
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1352
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setPosition(J)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1354
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1355
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setDuration(J)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1357
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasUploadId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1358
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getUploadId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setUploadId(J)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1360
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1361
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getFormat()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setFormat(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1363
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasBearer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1364
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getBearer()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setBearer(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1366
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1367
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setErrorCode(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1369
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasAvgUsBetweenFrames()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1370
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getAvgUsBetweenFrames()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setAvgUsBetweenFrames(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1372
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasAvgBytesPerSecond()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1373
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getAvgBytesPerSecond()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setAvgBytesPerSecond(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1375
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasNumBufferingPauses()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1376
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getNumBufferingPauses()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setNumBufferingPauses(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1378
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasTotalBufferingMs()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1379
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getTotalBufferingMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->setTotalBufferingMs(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 1381
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->hasHeatMap()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1382
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getHeatMap()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeHeatMap(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    :cond_d
    move-object v0, p0

    .line 1384
    goto/16 :goto_0
.end method

.method public mergeHeatMap(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 1699
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 1707
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1708
    return-object p0

    .line 1704
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    goto :goto_0
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1419
    if-nez p1, :cond_0

    .line 1420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1422
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1423
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$ActionType;

    .line 1425
    return-object p0
.end method

.method public setAvgBytesPerSecond(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1620
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1621
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgBytesPerSecond_:I

    .line 1623
    return-object p0
.end method

.method public setAvgUsBetweenFrames(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1599
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1600
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->avgUsBetweenFrames_:I

    .line 1602
    return-object p0
.end method

.method public setBearer(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1554
    if-nez p1, :cond_0

    .line 1555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1557
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1558
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bearer_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$BearerType;

    .line 1560
    return-object p0
.end method

.method public setCategory(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1443
    if-nez p1, :cond_0

    .line 1444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1446
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1447
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->category_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoCategory;

    .line 1449
    return-object p0
.end method

.method public setDuration(J)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1488
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1489
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->duration_:J

    .line 1491
    return-object p0
.end method

.method public setErrorCode(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1578
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1579
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->errorCode_:I

    .line 1581
    return-object p0
.end method

.method public setFormat(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1530
    if-nez p1, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1533
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1534
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->format_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$VideoFormat;

    .line 1536
    return-object p0
.end method

.method public setHeatMap(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1693
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 1695
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1696
    return-object p0
.end method

.method public setHeatMap(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1683
    if-nez p1, :cond_0

    .line 1684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1686
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->heatMap_:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 1688
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1689
    return-object p0
.end method

.method public setNumBufferingPauses(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1641
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1642
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->numBufferingPauses_:I

    .line 1644
    return-object p0
.end method

.method public setPosition(J)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1467
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1468
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->position_:J

    .line 1470
    return-object p0
.end method

.method public setTotalBufferingMs(I)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1662
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1663
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->totalBufferingMs_:I

    .line 1665
    return-object p0
.end method

.method public setUploadId(J)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1509
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->bitField0_:I

    .line 1510
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->uploadId_:J

    .line 1512
    return-object p0
.end method
