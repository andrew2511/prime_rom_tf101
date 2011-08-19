.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    }
.end annotation


# static fields
.field public static final LATITUDE_E7_FIELD_NUMBER:I = 0x1

.field public static final LONGITUDE_E7_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1322
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    .line 1602
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 1603
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->initFields()V

    .line 1604
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 1283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1362
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    .line 1382
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    .line 1284
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->initFields()V

    .line 1287
    const/4 v0, 0x0

    .line 1288
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1289
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1290
    sparse-switch v1, :sswitch_data_0

    .line 1295
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1297
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 1293
    goto :goto_0

    .line 1302
    :sswitch_1
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 1303
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1319
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->makeExtensionsImmutable()V

    throw v0

    .line 1307
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    .line 1308
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1315
    :catch_1
    move-exception v0

    .line 1316
    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1319
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->makeExtensionsImmutable()V

    .line 1321
    return-void

    .line 1290
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1261
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1266
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1362
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    .line 1382
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    .line 1268
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1261
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1269
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1362
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    .line 1382
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    .line 1269
    return-void
.end method

.method static synthetic access$1202(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1261
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 1273
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1359
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 1360
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 1361
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1

    .prologue
    .line 1459
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->access$1000()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1462
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1439
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1445
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1409
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1415
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1450
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1456
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1429
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1435
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1419
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1425
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 1277
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLatitudeE7()I
    .locals 1

    .prologue
    .line 1345
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .locals 1

    .prologue
    .line 1355
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1384
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    .line 1385
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1397
    :goto_0
    return v0

    .line 1387
    :cond_0
    const/4 v0, 0x0

    .line 1388
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1389
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1392
    :cond_1
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1393
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1396
    :cond_2
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasLatitudeE7()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1342
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongitudeE7()Z
    .locals 2

    .prologue
    .line 1352
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1364
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    .line 1365
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1368
    :goto_0
    return v0

    .line 1365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1367
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->memoizedIsInitialized:B

    move v0, v2

    .line 1368
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1

    .prologue
    .line 1460
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1

    .prologue
    .line 1464
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1403
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1373
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getSerializedSize()I

    .line 1374
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1375
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 1377
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1378
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 1380
    :cond_1
    return-void
.end method
