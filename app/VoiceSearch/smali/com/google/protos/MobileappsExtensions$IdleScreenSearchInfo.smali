.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleScreenSearchInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final ACTION_PROPERTIES_FIELD_NUMBER:I = 0x2d

.field public static final ACTION_TRIGGER_FIELD_NUMBER:I = 0x25

.field public static final BANDWIDTH_FIELD_NUMBER:I = 0x1a

.field public static final CELLID_FIELD_NUMBER:I = 0x7

.field public static final CURRENT_MCC_MNC_FIELD_NUMBER:I = 0x13

.field public static final DEVICE_ORIENTATION_FIELD_NUMBER:I = 0x22

.field public static final DROPLISTITEMS_FIELD_NUMBER:I = 0xc

.field public static final DROPLIST_CURSOR_FIELD_NUMBER:I = 0x4

.field public static final DROPLIST_TEXT_FIELD_NUMBER:I = 0x6

.field public static final DROPLIST_TYPE_FIELD_NUMBER:I = 0x5

.field public static final DURATION_MS_FIELD_NUMBER:I = 0xa

.field public static final FEATURE_TYPES_FIELD_NUMBER:I = 0x1e

.field public static final GAIA_BROWSER_USAGE_FIELD_NUMBER:I = 0x24

.field public static final HOME_MCC_MNC_FIELD_NUMBER:I = 0x12

.field public static final LATENCIES_FIELD_NUMBER:I = 0x26

.field public static final LATENCY_FACTOR_FIELD_NUMBER:I = 0x1c

.field public static final LATENCY_TIMEOUT_FIELD_NUMBER:I = 0x1d

.field public static final LATENCY_TYPE_FIELD_NUMBER:I = 0x1b

.field public static final LATITUDE_FIELD_NUMBER:I = 0x8

.field public static final LOCATION_WAS_AVAILABLE_FIELD_NUMBER:I = 0xb

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x9

.field public static final NETWORK_PROTOCOL_FIELD_NUMBER:I = 0x2e

.field public static final NEW_COUNTRY_CODE_FIELD_NUMBER:I = 0x18

.field public static final NUM_GAIA_ACCOUNTS_FIELD_NUMBER:I = 0x23

.field public static final OLD_COUNTRY_CODE_FIELD_NUMBER:I = 0x19

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_TOP_DISPLAY_FIELD_NUMBER:I = 0x1f

.field public static final RIM_VENDOR_ID_FIELD_NUMBER:I = 0x14

.field public static final SAFE_SEARCH_FILTER_FIELD_NUMBER:I = 0x11

.field public static final SIGNAL_STRENGTH_FIELD_NUMBER:I = 0x17

.field public static final SUGGESTION_SOURCE_FIELD_NUMBER:I = 0x20

.field public static final SUGGESTION_SOURCE_INDEX_FIELD_NUMBER:I = 0x21

.field public static final TCP_APN_SETTING_FIELD_NUMBER:I = 0x15

.field public static final TEXT_FIELD_NUMBER:I = 0x3

.field public static final TEXT_MODIFICATION_FIELD_NUMBER:I = 0x2f

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0xe

.field public static final USER_STUDY_ID_FIELD_NUMBER:I = 0x1

.field public static final UTTERANCE_ID_FIELD_NUMBER:I = 0xf

.field public static final VOICE_SEARCH_ACTION_FIELD_NUMBER:I = 0x2b

.field public static final VOICE_SEARCH_ACTION_SLOT_FIELD_NUMBER:I = 0x2c

.field public static final VOICE_SEARCH_BUTTON_FIELD_NUMBER:I = 0x16

.field public static final VOICE_SEARCH_CONTACT_ADDRESS_TYPE_FIELD_NUMBER:I = 0x30

.field public static final VOICE_SEARCH_LANGUAGE_FIELD_NUMBER:I = 0x10

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;


# instance fields
.field private actionProperties_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;",
            ">;"
        }
    .end annotation
.end field

.field private actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field private action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

.field private bandwidth_:I

.field private bitField0_:I

.field private bitField1_:I

.field private cellid_:Ljava/lang/Object;

.field private currentMccMnc_:I

.field private deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

.field private dropListItems_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
            ">;"
        }
    .end annotation
.end field

.field private droplistCursor_:I

.field private droplistText_:Ljava/lang/Object;

.field private droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

.field private durationMs_:I

.field private featureTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;",
            ">;"
        }
    .end annotation
.end field

.field private gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field private homeMccMnc_:I

.field private latencies_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
            ">;"
        }
    .end annotation
.end field

.field private latencyFactor_:I

.field private latencyTimeout_:Z

.field private latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field private latitude_:I

.field private locationWasAvailable_:Z

.field private longitude_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

.field private newCountryCode_:Ljava/lang/Object;

.field private numGaiaAccounts_:I

.field private oldCountryCode_:Ljava/lang/Object;

.field private phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

.field private rimVendorId_:I

.field private safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

.field private signalStrength_:I

.field private suggestionSourceIndex_:I

.field private suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

.field private tcpApnSetting_:Ljava/lang/Object;

.field private textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

.field private text_:Ljava/lang/Object;

.field private timestamp_:J

.field private userStudyId_:Ljava/lang/Object;

.field private utteranceId_:Ljava/lang/Object;

.field private voiceSearchActionSlot_:Ljava/lang/Object;

.field private voiceSearchAction_:Ljava/lang/Object;

.field private voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

.field private voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

.field private voiceSearchLanguage_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3071
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8432
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 8433
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->initFields()V

    .line 8434
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x800

    const/16 v8, 0x10

    const/4 v1, 0x0

    const/16 v7, 0x80

    const/high16 v6, 0x1000

    .line 2702
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6001
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    .line 6144
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    .line 2703
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->initFields()V

    move v2, v1

    move v3, v1

    .line 2708
    :goto_0
    if-nez v1, :cond_d

    .line 2709
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2710
    sparse-switch v0, :sswitch_data_0

    .line 2715
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2717
    const/4 v0, 0x1

    move v1, v2

    move v2, v3

    :goto_1
    move v3, v2

    move v2, v1

    move v1, v0

    .line 3049
    goto :goto_0

    .line 2712
    :sswitch_0
    const/4 v0, 0x1

    move v1, v2

    move v2, v3

    .line 2713
    goto :goto_1

    .line 2722
    :sswitch_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2723
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2724
    goto :goto_1

    .line 2727
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2728
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    move-result-object v0

    .line 2729
    if-eqz v0, :cond_12

    .line 2730
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2731
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    .line 2736
    :sswitch_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2737
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2738
    goto :goto_1

    .line 2741
    :sswitch_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2742
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2743
    goto :goto_1

    .line 2746
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2747
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move-result-object v0

    .line 2748
    if-eqz v0, :cond_12

    .line 2749
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2750
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    .line 2755
    :sswitch_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2757
    goto :goto_1

    .line 2760
    :sswitch_7
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2761
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2762
    goto/16 :goto_1

    .line 2765
    :sswitch_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2766
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2767
    goto/16 :goto_1

    .line 2770
    :sswitch_9
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2772
    goto/16 :goto_1

    .line 2775
    :sswitch_a
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2776
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2777
    goto/16 :goto_1

    .line 2780
    :sswitch_b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2781
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2782
    goto/16 :goto_1

    .line 2785
    :sswitch_c
    and-int/lit16 v0, v3, 0x800

    if-eq v0, v9, :cond_15

    .line 2786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2787
    or-int/lit16 v0, v3, 0x800

    .line 2789
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    const/16 v4, 0xc

    sget-object v5, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 2791
    goto/16 :goto_1

    .line 2794
    :sswitch_d
    :try_start_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2795
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2796
    goto/16 :goto_1

    .line 2799
    :sswitch_e
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2800
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2801
    goto/16 :goto_1

    .line 2804
    :sswitch_f
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2805
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2806
    goto/16 :goto_1

    .line 2809
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2810
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    move-result-object v0

    .line 2811
    if-eqz v0, :cond_12

    .line 2812
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2813
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2818
    :sswitch_11
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const v4, 0x8000

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2819
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2820
    goto/16 :goto_1

    .line 2823
    :sswitch_12
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x1

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2824
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2825
    goto/16 :goto_1

    .line 2828
    :sswitch_13
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x2

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2829
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2830
    goto/16 :goto_1

    .line 2833
    :sswitch_14
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x4

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2834
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2835
    goto/16 :goto_1

    .line 2838
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2839
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    move-result-object v0

    .line 2840
    if-eqz v0, :cond_12

    .line 2841
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x8

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2842
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2847
    :sswitch_16
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x10

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2848
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2849
    goto/16 :goto_1

    .line 2852
    :sswitch_17
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x20

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2853
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2854
    goto/16 :goto_1

    .line 2857
    :sswitch_18
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x40

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2858
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2859
    goto/16 :goto_1

    .line 2862
    :sswitch_19
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x80

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2863
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2864
    goto/16 :goto_1

    .line 2867
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2868
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move-result-object v0

    .line 2869
    if-eqz v0, :cond_12

    .line 2870
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x100

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2871
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2876
    :sswitch_1b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x200

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2877
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2878
    goto/16 :goto_1

    .line 2881
    :sswitch_1c
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x400

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2882
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2883
    goto/16 :goto_1

    .line 2886
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2887
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    move-result-object v0

    .line 2888
    if-eqz v0, :cond_12

    .line 2889
    and-int v4, v3, v6

    if-eq v4, v6, :cond_0

    .line 2890
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 2891
    or-int/2addr v3, v6

    .line 2893
    :cond_0
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2898
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 2899
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 2900
    :cond_1
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_7

    .line 2901
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 2902
    invoke-static {v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    move-result-object v4

    .line 2903
    if-eqz v4, :cond_1

    .line 2904
    and-int v5, v3, v6

    if-eq v5, v6, :cond_2

    .line 2905
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 2906
    or-int/2addr v3, v6

    .line 2908
    :cond_2
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 3050
    :catch_0
    move-exception v0

    move v1, v2

    move v2, v3

    .line 3051
    :goto_4
    :try_start_3
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3056
    :catchall_0
    move-exception v0

    :goto_5
    and-int/lit16 v3, v2, 0x800

    if-ne v3, v9, :cond_3

    .line 3057
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    .line 3059
    :cond_3
    and-int/2addr v2, v6

    if-ne v2, v6, :cond_4

    .line 3060
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 3062
    :cond_4
    and-int/lit8 v2, v1, 0x10

    if-ne v2, v8, :cond_5

    .line 3063
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    .line 3065
    :cond_5
    and-int/lit16 v1, v1, 0x80

    if-ne v1, v7, :cond_6

    .line 3066
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 3068
    :cond_6
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->makeExtensionsImmutable()V

    throw v0

    .line 2911
    :cond_7
    :try_start_4
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2912
    goto/16 :goto_1

    .line 2915
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2916
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    move-result-object v0

    .line 2917
    if-eqz v0, :cond_12

    .line 2918
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x800

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2919
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2924
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2925
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    move-result-object v0

    .line 2926
    if-eqz v0, :cond_12

    .line 2927
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2928
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2933
    :sswitch_21
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, 0x2000

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2934
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2935
    goto/16 :goto_1

    .line 2938
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2939
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    move-result-object v0

    .line 2940
    if-eqz v0, :cond_12

    .line 2941
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x4000

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2942
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2947
    :sswitch_23
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v4, -0x8000

    or-int/2addr v0, v4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2948
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2949
    goto/16 :goto_1

    .line 2952
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2953
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    move-result-object v0

    .line 2954
    if-eqz v0, :cond_12

    .line 2955
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 2956
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2961
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2962
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    move-result-object v0

    .line 2963
    if-eqz v0, :cond_12

    .line 2964
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 2965
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 2970
    :sswitch_26
    and-int/lit8 v0, v2, 0x10

    if-eq v0, v8, :cond_14

    .line 2971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2972
    or-int/lit8 v0, v2, 0x10

    .line 2974
    :goto_6
    :try_start_5
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    const/16 v4, 0x26

    sget-object v5, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move v2, v3

    move v10, v0

    move v0, v1

    move v1, v10

    .line 2976
    goto/16 :goto_1

    .line 2979
    :sswitch_27
    :try_start_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 2980
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2981
    goto/16 :goto_1

    .line 2984
    :sswitch_28
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 2985
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    move v2, v3

    .line 2986
    goto/16 :goto_1

    .line 2989
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2990
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    move-result-object v0

    .line 2991
    if-eqz v0, :cond_12

    .line 2992
    and-int/lit16 v4, v2, 0x80

    if-eq v4, v7, :cond_8

    .line 2993
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 2994
    or-int/lit16 v2, v2, 0x80

    .line 2996
    :cond_8
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 3001
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 3002
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 3003
    :cond_9
    :goto_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_b

    .line 3004
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 3005
    invoke-static {v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    move-result-object v4

    .line 3006
    if-eqz v4, :cond_9

    .line 3007
    and-int/lit16 v5, v2, 0x80

    if-eq v5, v7, :cond_a

    .line 3008
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 3009
    or-int/lit16 v2, v2, 0x80

    .line 3011
    :cond_a
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    .line 3052
    :catch_1
    move-exception v0

    move v1, v2

    move v2, v3

    .line 3053
    :goto_8
    :try_start_7
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3014
    :cond_b
    :try_start_8
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    move v0, v1

    move v1, v2

    move v2, v3

    .line 3015
    goto/16 :goto_1

    .line 3018
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3019
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    move-result-object v0

    .line 3020
    if-eqz v0, :cond_12

    .line 3021
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 3022
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 3027
    :sswitch_2c
    const/4 v0, 0x0

    .line 3028
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_13

    .line 3029
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification;->toBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    move-object v4, v0

    .line 3031
    :goto_9
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$TextModification;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 3032
    if-eqz v4, :cond_c

    .line 3033
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-virtual {v4, v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    .line 3034
    invoke-virtual {v4}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 3036
    :cond_c
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    move v0, v1

    move v1, v2

    move v2, v3

    .line 3037
    goto/16 :goto_1

    .line 3040
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3041
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    move-result-object v0

    .line 3042
    if-eqz v0, :cond_12

    .line 3043
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 3044
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    .line 3056
    :cond_d
    and-int/lit16 v0, v3, 0x800

    if-ne v0, v9, :cond_e

    .line 3057
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    .line 3059
    :cond_e
    and-int v0, v3, v6

    if-ne v0, v6, :cond_f

    .line 3060
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 3062
    :cond_f
    and-int/lit8 v0, v2, 0x10

    if-ne v0, v8, :cond_10

    .line 3063
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    .line 3065
    :cond_10
    and-int/lit16 v0, v2, 0x80

    if-ne v0, v7, :cond_11

    .line 3066
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 3068
    :cond_11
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->makeExtensionsImmutable()V

    .line 3070
    return-void

    .line 3056
    :catchall_1
    move-exception v0

    move v1, v2

    move v2, v3

    goto/16 :goto_5

    :catchall_2
    move-exception v1

    move-object v10, v1

    move v1, v2

    move v2, v0

    move-object v0, v10

    goto/16 :goto_5

    :catchall_3
    move-exception v1

    move v2, v3

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_5

    .line 3052
    :catch_2
    move-exception v1

    move-object v10, v1

    move v1, v2

    move v2, v0

    move-object v0, v10

    goto/16 :goto_8

    :catch_3
    move-exception v1

    move v2, v3

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_8

    .line 3050
    :catch_4
    move-exception v1

    move-object v10, v1

    move v1, v2

    move v2, v0

    move-object v0, v10

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move v2, v3

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_4

    :cond_12
    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    :cond_13
    move-object v4, v0

    goto/16 :goto_9

    :cond_14
    move v0, v2

    goto/16 :goto_6

    :cond_15
    move v0, v3

    goto/16 :goto_2

    .line 2710
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x63 -> :sswitch_c
        0x70 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb0 -> :sswitch_15
        0xb8 -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xd0 -> :sswitch_19
        0xd8 -> :sswitch_1a
        0xe0 -> :sswitch_1b
        0xe8 -> :sswitch_1c
        0xf0 -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x108 -> :sswitch_21
        0x110 -> :sswitch_22
        0x118 -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x133 -> :sswitch_26
        0x15a -> :sswitch_27
        0x162 -> :sswitch_28
        0x168 -> :sswitch_29
        0x16a -> :sswitch_2a
        0x170 -> :sswitch_2b
        0x17a -> :sswitch_2c
        0x180 -> :sswitch_2d
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
    .line 2680
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2685
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6001
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    .line 6144
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    .line 2687
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2688
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6001
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    .line 6144
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    .line 2688
    return-void
.end method

.method static synthetic access$4900(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    return p1
.end method

.method static synthetic access$5302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    return p1
.end method

.method static synthetic access$5702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    return p1
.end method

.method static synthetic access$5802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    return p1
.end method

.method static synthetic access$5902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    return p1
.end method

.method static synthetic access$6602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    return p1
.end method

.method static synthetic access$6702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    return p1
.end method

.method static synthetic access$6800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    return p1
.end method

.method static synthetic access$7100(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    return p1
.end method

.method static synthetic access$7402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    return p1
.end method

.method static synthetic access$7602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    return p1
.end method

.method static synthetic access$8102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    return p1
.end method

.method static synthetic access$8302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$9302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1

    .prologue
    .line 2692
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    .line 5958
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->KEYSTROKE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 5959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    .line 5960
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    .line 5961
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 5962
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    .line 5963
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    .line 5964
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    .line 5965
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    .line 5966
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    .line 5967
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    .line 5968
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    .line 5969
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    .line 5970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    .line 5971
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 5972
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 5973
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    .line 5974
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    .line 5975
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    .line 5976
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    .line 5977
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 5978
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    .line 5979
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    .line 5980
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    .line 5981
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    .line 5982
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5983
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    .line 5984
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    .line 5985
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 5986
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 5987
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 5988
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    .line 5989
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 5990
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    .line 5991
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 5992
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 5993
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    .line 5994
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    .line 5995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 5996
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 5997
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 5998
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 5999
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 6000
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6395
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->access$4700()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6398
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6375
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6381
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6345
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6351
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6386
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6392
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6365
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6371
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6355
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6361
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    .locals 1

    .prologue
    .line 5285
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    return-object v0
.end method

.method public getActionProperties(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    .locals 1
    .parameter

    .prologue
    .line 5923
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    return-object p0
.end method

.method public getActionPropertiesCount()I
    .locals 1

    .prologue
    .line 5920
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5917
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    return-object v0
.end method

.method public getActionTrigger()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    .locals 1

    .prologue
    .line 5823
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    return-object v0
.end method

.method public getBandwidth()I
    .locals 1

    .prologue
    .line 5710
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    return v0
.end method

.method public getCellid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5381
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    .line 5382
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5383
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5391
    :goto_0
    return-object v1

    .line 5385
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5387
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5388
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5389
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5391
    goto :goto_0
.end method

.method public getCellidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5396
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    .line 5397
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5398
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5400
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    .line 5403
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCurrentMccMnc()I
    .locals 1

    .prologue
    .line 5571
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1

    .prologue
    .line 2696
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object v0
.end method

.method public getDeviceOrientation()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    .locals 1

    .prologue
    .line 5793
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    return-object v0
.end method

.method public getDropListItems(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter

    .prologue
    .line 5461
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public getDropListItemsCount()I
    .locals 1

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropListItemsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5451
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    return-object v0
.end method

.method public getDropListItemsOrBuilder(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 5465
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;

    return-object p0
.end method

.method public getDropListItemsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5455
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    return-object v0
.end method

.method public getDroplistCursor()I
    .locals 1

    .prologue
    .line 5328
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    return v0
.end method

.method public getDroplistText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5348
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    .line 5349
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5350
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5358
    :goto_0
    return-object v1

    .line 5352
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5354
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5355
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5356
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5358
    goto :goto_0
.end method

.method public getDroplistTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5363
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    .line 5364
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5365
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5367
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    .line 5370
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1

    .prologue
    .line 5338
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 5434
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    return v0
.end method

.method public getFeatureTypes(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    .locals 1
    .parameter

    .prologue
    .line 5753
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    return-object p0
.end method

.method public getFeatureTypesCount()I
    .locals 1

    .prologue
    .line 5750
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeatureTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5747
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    return-object v0
.end method

.method public getGaiaBrowserUsage()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    .locals 1

    .prologue
    .line 5813
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    return-object v0
.end method

.method public getHomeMccMnc()I
    .locals 1

    .prologue
    .line 5561
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    return v0
.end method

.method public getLatencies(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter

    .prologue
    .line 5840
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public getLatenciesCount()I
    .locals 1

    .prologue
    .line 5837
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLatenciesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5830
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    return-object v0
.end method

.method public getLatenciesOrBuilder(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;
    .locals 1
    .parameter

    .prologue
    .line 5844
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;

    return-object p0
.end method

.method public getLatenciesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5834
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    return-object v0
.end method

.method public getLatencyFactor()I
    .locals 1

    .prologue
    .line 5730
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    return v0
.end method

.method public getLatencyTimeout()Z
    .locals 1

    .prologue
    .line 5740
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    return v0
.end method

.method public getLatencyType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 1

    .prologue
    .line 5720
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object v0
.end method

.method public getLatitude()I
    .locals 1

    .prologue
    .line 5414
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    return v0
.end method

.method public getLocationWasAvailable()Z
    .locals 1

    .prologue
    .line 5444
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .prologue
    .line 5424
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    return v0
.end method

.method public getNetworkProtocol()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    .locals 1

    .prologue
    .line 5933
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    return-object v0
.end method

.method public getNewCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5644
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    .line 5645
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5646
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5654
    :goto_0
    return-object v1

    .line 5648
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5650
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5651
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5652
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5654
    goto :goto_0
.end method

.method public getNewCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5659
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    .line 5660
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5661
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5663
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    .line 5666
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getNumGaiaAccounts()I
    .locals 1

    .prologue
    .line 5803
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    return v0
.end method

.method public getOldCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5677
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    .line 5678
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5679
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5687
    :goto_0
    return-object v1

    .line 5681
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5683
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5684
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5685
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5687
    goto :goto_0
.end method

.method public getOldCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5692
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    .line 5693
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5694
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5696
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    .line 5699
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3083
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneTopDisplay()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    .locals 1

    .prologue
    .line 5763
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    return-object v0
.end method

.method public getRimVendorId()I
    .locals 1

    .prologue
    .line 5581
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    return v0
.end method

.method public getSafeSearchFilter()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    .locals 1

    .prologue
    .line 5551
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6146
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    .line 6147
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6333
    :goto_0
    return v0

    .line 6150
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v6, :cond_2b

    .line 6151
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUserStudyIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v5

    .line 6154
    :goto_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v7, :cond_1

    .line 6155
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->getNumber()I

    move-result v1

    invoke-static {v7, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6158
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v8, :cond_2

    .line 6159
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6162
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v9, :cond_3

    .line 6163
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    invoke-static {v8, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6166
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 6167
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6170
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 6171
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6174
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 6175
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getCellidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6178
    :cond_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 6179
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    invoke-static {v9, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6182
    :cond_7
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 6183
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6186
    :cond_8
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 6187
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6190
    :cond_9
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_a

    .line 6191
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    move v1, v5

    move v2, v0

    .line 6194
    :goto_2
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 6195
    const/16 v3, 0xc

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6194
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 6198
    :cond_b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_2a

    .line 6199
    const/16 v0, 0xe

    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v2

    .line 6202
    :goto_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_c

    .line 6203
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6206
    :cond_c
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_d

    .line 6207
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6210
    :cond_d
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_e

    .line 6211
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6214
    :cond_e
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_f

    .line 6215
    const/16 v1, 0x12

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6218
    :cond_f
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 6219
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6222
    :cond_10
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 6223
    const/16 v1, 0x14

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6226
    :cond_11
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 6227
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTcpApnSettingBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6230
    :cond_12
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_13

    .line 6231
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6234
    :cond_13
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_14

    .line 6235
    const/16 v1, 0x17

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6238
    :cond_14
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_15

    .line 6239
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNewCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6242
    :cond_15
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_16

    .line 6243
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getOldCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6246
    :cond_16
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    const/high16 v2, 0x80

    if-ne v1, v2, :cond_17

    .line 6247
    const/16 v1, 0x1a

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6250
    :cond_17
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_18

    .line 6251
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6254
    :cond_18
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    const/high16 v2, 0x200

    if-ne v1, v2, :cond_19

    .line 6255
    const/16 v1, 0x1c

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6258
    :cond_19
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x400

    and-int/2addr v1, v2

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_29

    .line 6259
    const/16 v1, 0x1d

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_4
    move v2, v5

    move v3, v5

    .line 6264
    :goto_5
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1a

    .line 6265
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v3

    .line 6264
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_5

    .line 6268
    :cond_1a
    add-int v0, v1, v3

    .line 6269
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6271
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1b

    .line 6272
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6275
    :cond_1b
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    const/high16 v2, 0x1000

    if-ne v1, v2, :cond_1c

    .line 6276
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6279
    :cond_1c
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    const/high16 v2, 0x2000

    if-ne v1, v2, :cond_1d

    .line 6280
    const/16 v1, 0x21

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6283
    :cond_1d
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    const/high16 v2, 0x4000

    if-ne v1, v2, :cond_1e

    .line 6284
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6287
    :cond_1e
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_1f

    .line 6288
    const/16 v1, 0x23

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6291
    :cond_1f
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v6, :cond_20

    .line 6292
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6295
    :cond_20
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v7, :cond_21

    .line 6296
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    move v1, v5

    move v2, v0

    .line 6299
    :goto_6
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 6300
    const/16 v3, 0x26

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6299
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_6

    .line 6303
    :cond_22
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v8, :cond_28

    .line 6304
    const/16 v0, 0x2b

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6307
    :goto_7
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v9, :cond_27

    .line 6308
    const/16 v1, 0x2c

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionSlotBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_8
    move v2, v5

    move v3, v5

    .line 6313
    :goto_9
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_23

    .line 6314
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v3

    .line 6313
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_9

    .line 6317
    :cond_23
    add-int v0, v1, v3

    .line 6318
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6320
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_24

    .line 6321
    const/16 v1, 0x2e

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6324
    :cond_24
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_25

    .line 6325
    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6328
    :cond_25
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_26

    .line 6329
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6332
    :cond_26
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    goto/16 :goto_0

    :cond_27
    move v1, v0

    goto :goto_8

    :cond_28
    move v0, v2

    goto :goto_7

    :cond_29
    move v1, v0

    goto/16 :goto_4

    :cond_2a
    move v0, v2

    goto/16 :goto_3

    :cond_2b
    move v0, v5

    goto/16 :goto_1
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 5634
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    return v0
.end method

.method public getSuggestionSource()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    .locals 1

    .prologue
    .line 5773
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    return-object v0
.end method

.method public getSuggestionSourceIndex()I
    .locals 1

    .prologue
    .line 5783
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    return v0
.end method

.method public getTcpApnSetting()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5591
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    .line 5592
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5593
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5601
    :goto_0
    return-object v1

    .line 5595
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5597
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5598
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5599
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5601
    goto :goto_0
.end method

.method public getTcpApnSettingBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5606
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    .line 5607
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5608
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5610
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    .line 5613
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5295
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    .line 5296
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5297
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5305
    :goto_0
    return-object v1

    .line 5299
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5301
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5302
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5303
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5305
    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5310
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    .line 5311
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5312
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5314
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    .line 5317
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTextModification()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 5943
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 5475
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    return-wide v0
.end method

.method public getUserStudyId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5252
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    .line 5253
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5254
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5262
    :goto_0
    return-object v1

    .line 5256
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5258
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5259
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5260
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5262
    goto :goto_0
.end method

.method public getUserStudyIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5267
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    .line 5268
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5269
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5271
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    .line 5274
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5485
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    .line 5486
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5487
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5495
    :goto_0
    return-object v1

    .line 5489
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5491
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5492
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5493
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5495
    goto :goto_0
.end method

.method public getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5500
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    .line 5501
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5502
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5504
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    .line 5507
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoiceSearchAction()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5854
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    .line 5855
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5856
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5864
    :goto_0
    return-object v1

    .line 5858
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5860
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5861
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5862
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5864
    goto :goto_0
.end method

.method public getVoiceSearchActionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5869
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    .line 5870
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5871
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5873
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    .line 5876
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoiceSearchActionSlot()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5887
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 5888
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5889
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5897
    :goto_0
    return-object v1

    .line 5891
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5893
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5894
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5895
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5897
    goto :goto_0
.end method

.method public getVoiceSearchActionSlotBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5902
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 5903
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5904
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5906
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 5909
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoiceSearchButton()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    .locals 1

    .prologue
    .line 5624
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    return-object v0
.end method

.method public getVoiceSearchContactAddressType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    .locals 1

    .prologue
    .line 5953
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    return-object v0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5518
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 5519
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5520
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 5528
    :goto_0
    return-object v1

    .line 5522
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 5524
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5525
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5526
    iput-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5528
    goto :goto_0
.end method

.method public getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5533
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 5534
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5535
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5537
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 5540
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 5282
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasActionTrigger()Z
    .locals 2

    .prologue
    .line 5820
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

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

.method public hasBandwidth()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 5707
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCellid()Z
    .locals 2

    .prologue
    .line 5378
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasCurrentMccMnc()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 5568
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceOrientation()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4000

    .line 5790
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDroplistCursor()Z
    .locals 2

    .prologue
    .line 5325
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasDroplistText()Z
    .locals 2

    .prologue
    .line 5345
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasDroplistType()Z
    .locals 2

    .prologue
    .line 5335
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 5431
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasGaiaBrowserUsage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5810
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHomeMccMnc()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 5558
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatencyFactor()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200

    .line 5727
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatencyTimeout()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400

    .line 5737
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatencyType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 5717
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatitude()Z
    .locals 2

    .prologue
    .line 5411
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasLocationWasAvailable()Z
    .locals 2

    .prologue
    .line 5441
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    .prologue
    .line 5421
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasNetworkProtocol()Z
    .locals 2

    .prologue
    .line 5930
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

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

.method public hasNewCountryCode()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 5641
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumGaiaAccounts()Z
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 5800
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOldCountryCode()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 5674
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneTopDisplay()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800

    .line 5760
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRimVendorId()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 5578
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSafeSearchFilter()Z
    .locals 2

    .prologue
    .line 5548
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasSignalStrength()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 5631
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuggestionSource()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000

    .line 5770
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuggestionSourceIndex()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 5780
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTcpApnSetting()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 5588
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 5292
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasTextModification()Z
    .locals 2

    .prologue
    .line 5940
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 5472
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasUserStudyId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5249
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUtteranceId()Z
    .locals 2

    .prologue
    .line 5482
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasVoiceSearchAction()Z
    .locals 2

    .prologue
    .line 5851
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

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

.method public hasVoiceSearchActionSlot()Z
    .locals 2

    .prologue
    .line 5884
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

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

.method public hasVoiceSearchButton()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 5621
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchContactAddressType()Z
    .locals 2

    .prologue
    .line 5950
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

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

.method public hasVoiceSearchLanguage()Z
    .locals 2

    .prologue
    .line 5515
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6003
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    .line 6004
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 6007
    :goto_0
    return v0

    .line 6004
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6006
    :cond_1
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    move v0, v2

    .line 6007
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6396
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6400
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

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
    .line 6339
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6012
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSerializedSize()I

    .line 6013
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_0

    .line 6014
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUserStudyIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6016
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_1

    .line 6017
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6019
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_2

    .line 6020
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6022
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v7, :cond_3

    .line 6023
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6025
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 6026
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6028
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 6029
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6031
    :cond_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 6032
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getCellidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6034
    :cond_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 6035
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    invoke-virtual {p1, v7, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6037
    :cond_7
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 6038
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6040
    :cond_8
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 6041
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6043
    :cond_9
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 6044
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_a
    move v1, v3

    .line 6046
    :goto_0
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 6047
    const/16 v2, 0xc

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 6046
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6049
    :cond_b
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_c

    .line 6050
    const/16 v0, 0xe

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6052
    :cond_c
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 6053
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6055
    :cond_d
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_e

    .line 6056
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6058
    :cond_e
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_f

    .line 6059
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6061
    :cond_f
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_10

    .line 6062
    const/16 v0, 0x12

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6064
    :cond_10
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 6065
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6067
    :cond_11
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 6068
    const/16 v0, 0x14

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6070
    :cond_12
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 6071
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTcpApnSettingBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6073
    :cond_13
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_14

    .line 6074
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6076
    :cond_14
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_15

    .line 6077
    const/16 v0, 0x17

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6079
    :cond_15
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_16

    .line 6080
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNewCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6082
    :cond_16
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_17

    .line 6083
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getOldCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6085
    :cond_17
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_18

    .line 6086
    const/16 v0, 0x1a

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6088
    :cond_18
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_19

    .line 6089
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6091
    :cond_19
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_1a

    .line 6092
    const/16 v0, 0x1c

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6094
    :cond_1a
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_1b

    .line 6095
    const/16 v0, 0x1d

    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1b
    move v1, v3

    .line 6097
    :goto_1
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 6098
    const/16 v2, 0x1e

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6097
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6100
    :cond_1c
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_1d

    .line 6101
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6103
    :cond_1d
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    if-ne v0, v1, :cond_1e

    .line 6104
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6106
    :cond_1e
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    const/high16 v1, 0x2000

    if-ne v0, v1, :cond_1f

    .line 6107
    const/16 v0, 0x21

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6109
    :cond_1f
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_20

    .line 6110
    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6112
    :cond_20
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_21

    .line 6113
    const/16 v0, 0x23

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6115
    :cond_21
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_22

    .line 6116
    const/16 v0, 0x24

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6118
    :cond_22
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_23

    .line 6119
    const/16 v0, 0x25

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_23
    move v1, v3

    .line 6121
    :goto_2
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 6122
    const/16 v2, 0x26

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 6121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6124
    :cond_24
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_25

    .line 6125
    const/16 v0, 0x2b

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6127
    :cond_25
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v7, :cond_26

    .line 6128
    const/16 v0, 0x2c

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionSlotBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_26
    move v1, v3

    .line 6130
    :goto_3
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 6131
    const/16 v2, 0x2d

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 6133
    :cond_27
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_28

    .line 6134
    const/16 v0, 0x2e

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6136
    :cond_28
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_29

    .line 6137
    const/16 v0, 0x2f

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6139
    :cond_29
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2a

    .line 6140
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6142
    :cond_2a
    return-void
.end method
