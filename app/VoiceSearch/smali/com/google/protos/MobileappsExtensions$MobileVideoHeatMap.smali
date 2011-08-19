.class public final Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMapOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileVideoHeatMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final ACTIVITY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;


# instance fields
.field private action_:I

.field private activity_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    .line 363
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    .line 364
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->initFields()V

    .line 365
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

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 123
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedIsInitialized:B

    .line 143
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedSerializedSize:I

    .line 45
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->initFields()V

    .line 48
    const/4 v0, 0x0

    .line 49
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 51
    sparse-switch v1, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 58
    goto :goto_0

    :sswitch_0
    move v0, v2

    .line 54
    goto :goto_0

    .line 63
    :sswitch_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    .line 64
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->activity_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->makeExtensionsImmutable()V

    throw v0

    .line 68
    :sswitch_2
    :try_start_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    .line 69
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->action_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
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

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->makeExtensionsImmutable()V

    .line 82
    return-void

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
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
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 123
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedIsInitialized:B

    .line 143
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 123
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedIsInitialized:B

    .line 143
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedSerializedSize:I

    .line 30
    return-void
.end method

.method static synthetic access$302(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->activity_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->action_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->activity_:I

    .line 121
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->action_:I

    .line 122
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;->access$100()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;
    .locals 1
    .parameter

    .prologue
    .line 223
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object p0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->action_:I

    return v0
.end method

.method public getActivity()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->activity_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 145
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedSerializedSize:I

    .line 146
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 158
    :goto_0
    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 149
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 150
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->activity_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 154
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->action_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_2
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

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

.method public hasActivity()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 103
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

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

    .line 125
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedIsInitialized:B

    .line 126
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->memoizedIsInitialized:B

    move v0, v2

    .line 129
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;
    .locals 1

    .prologue
    .line 225
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;)Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap$Builder;

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
    .line 164
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

    .line 134
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->getSerializedSize()I

    .line 135
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->activity_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 138
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 139
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileVideoHeatMap;->action_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 141
    :cond_1
    return-void
.end method
