.class public final Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileAppsServicesFrameworkExtensionsProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;,
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;,
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEventsOrBuilder;,
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;,
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEventOrBuilder;,
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;,
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequestsOrBuilder;
    }
.end annotation


# static fields
.field public static final APPLICATION_NAME_FIELD_NUMBER:I = 0x2

.field public static final APPLICATION_VERSION_FIELD_NUMBER:I = 0x3

.field public static final BACKENDREQUESTS_FIELD_NUMBER:I = 0x9

.field public static final CLIENT_LOCALE_FIELD_NUMBER:I = 0x6

.field public static final DISTRIBUTION_CHANNEL_FIELD_NUMBER:I = 0x5

.field public static final INSTALL_INSTANCE_ID_FIELD_NUMBER:I = 0x7

.field public static final IS_ACTIVATION_EVENT_FIELD_NUMBER:I = 0x10

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_ID_FIELD_NUMBER:I = 0x4

.field public static final PROTOCOL_VERSION_FIELD_NUMBER:I = 0x1

.field public static final RECORDEDEVENT_FIELD_NUMBER:I = 0xd

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0x8

.field public static final USEREVENTS_FIELD_NUMBER:I = 0x11

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;


# instance fields
.field private applicationName_:Ljava/lang/Object;

.field private applicationVersion_:Ljava/lang/Object;

.field private backendRequests_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private clientLocale_:Ljava/lang/Object;

.field private distributionChannel_:Ljava/lang/Object;

.field private installInstanceId_:J

.field private isActivationEvent_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private platformId_:Ljava/lang/Object;

.field private protocolVersion_:I

.field private recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

.field private requestId_:J

.field private userEvents_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15235
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 18426
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    .line 18427
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->initFields()V

    .line 18428
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v6, 0x800

    const/16 v5, 0x100

    .line 15123
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17380
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    .line 17476
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedSerializedSize:I

    .line 15124
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->initFields()V

    move v2, v1

    .line 15128
    :goto_0
    if-nez v1, :cond_1

    .line 15129
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 15130
    sparse-switch v0, :sswitch_data_0

    .line 15135
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v7

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    .line 15219
    goto :goto_0

    :sswitch_0
    move v0, v7

    move v1, v2

    .line 15133
    goto :goto_1

    .line 15142
    :sswitch_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15143
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->protocolVersion_:I

    move v0, v1

    move v1, v2

    .line 15144
    goto :goto_1

    .line 15147
    :sswitch_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15148
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationName_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    .line 15149
    goto :goto_1

    .line 15152
    :sswitch_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15153
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationVersion_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    .line 15154
    goto :goto_1

    .line 15157
    :sswitch_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15158
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->platformId_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    .line 15159
    goto :goto_1

    .line 15162
    :sswitch_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15163
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->distributionChannel_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    .line 15164
    goto :goto_1

    .line 15167
    :sswitch_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15168
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->clientLocale_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    .line 15169
    goto :goto_1

    .line 15172
    :sswitch_7
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->installInstanceId_:J

    move v0, v1

    move v1, v2

    .line 15174
    goto :goto_1

    .line 15177
    :sswitch_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15178
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->requestId_:J

    move v0, v1

    move v1, v2

    .line 15179
    goto :goto_1

    .line 15182
    :sswitch_9
    and-int/lit16 v0, v2, 0x100

    if-eq v0, v5, :cond_8

    .line 15183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15184
    or-int/lit16 v0, v2, 0x100

    .line 15186
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    const/16 v3, 0x9

    sget-object v4, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v8, v1

    move v1, v0

    move v0, v8

    .line 15188
    goto/16 :goto_1

    .line 15191
    :sswitch_a
    const/4 v0, 0x0

    .line 15192
    :try_start_2
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-ne v3, v5, :cond_7

    .line 15193
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    move-result-object v0

    move-object v3, v0

    .line 15195
    :goto_3
    const/16 v0, 0xd

    sget-object v4, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 15197
    if-eqz v3, :cond_0

    .line 15198
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-virtual {v3, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;

    .line 15199
    invoke-virtual {v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 15201
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    move v0, v1

    move v1, v2

    .line 15202
    goto/16 :goto_1

    .line 15205
    :sswitch_b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    .line 15206
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->isActivationEvent_:Z

    move v0, v1

    move v1, v2

    .line 15207
    goto/16 :goto_1

    .line 15210
    :sswitch_c
    and-int/lit16 v0, v2, 0x800

    if-eq v0, v6, :cond_6

    .line 15211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 15212
    or-int/lit16 v0, v2, 0x800

    .line 15214
    :goto_4
    :try_start_3
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    const/16 v3, 0x11

    sget-object v4, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v8, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_1

    .line 15226
    :cond_1
    and-int/lit16 v0, v2, 0x100

    if-ne v0, v5, :cond_2

    .line 15227
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    .line 15229
    :cond_2
    and-int/lit16 v0, v2, 0x800

    if-ne v0, v6, :cond_3

    .line 15230
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    .line 15232
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->makeExtensionsImmutable()V

    .line 15234
    return-void

    .line 15220
    :catch_0
    move-exception v0

    move v1, v2

    .line 15221
    :goto_5
    :try_start_4
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15226
    :catchall_0
    move-exception v0

    :goto_6
    and-int/lit16 v2, v1, 0x100

    if-ne v2, v5, :cond_4

    .line 15227
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    .line 15229
    :cond_4
    and-int/lit16 v1, v1, 0x800

    if-ne v1, v6, :cond_5

    .line 15230
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    .line 15232
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->makeExtensionsImmutable()V

    throw v0

    .line 15222
    :catch_1
    move-exception v0

    move v1, v2

    .line 15223
    :goto_7
    :try_start_5
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15226
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_6

    .line 15222
    :catch_2
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_7

    .line 15220
    :catch_3
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move-object v3, v0

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_2

    :cond_9
    move v0, v1

    move v1, v2

    goto/16 :goto_1

    .line 15130
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4b -> :sswitch_9
        0x6b -> :sswitch_a
        0x80 -> :sswitch_b
        0x8b -> :sswitch_c
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
    .line 15101
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15106
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17380
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    .line 17476
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedSerializedSize:I

    .line 15108
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 15109
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17380
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    .line 17476
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedSerializedSize:I

    .line 15109
    return-void
.end method

.method static synthetic access$19802(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->protocolVersion_:I

    return p1
.end method

.method static synthetic access$19900(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15101
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$19902(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20000(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15101
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20002(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20100(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15101
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->platformId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20102(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->platformId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20200(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15101
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->distributionChannel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20202(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->distributionChannel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20300(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15101
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->clientLocale_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20302(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->clientLocale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20402(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->installInstanceId_:J

    return-wide p1
.end method

.method static synthetic access$20502(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->requestId_:J

    return-wide p1
.end method

.method static synthetic access$20600(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15101
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20602(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20702(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object p1
.end method

.method static synthetic access$20802(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->isActivationEvent_:Z

    return p1
.end method

.method static synthetic access$20900(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 15101
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20902(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21002(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15101
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1

    .prologue
    .line 15113
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 17367
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->protocolVersion_:I

    .line 17368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationName_:Ljava/lang/Object;

    .line 17369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationVersion_:Ljava/lang/Object;

    .line 17370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->platformId_:Ljava/lang/Object;

    .line 17371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->distributionChannel_:Ljava/lang/Object;

    .line 17372
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->clientLocale_:Ljava/lang/Object;

    .line 17373
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->installInstanceId_:J

    .line 17374
    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->requestId_:J

    .line 17375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    .line 17376
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    .line 17377
    iput-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->isActivationEvent_:Z

    .line 17378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    .line 17379
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 17593
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->access$19600()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17596
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17573
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17579
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17543
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17549
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17584
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17590
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17563
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17569
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17553
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17559
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object p0
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17126
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationName_:Ljava/lang/Object;

    .line 17127
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17128
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17136
    :goto_0
    return-object v1

    .line 17130
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17132
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17133
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17134
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17136
    goto :goto_0
.end method

.method public getApplicationNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17141
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationName_:Ljava/lang/Object;

    .line 17142
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17143
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17145
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationName_:Ljava/lang/Object;

    .line 17148
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17159
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationVersion_:Ljava/lang/Object;

    .line 17160
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17161
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17169
    :goto_0
    return-object v1

    .line 17163
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17165
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17166
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17167
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17169
    goto :goto_0
.end method

.method public getApplicationVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17174
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationVersion_:Ljava/lang/Object;

    .line 17175
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17176
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17178
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->applicationVersion_:Ljava/lang/Object;

    .line 17181
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getBackendRequests(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
    .locals 1
    .parameter

    .prologue
    .line 17318
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    return-object p0
.end method

.method public getBackendRequestsCount()I
    .locals 1

    .prologue
    .line 17315
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBackendRequestsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17308
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getBackendRequestsOrBuilder(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequestsOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 17322
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequestsOrBuilder;

    return-object p0
.end method

.method public getBackendRequestsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequestsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17312
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    return-object v0
.end method

.method public getClientLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17258
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->clientLocale_:Ljava/lang/Object;

    .line 17259
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17260
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17268
    :goto_0
    return-object v1

    .line 17262
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17264
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17265
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17266
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->clientLocale_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17268
    goto :goto_0
.end method

.method public getClientLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17273
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->clientLocale_:Ljava/lang/Object;

    .line 17274
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17275
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17277
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->clientLocale_:Ljava/lang/Object;

    .line 17280
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15101
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
    .locals 1

    .prologue
    .line 15117
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;

    return-object v0
.end method

.method public getDistributionChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17225
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->distributionChannel_:Ljava/lang/Object;

    .line 17226
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17227
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17235
    :goto_0
    return-object v1

    .line 17229
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17231
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17232
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17233
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->distributionChannel_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17235
    goto :goto_0
.end method

.method public getDistributionChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17240
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->distributionChannel_:Ljava/lang/Object;

    .line 17241
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17242
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17244
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->distributionChannel_:Ljava/lang/Object;

    .line 17247
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getInstallInstanceId()J
    .locals 2

    .prologue
    .line 17291
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->installInstanceId_:J

    return-wide v0
.end method

.method public getIsActivationEvent()Z
    .locals 1

    .prologue
    .line 17342
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->isActivationEvent_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15247
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17192
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->platformId_:Ljava/lang/Object;

    .line 17193
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 17194
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 17202
    :goto_0
    return-object v1

    .line 17196
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 17198
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17199
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17200
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->platformId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17202
    goto :goto_0
.end method

.method public getPlatformIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 17207
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->platformId_:Ljava/lang/Object;

    .line 17208
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17209
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17211
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->platformId_:Ljava/lang/Object;

    .line 17214
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 17116
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->protocolVersion_:I

    return v0
.end method

.method public getRecordedEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
    .locals 1

    .prologue
    .line 17332
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 17301
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->requestId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 17478
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedSerializedSize:I

    .line 17479
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 17531
    :goto_0
    return v0

    .line 17482
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_c

    .line 17483
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->protocolVersion_:I

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v4

    .line 17486
    :goto_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 17487
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getApplicationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17490
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 17491
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getApplicationVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17494
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_3

    .line 17495
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getPlatformIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17498
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 17499
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDistributionChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17502
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 17503
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getClientLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17506
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 17507
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->installInstanceId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17510
    :cond_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 17511
    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->requestId_:J

    invoke-static {v6, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    move v1, v4

    move v2, v0

    .line 17514
    :goto_2
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 17515
    const/16 v3, 0x9

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 17514
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 17518
    :cond_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_b

    .line 17519
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 17522
    :goto_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 17523
    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->isActivationEvent_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    move v1, v4

    move v2, v0

    .line 17526
    :goto_4
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 17527
    const/16 v3, 0x11

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 17526
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_4

    .line 17530
    :cond_a
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedSerializedSize:I

    move v0, v2

    .line 17531
    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v4

    goto/16 :goto_1
.end method

.method public getUserEvents(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter

    .prologue
    .line 17359
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public getUserEventsCount()I
    .locals 1

    .prologue
    .line 17356
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17349
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    return-object v0
.end method

.method public getUserEventsOrBuilder(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEventsOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 17363
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEventsOrBuilder;

    return-object p0
.end method

.method public getUserEventsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEventsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17353
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    return-object v0
.end method

.method public hasApplicationName()Z
    .locals 2

    .prologue
    .line 17123
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public hasApplicationVersion()Z
    .locals 2

    .prologue
    .line 17156
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public hasClientLocale()Z
    .locals 2

    .prologue
    .line 17255
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public hasDistributionChannel()Z
    .locals 2

    .prologue
    .line 17222
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public hasInstallInstanceId()Z
    .locals 2

    .prologue
    .line 17288
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public hasIsActivationEvent()Z
    .locals 2

    .prologue
    .line 17339
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public hasPlatformId()Z
    .locals 2

    .prologue
    .line 17189
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public hasProtocolVersion()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17113
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecordedEvent()Z
    .locals 2

    .prologue
    .line 17329
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public hasRequestId()Z
    .locals 2

    .prologue
    .line 17298
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17382
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    .line 17383
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 17432
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 17383
    goto :goto_0

    .line 17385
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasProtocolVersion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17386
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17387
    goto :goto_0

    .line 17389
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasApplicationName()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17390
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17391
    goto :goto_0

    .line 17393
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasApplicationVersion()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17394
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17395
    goto :goto_0

    .line 17397
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasPlatformId()Z

    move-result v0

    if-nez v0, :cond_5

    .line 17398
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17399
    goto :goto_0

    .line 17401
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasDistributionChannel()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17402
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17403
    goto :goto_0

    .line 17405
    :cond_6
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasClientLocale()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17406
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17407
    goto :goto_0

    .line 17409
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasRequestId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 17410
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17411
    goto :goto_0

    :cond_8
    move v0, v2

    .line 17413
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getBackendRequestsCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 17414
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getBackendRequests(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_9

    .line 17415
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17416
    goto :goto_0

    .line 17413
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17419
    :cond_a
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->hasRecordedEvent()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 17420
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getRecordedEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    .line 17421
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17422
    goto :goto_0

    :cond_b
    move v0, v2

    .line 17425
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getUserEventsCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 17426
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getUserEvents(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_c

    .line 17427
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v2

    .line 17428
    goto/16 :goto_0

    .line 17425
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 17431
    :cond_d
    iput-byte v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->memoizedIsInitialized:B

    move v0, v3

    .line 17432
    goto/16 :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15101
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 17594
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15101
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;
    .locals 1

    .prologue
    .line 17598
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$Builder;

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
    .line 17537
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 17437
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getSerializedSize()I

    .line 17438
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 17439
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->protocolVersion_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17441
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 17442
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getApplicationNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17444
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 17445
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getApplicationVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17447
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 17448
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getPlatformIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17450
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 17451
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getDistributionChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17453
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 17454
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->getClientLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17456
    :cond_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 17457
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->installInstanceId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17459
    :cond_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 17460
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->requestId_:J

    invoke-virtual {p1, v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_7
    move v1, v3

    .line 17462
    :goto_0
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 17463
    const/16 v2, 0x9

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->backendRequests_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 17462
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 17465
    :cond_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    .line 17466
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->recordedEvent_:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 17468
    :cond_9
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    .line 17469
    const/16 v0, 0x10

    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->isActivationEvent_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_a
    move v1, v3

    .line 17471
    :goto_1
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 17472
    const/16 v2, 0x11

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;->userEvents_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 17471
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 17474
    :cond_b
    return-void
.end method
