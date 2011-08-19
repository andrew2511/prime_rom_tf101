.class public final Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$PlacesEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlacesEventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;,
        Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;,
        Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;,
        Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;,
        Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;,
        Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final CATEGORY_FIELD_NUMBER:I = 0x10

.field public static final CLIENT_TIMESTAMP_MS_SINCE_EPOCH_FIELD_NUMBER:I = 0xd

.field public static final CONNECTION_TYPE_FIELD_NUMBER:I = 0xf

.field public static final CURRENT_VIEW_FIELD_NUMBER:I = 0x2

.field public static final DURATION_MS_FIELD_NUMBER:I = 0x6

.field public static final ERROR_FIELD_NUMBER:I = 0x5

.field public static final HAS_JUSTIFICATION_FIELD_NUMBER:I = 0x8

.field public static final HAS_NEGATIVE_JUSTIFICATION_FIELD_NUMBER:I = 0x11

.field public static final HAS_POSITIVE_JUSTIFICATION_FIELD_NUMBER:I = 0x12

.field public static final IS_LOGGED_IN_FIELD_NUMBER:I = 0x14

.field public static final LANGUAGE_FIELD_NUMBER:I = 0xe

.field public static final LAT_SPAN_DEGREES_DELTA_E6_FIELD_NUMBER:I = 0xb

.field public static final LOCATION_ACCURACY_METERS_FIELD_NUMBER:I = 0x9

.field public static final LOCATION_DELTA_METERS_FIELD_NUMBER:I = 0xa

.field public static final LONG_SPAN_DEGREES_DELTA_E6_FIELD_NUMBER:I = 0xc

.field public static final NEXT_VIEW_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_FIELD_NUMBER:I = 0x4

.field public static final RESULT_POSITION_FIELD_NUMBER:I = 0x7

.field public static final REVIEW_SOURCE_FIELD_NUMBER:I = 0x13

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

.field private bitField0_:I

.field private category_:Ljava/lang/Object;

.field private clientTimestampMsSinceEpoch_:J

.field private connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

.field private currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

.field private durationMs_:I

.field private error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

.field private hasJustification_:Z

.field private hasNegativeJustification_:Z

.field private hasPositiveJustification_:Z

.field private isLoggedIn_:Z

.field private language_:Ljava/lang/Object;

.field private latSpanDegreesDeltaE6_:I

.field private locationAccuracyMeters_:I

.field private locationDeltaMeters_:I

.field private longSpanDegreesDeltaE6_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

.field private rating_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
            ">;"
        }
    .end annotation
.end field

.field private resultPosition_:I

.field private reviewSource_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13226
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 15029
    new-instance v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 15030
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->initFields()V

    .line 15031
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/16 v5, 0x8

    .line 13050
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13963
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedIsInitialized:B

    .line 14037
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedSerializedSize:I

    .line 13051
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->initFields()V

    move v0, v1

    .line 13055
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 13056
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 13057
    sparse-switch v2, :sswitch_data_0

    .line 13062
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v6

    .line 13064
    goto :goto_0

    :sswitch_0
    move v0, v6

    .line 13060
    goto :goto_0

    .line 13069
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 13070
    invoke-static {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    move-result-object v2

    .line 13071
    if-eqz v2, :cond_0

    .line 13072
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13073
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 13214
    :catch_0
    move-exception v0

    .line 13215
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13220
    :catchall_0
    move-exception v0

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_1

    .line 13221
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    .line 13223
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->makeExtensionsImmutable()V

    throw v0

    .line 13078
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 13079
    invoke-static {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    move-result-object v2

    .line 13080
    if-eqz v2, :cond_0

    .line 13081
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13082
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 13216
    :catch_1
    move-exception v0

    .line 13217
    :try_start_3
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13087
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 13088
    invoke-static {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    move-result-object v2

    .line 13089
    if-eqz v2, :cond_0

    .line 13090
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13091
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    goto :goto_0

    .line 13096
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 13097
    invoke-static {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    move-result-object v2

    .line 13098
    if-eqz v2, :cond_0

    .line 13099
    and-int/lit8 v3, v1, 0x8

    if-eq v3, v5, :cond_2

    .line 13100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    .line 13101
    or-int/lit8 v1, v1, 0x8

    .line 13103
    :cond_2
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13108
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 13109
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v2

    .line 13110
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_5

    .line 13111
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 13112
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    move-result-object v3

    .line 13113
    if-eqz v3, :cond_3

    .line 13114
    and-int/lit8 v4, v1, 0x8

    if-eq v4, v5, :cond_4

    .line 13115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    .line 13116
    or-int/lit8 v1, v1, 0x8

    .line 13118
    :cond_4
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13121
    :cond_5
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 13125
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 13126
    invoke-static {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    move-result-object v2

    .line 13127
    if-eqz v2, :cond_0

    .line 13128
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13129
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    goto/16 :goto_0

    .line 13134
    :sswitch_7
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13135
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->durationMs_:I

    goto/16 :goto_0

    .line 13139
    :sswitch_8
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13140
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->resultPosition_:I

    goto/16 :goto_0

    .line 13144
    :sswitch_9
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13145
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasJustification_:Z

    goto/16 :goto_0

    .line 13149
    :sswitch_a
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13150
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationAccuracyMeters_:I

    goto/16 :goto_0

    .line 13154
    :sswitch_b
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13155
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationDeltaMeters_:I

    goto/16 :goto_0

    .line 13159
    :sswitch_c
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13160
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->latSpanDegreesDeltaE6_:I

    goto/16 :goto_0

    .line 13164
    :sswitch_d
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13165
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->longSpanDegreesDeltaE6_:I

    goto/16 :goto_0

    .line 13169
    :sswitch_e
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13170
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->clientTimestampMsSinceEpoch_:J

    goto/16 :goto_0

    .line 13174
    :sswitch_f
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13175
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->language_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 13179
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 13180
    invoke-static {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    move-result-object v2

    .line 13181
    if-eqz v2, :cond_0

    .line 13182
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13183
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    goto/16 :goto_0

    .line 13188
    :sswitch_11
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13189
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->category_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 13193
    :sswitch_12
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13194
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasNegativeJustification_:Z

    goto/16 :goto_0

    .line 13198
    :sswitch_13
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13199
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasPositiveJustification_:Z

    goto/16 :goto_0

    .line 13203
    :sswitch_14
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13204
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->reviewSource_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 13208
    :sswitch_15
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v3, 0x4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    .line 13209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->isLoggedIn_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 13220
    :cond_6
    and-int/lit8 v0, v1, 0x8

    if-ne v0, v5, :cond_7

    .line 13221
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    .line 13223
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->makeExtensionsImmutable()V

    .line 13225
    return-void

    .line 13057
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x30 -> :sswitch_7
        0x38 -> :sswitch_8
        0x40 -> :sswitch_9
        0x48 -> :sswitch_a
        0x50 -> :sswitch_b
        0x58 -> :sswitch_c
        0x60 -> :sswitch_d
        0x68 -> :sswitch_e
        0x72 -> :sswitch_f
        0x78 -> :sswitch_10
        0x82 -> :sswitch_11
        0x88 -> :sswitch_12
        0x90 -> :sswitch_13
        0x9a -> :sswitch_14
        0xa0 -> :sswitch_15
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
    .line 13028
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13033
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13963
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedIsInitialized:B

    .line 14037
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedSerializedSize:I

    .line 13035
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13036
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13963
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedIsInitialized:B

    .line 14037
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedSerializedSize:I

    .line 13036
    return-void
.end method

.method static synthetic access$14802(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    return-object p1
.end method

.method static synthetic access$14902(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    return-object p1
.end method

.method static synthetic access$15002(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    return-object p1
.end method

.method static synthetic access$15100(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 13028
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15102(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15202(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->durationMs_:I

    return p1
.end method

.method static synthetic access$15402(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->resultPosition_:I

    return p1
.end method

.method static synthetic access$15502(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasJustification_:Z

    return p1
.end method

.method static synthetic access$15602(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationAccuracyMeters_:I

    return p1
.end method

.method static synthetic access$15702(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationDeltaMeters_:I

    return p1
.end method

.method static synthetic access$15802(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->latSpanDegreesDeltaE6_:I

    return p1
.end method

.method static synthetic access$15902(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->longSpanDegreesDeltaE6_:I

    return p1
.end method

.method static synthetic access$16002(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->clientTimestampMsSinceEpoch_:J

    return-wide p1
.end method

.method static synthetic access$16100(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13028
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16102(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16202(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    return-object p1
.end method

.method static synthetic access$16300(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13028
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->category_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16302(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->category_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16402(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasNegativeJustification_:Z

    return p1
.end method

.method static synthetic access$16502(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasPositiveJustification_:Z

    return p1
.end method

.method static synthetic access$16600(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13028
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->reviewSource_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16602(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->reviewSource_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16702(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->isLoggedIn_:Z

    return p1
.end method

.method static synthetic access$16802(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13028
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1

    .prologue
    .line 13040
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13942
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;->APP_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    .line 13943
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13944
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->FIRST_LAUNCH:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    .line 13945
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    .line 13946
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->NO_RESULTS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    .line 13947
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->durationMs_:I

    .line 13948
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->resultPosition_:I

    .line 13949
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasJustification_:Z

    .line 13950
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationAccuracyMeters_:I

    .line 13951
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationDeltaMeters_:I

    .line 13952
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->latSpanDegreesDeltaE6_:I

    .line 13953
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->longSpanDegreesDeltaE6_:I

    .line 13954
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->clientTimestampMsSinceEpoch_:J

    .line 13955
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->language_:Ljava/lang/Object;

    .line 13956
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->GPRS:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    .line 13957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->category_:Ljava/lang/Object;

    .line 13958
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasNegativeJustification_:Z

    .line 13959
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasPositiveJustification_:Z

    .line 13960
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->reviewSource_:Ljava/lang/Object;

    .line 13961
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->isLoggedIn_:Z

    .line 13962
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14191
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->access$14600()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14194
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14171
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14177
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14141
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14147
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14182
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14188
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14161
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14167
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14151
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14157
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;
    .locals 1

    .prologue
    .line 13676
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13852
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->category_:Ljava/lang/Object;

    .line 13853
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13854
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13862
    :goto_0
    return-object v1

    .line 13856
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 13858
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13859
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13860
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->category_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13862
    goto :goto_0
.end method

.method public getCategoryBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 13867
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->category_:Ljava/lang/Object;

    .line 13868
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13869
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13871
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->category_:Ljava/lang/Object;

    .line 13874
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getClientTimestampMsSinceEpoch()J
    .locals 2

    .prologue
    .line 13799
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->clientTimestampMsSinceEpoch_:J

    return-wide v0
.end method

.method public getConnectionType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;
    .locals 1

    .prologue
    .line 13842
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    return-object v0
.end method

.method public getCurrentView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 1

    .prologue
    .line 13686
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13028
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1

    .prologue
    .line 13044
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 13729
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->durationMs_:I

    return v0
.end method

.method public getError()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;
    .locals 1

    .prologue
    .line 13719
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    return-object v0
.end method

.method public getHasJustification()Z
    .locals 1

    .prologue
    .line 13749
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasJustification_:Z

    return v0
.end method

.method public getHasNegativeJustification()Z
    .locals 1

    .prologue
    .line 13885
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasNegativeJustification_:Z

    return v0
.end method

.method public getHasPositiveJustification()Z
    .locals 1

    .prologue
    .line 13895
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasPositiveJustification_:Z

    return v0
.end method

.method public getIsLoggedIn()Z
    .locals 1

    .prologue
    .line 13938
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->isLoggedIn_:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13809
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->language_:Ljava/lang/Object;

    .line 13810
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13811
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13819
    :goto_0
    return-object v1

    .line 13813
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 13815
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13816
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13817
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->language_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13819
    goto :goto_0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 13824
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->language_:Ljava/lang/Object;

    .line 13825
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13826
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13828
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->language_:Ljava/lang/Object;

    .line 13831
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLatSpanDegreesDeltaE6()I
    .locals 1

    .prologue
    .line 13779
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->latSpanDegreesDeltaE6_:I

    return v0
.end method

.method public getLocationAccuracyMeters()I
    .locals 1

    .prologue
    .line 13759
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationAccuracyMeters_:I

    return v0
.end method

.method public getLocationDeltaMeters()I
    .locals 1

    .prologue
    .line 13769
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationDeltaMeters_:I

    return v0
.end method

.method public getLongSpanDegreesDeltaE6()I
    .locals 1

    .prologue
    .line 13789
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->longSpanDegreesDeltaE6_:I

    return v0
.end method

.method public getNextView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
    .locals 1

    .prologue
    .line 13696
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13238
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRating(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;
    .locals 1
    .parameter

    .prologue
    .line 13709
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    return-object p0
.end method

.method public getRatingCount()I
    .locals 1

    .prologue
    .line 13706
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRatingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13703
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    return-object v0
.end method

.method public getResultPosition()I
    .locals 1

    .prologue
    .line 13739
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->resultPosition_:I

    return v0
.end method

.method public getReviewSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13905
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->reviewSource_:Ljava/lang/Object;

    .line 13906
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13907
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13915
    :goto_0
    return-object v1

    .line 13909
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 13911
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13912
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13913
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->reviewSource_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13915
    goto :goto_0
.end method

.method public getReviewSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 13920
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->reviewSource_:Ljava/lang/Object;

    .line 13921
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13922
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13924
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->reviewSource_:Ljava/lang/Object;

    .line 13927
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 14039
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedSerializedSize:I

    .line 14040
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 14129
    :goto_0
    return v0

    .line 14043
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_14

    .line 14044
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;->getNumber()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 14047
    :goto_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 14048
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->getNumber()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14051
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 14052
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_2
    move v2, v3

    .line 14057
    :goto_3
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 14058
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v3

    .line 14057
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    .line 14061
    :cond_2
    add-int v0, v1, v3

    .line 14062
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 14064
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 14065
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14068
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_4

    .line 14069
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->durationMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14072
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 14073
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->resultPosition_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14076
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 14077
    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasJustification_:Z

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14080
    :cond_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 14081
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationAccuracyMeters_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14084
    :cond_7
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 14085
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationDeltaMeters_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14088
    :cond_8
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 14089
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->latSpanDegreesDeltaE6_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14092
    :cond_9
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_a

    .line 14093
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->longSpanDegreesDeltaE6_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14096
    :cond_a
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_b

    .line 14097
    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->clientTimestampMsSinceEpoch_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14100
    :cond_b
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_c

    .line 14101
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14104
    :cond_c
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_d

    .line 14105
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14108
    :cond_d
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_e

    .line 14109
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getCategoryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14112
    :cond_e
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_f

    .line 14113
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasNegativeJustification_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14116
    :cond_f
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 14117
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasPositiveJustification_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14120
    :cond_10
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 14121
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getReviewSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14124
    :cond_11
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 14125
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->isLoggedIn_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14128
    :cond_12
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedSerializedSize:I

    goto/16 :goto_0

    :cond_13
    move v1, v0

    goto/16 :goto_2

    :cond_14
    move v0, v3

    goto/16 :goto_1
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 13673
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategory()Z
    .locals 2

    .prologue
    .line 13849
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientTimestampMsSinceEpoch()Z
    .locals 2

    .prologue
    .line 13796
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasConnectionType()Z
    .locals 2

    .prologue
    .line 13839
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrentView()Z
    .locals 2

    .prologue
    .line 13683
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 13726
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasError()Z
    .locals 2

    .prologue
    .line 13716
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasHasJustification()Z
    .locals 2

    .prologue
    .line 13746
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasHasNegativeJustification()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 13882
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHasPositiveJustification()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 13892
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsLoggedIn()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 13935
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguage()Z
    .locals 2

    .prologue
    .line 13806
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasLatSpanDegreesDeltaE6()Z
    .locals 2

    .prologue
    .line 13776
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasLocationAccuracyMeters()Z
    .locals 2

    .prologue
    .line 13756
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasLocationDeltaMeters()Z
    .locals 2

    .prologue
    .line 13766
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasLongSpanDegreesDeltaE6()Z
    .locals 2

    .prologue
    .line 13786
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasNextView()Z
    .locals 2

    .prologue
    .line 13693
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasResultPosition()Z
    .locals 2

    .prologue
    .line 13736
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

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

.method public hasReviewSource()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 13902
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/2addr v0, v1

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

    .line 13965
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedIsInitialized:B

    .line 13966
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 13969
    :goto_0
    return v0

    .line 13966
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 13968
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->memoizedIsInitialized:B

    move v0, v2

    .line 13969
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13028
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14192
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13028
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;
    .locals 1

    .prologue
    .line 14196
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

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
    .line 14135
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
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 13974
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getSerializedSize()I

    .line 13975
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 13976
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13978
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 13979
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->currentView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13981
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 13982
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->nextView_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13984
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 13985
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->rating_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13984
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 13987
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_4

    .line 13988
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->error_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13990
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_5

    .line 13991
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->durationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13993
    :cond_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 13994
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->resultPosition_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13996
    :cond_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    .line 13997
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasJustification_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13999
    :cond_7
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    .line 14000
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationAccuracyMeters_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14002
    :cond_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    .line 14003
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->locationDeltaMeters_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14005
    :cond_9
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    .line 14006
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->latSpanDegreesDeltaE6_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14008
    :cond_a
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_b

    .line 14009
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->longSpanDegreesDeltaE6_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14011
    :cond_b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_c

    .line 14012
    const/16 v0, 0xd

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->clientTimestampMsSinceEpoch_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14014
    :cond_c
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 14015
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14017
    :cond_d
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_e

    .line 14018
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->connectionType_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 14020
    :cond_e
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_f

    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getCategoryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14023
    :cond_f
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_10

    .line 14024
    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasNegativeJustification_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14026
    :cond_10
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 14027
    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->hasPositiveJustification_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14029
    :cond_11
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 14030
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getReviewSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14032
    :cond_12
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 14033
    const/16 v0, 0x14

    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->isLoggedIn_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14035
    :cond_13
    return-void
.end method
