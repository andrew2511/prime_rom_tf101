.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfoOrBuilder;"
    }
.end annotation


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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6973
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->KEYSTROKE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 6997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7071
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 7095
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 7395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7501
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 7588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7641
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 7686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7813
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 7879
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 7930
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 7954
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 7999
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 8044
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 8068
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 8092
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 8181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 8338
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 8362
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8405
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 6408
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->maybeForceBuilderInitialization()V

    .line 6409
    return-void
.end method

.method static synthetic access$4700()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6402
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6414
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActionPropertiesIsMutable()V
    .locals 2

    .prologue
    .line 8290
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 8291
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 8292
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8294
    :cond_0
    return-void
.end method

.method private ensureDropListItemsIsMutable()V
    .locals 2

    .prologue
    .line 7288
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    .line 7289
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 7290
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7292
    :cond_0
    return-void
.end method

.method private ensureFeatureTypesIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x1000

    .line 7882
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 7883
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 7884
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7886
    :cond_0
    return-void
.end method

.method private ensureLatenciesIsMutable()V
    .locals 2

    .prologue
    .line 8095
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 8096
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 8097
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8099
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6412
    return-void
.end method


# virtual methods
.method public addActionProperties(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8315
    if-nez p1, :cond_0

    .line 8316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8318
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureActionPropertiesIsMutable()V

    .line 8319
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8321
    return-object p0
.end method

.method public addAllActionProperties(Ljava/lang/Iterable;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;",
            ">;)",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 8325
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureActionPropertiesIsMutable()V

    .line 8326
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8328
    return-object p0
.end method

.method public addAllDropListItems(Ljava/lang/Iterable;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
            ">;)",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 7355
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 7356
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7358
    return-object p0
.end method

.method public addAllFeatureTypes(Ljava/lang/Iterable;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;",
            ">;)",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 7917
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureFeatureTypesIsMutable()V

    .line 7918
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7920
    return-object p0
.end method

.method public addAllLatencies(Ljava/lang/Iterable;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
            ">;)",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 8162
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8163
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8165
    return-object p0
.end method

.method public addDropListItems(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7348
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 7349
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7351
    return-object p0
.end method

.method public addDropListItems(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7331
    if-nez p2, :cond_0

    .line 7332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7334
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 7335
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7337
    return-object p0
.end method

.method public addDropListItems(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7341
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 7342
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7344
    return-object p0
.end method

.method public addDropListItems(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7321
    if-nez p1, :cond_0

    .line 7322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7324
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 7325
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7327
    return-object p0
.end method

.method public addFeatureTypes(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7907
    if-nez p1, :cond_0

    .line 7908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7910
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureFeatureTypesIsMutable()V

    .line 7911
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7913
    return-object p0
.end method

.method public addLatencies(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8155
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8156
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8158
    return-object p0
.end method

.method public addLatencies(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8138
    if-nez p2, :cond_0

    .line 8139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8141
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8142
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8144
    return-object p0
.end method

.method public addLatencies(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 8148
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8149
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8151
    return-object p0
.end method

.method public addLatencies(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8128
    if-nez p1, :cond_0

    .line 8129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8131
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8132
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8134
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 2

    .prologue
    .line 6517
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    .line 6518
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6519
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6521
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 12

    .prologue
    const/high16 v11, 0x4

    const/high16 v10, 0x2

    const/high16 v9, 0x1

    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 6525
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 6526
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6527
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6528
    const/4 v3, 0x0

    .line 6529
    const/4 v4, 0x0

    .line 6530
    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 6531
    or-int/lit8 v3, v3, 0x1

    .line 6533
    :cond_0
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$4902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6534
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 6535
    or-int/lit8 v3, v3, 0x2

    .line 6537
    :cond_1
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 6538
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 6539
    or-int/lit8 v3, v3, 0x4

    .line 6541
    :cond_2
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6542
    and-int/lit8 v5, v1, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 6543
    or-int/lit8 v3, v3, 0x8

    .line 6545
    :cond_3
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistCursor_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6546
    and-int/lit8 v5, v1, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4

    .line 6547
    or-int/lit8 v3, v3, 0x10

    .line 6549
    :cond_4
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 6550
    and-int/lit8 v5, v1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    .line 6551
    or-int/lit8 v3, v3, 0x20

    .line 6553
    :cond_5
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6554
    and-int/lit8 v5, v1, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_6

    .line 6555
    or-int/lit8 v3, v3, 0x40

    .line 6557
    :cond_6
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6558
    and-int/lit16 v5, v1, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_7

    .line 6559
    or-int/lit16 v3, v3, 0x80

    .line 6561
    :cond_7
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latitude_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6562
    and-int/lit16 v5, v1, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_8

    .line 6563
    or-int/lit16 v3, v3, 0x100

    .line 6565
    :cond_8
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->longitude_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6566
    and-int/lit16 v5, v1, 0x200

    const/16 v6, 0x200

    if-ne v5, v6, :cond_9

    .line 6567
    or-int/lit16 v3, v3, 0x200

    .line 6569
    :cond_9
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->durationMs_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6570
    and-int/lit16 v5, v1, 0x400

    const/16 v6, 0x400

    if-ne v5, v6, :cond_a

    .line 6571
    or-int/lit16 v3, v3, 0x400

    .line 6573
    :cond_a
    iget-boolean v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->locationWasAvailable_:Z

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Z)Z

    .line 6574
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    const/16 v6, 0x800

    if-ne v5, v6, :cond_b

    .line 6575
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 6576
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v5, v5, -0x801

    iput v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6578
    :cond_b
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;

    .line 6579
    and-int/lit16 v5, v1, 0x1000

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_c

    .line 6580
    or-int/lit16 v3, v3, 0x800

    .line 6582
    :cond_c
    iget-wide v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->timestamp_:J

    invoke-static {v0, v5, v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;J)J

    .line 6583
    and-int/lit16 v5, v1, 0x2000

    const/16 v6, 0x2000

    if-ne v5, v6, :cond_d

    .line 6584
    or-int/lit16 v3, v3, 0x1000

    .line 6586
    :cond_d
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6587
    and-int/lit16 v5, v1, 0x4000

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_e

    .line 6588
    or-int/lit16 v3, v3, 0x2000

    .line 6590
    :cond_e
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6591
    and-int v5, v1, v8

    if-ne v5, v8, :cond_f

    .line 6592
    or-int/lit16 v3, v3, 0x4000

    .line 6594
    :cond_f
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 6595
    and-int v5, v1, v9

    if-ne v5, v9, :cond_10

    .line 6596
    or-int/2addr v3, v8

    .line 6598
    :cond_10
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->homeMccMnc_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6599
    and-int v5, v1, v10

    if-ne v5, v10, :cond_11

    .line 6600
    or-int/2addr v3, v9

    .line 6602
    :cond_11
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->currentMccMnc_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6603
    and-int v5, v1, v11

    if-ne v5, v11, :cond_12

    .line 6604
    or-int/2addr v3, v10

    .line 6606
    :cond_12
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->rimVendorId_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6607
    const/high16 v5, 0x8

    and-int/2addr v5, v1

    const/high16 v6, 0x8

    if-ne v5, v6, :cond_13

    .line 6608
    or-int/2addr v3, v11

    .line 6610
    :cond_13
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6611
    const/high16 v5, 0x10

    and-int/2addr v5, v1

    const/high16 v6, 0x10

    if-ne v5, v6, :cond_14

    .line 6612
    const/high16 v5, 0x8

    or-int/2addr v3, v5

    .line 6614
    :cond_14
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 6615
    const/high16 v5, 0x20

    and-int/2addr v5, v1

    const/high16 v6, 0x20

    if-ne v5, v6, :cond_15

    .line 6616
    const/high16 v5, 0x10

    or-int/2addr v3, v5

    .line 6618
    :cond_15
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->signalStrength_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6619
    const/high16 v5, 0x40

    and-int/2addr v5, v1

    const/high16 v6, 0x40

    if-ne v5, v6, :cond_16

    .line 6620
    const/high16 v5, 0x20

    or-int/2addr v3, v5

    .line 6622
    :cond_16
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6623
    const/high16 v5, 0x80

    and-int/2addr v5, v1

    const/high16 v6, 0x80

    if-ne v5, v6, :cond_17

    .line 6624
    const/high16 v5, 0x40

    or-int/2addr v3, v5

    .line 6626
    :cond_17
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6627
    const/high16 v5, 0x100

    and-int/2addr v5, v1

    const/high16 v6, 0x100

    if-ne v5, v6, :cond_18

    .line 6628
    const/high16 v5, 0x80

    or-int/2addr v3, v5

    .line 6630
    :cond_18
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bandwidth_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6631
    const/high16 v5, 0x200

    and-int/2addr v5, v1

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_19

    .line 6632
    const/high16 v5, 0x100

    or-int/2addr v3, v5

    .line 6634
    :cond_19
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 6635
    const/high16 v5, 0x400

    and-int/2addr v5, v1

    const/high16 v6, 0x400

    if-ne v5, v6, :cond_1a

    .line 6636
    const/high16 v5, 0x200

    or-int/2addr v3, v5

    .line 6638
    :cond_1a
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyFactor_:I

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6639
    const/high16 v5, 0x800

    and-int/2addr v5, v1

    const/high16 v6, 0x800

    if-ne v5, v6, :cond_1b

    .line 6640
    const/high16 v5, 0x400

    or-int/2addr v3, v5

    .line 6642
    :cond_1b
    iget-boolean v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyTimeout_:Z

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Z)Z

    .line 6643
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v6, 0x1000

    and-int/2addr v5, v6

    const/high16 v6, 0x1000

    if-ne v5, v6, :cond_1c

    .line 6644
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 6645
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6647
    :cond_1c
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;

    .line 6648
    const/high16 v5, 0x2000

    and-int/2addr v5, v1

    const/high16 v6, 0x2000

    if-ne v5, v6, :cond_1d

    .line 6649
    const/high16 v5, 0x800

    or-int/2addr v3, v5

    .line 6651
    :cond_1d
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 6652
    const/high16 v5, 0x4000

    and-int/2addr v5, v1

    const/high16 v6, 0x4000

    if-ne v5, v6, :cond_1e

    .line 6653
    const/high16 v5, 0x1000

    or-int/2addr v3, v5

    .line 6655
    :cond_1e
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    invoke-static {v0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 6656
    and-int/2addr v1, v7

    if-ne v1, v7, :cond_2a

    .line 6657
    const/high16 v1, 0x2000

    or-int/2addr v1, v3

    .line 6659
    :goto_0
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSourceIndex_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6660
    and-int/lit8 v3, v2, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1f

    .line 6661
    const/high16 v3, 0x4000

    or-int/2addr v1, v3

    .line 6663
    :cond_1f
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 6664
    and-int/lit8 v3, v2, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_20

    .line 6665
    or-int/2addr v1, v7

    .line 6667
    :cond_20
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->numGaiaAccounts_:I

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6668
    and-int/lit8 v3, v2, 0x4

    const/4 v5, 0x4

    if-ne v3, v5, :cond_29

    .line 6669
    or-int/lit8 v3, v4, 0x1

    .line 6671
    :goto_1
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    invoke-static {v0, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 6672
    and-int/lit8 v4, v2, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_21

    .line 6673
    or-int/lit8 v3, v3, 0x2

    .line 6675
    :cond_21
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    invoke-static {v0, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 6676
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_22

    .line 6677
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 6678
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6680
    :cond_22
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;

    .line 6681
    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_23

    .line 6682
    or-int/lit8 v3, v3, 0x4

    .line 6684
    :cond_23
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6685
    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_24

    .line 6686
    or-int/lit8 v3, v3, 0x8

    .line 6688
    :cond_24
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6689
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_25

    .line 6690
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 6691
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v4, v4, -0x81

    iput v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6693
    :cond_25
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;

    .line 6694
    and-int/lit16 v4, v2, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_26

    .line 6695
    or-int/lit8 v3, v3, 0x10

    .line 6697
    :cond_26
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    invoke-static {v0, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 6698
    and-int/lit16 v4, v2, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_27

    .line 6699
    or-int/lit8 v3, v3, 0x20

    .line 6701
    :cond_27
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-static {v0, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$9002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 6702
    and-int/lit16 v2, v2, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_28

    .line 6703
    or-int/lit8 v2, v3, 0x40

    .line 6705
    :goto_2
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$9102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 6706
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$9202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6707
    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$9302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6708
    return-object v0

    :cond_28
    move v2, v3

    goto :goto_2

    :cond_29
    move v3, v4

    goto/16 :goto_1

    :cond_2a
    move v1, v3

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6418
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6419
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6420
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6421
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->KEYSTROKE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 6422
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 6424
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6425
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistCursor_:I

    .line 6426
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6427
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 6428
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 6430
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 6432
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6433
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latitude_:I

    .line 6434
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6435
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->longitude_:I

    .line 6436
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6437
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->durationMs_:I

    .line 6438
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6439
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->locationWasAvailable_:Z

    .line 6440
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 6442
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->timestamp_:J

    .line 6444
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 6446
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 6448
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6449
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 6450
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6451
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->homeMccMnc_:I

    .line 6452
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6453
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->currentMccMnc_:I

    .line 6454
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6455
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->rimVendorId_:I

    .line 6456
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6457
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 6458
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6459
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 6460
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6461
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->signalStrength_:I

    .line 6462
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 6464
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 6466
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6467
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bandwidth_:I

    .line 6468
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6469
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 6470
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6471
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyFactor_:I

    .line 6472
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6473
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyTimeout_:Z

    .line 6474
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 6476
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6477
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 6478
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6479
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 6480
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6481
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSourceIndex_:I

    .line 6482
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6483
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 6484
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6485
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->numGaiaAccounts_:I

    .line 6486
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6487
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 6488
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6489
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 6490
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 6492
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 6494
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 6496
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6497
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 6498
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6499
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 6500
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6501
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 6502
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6503
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 6504
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6505
    return-object p0
.end method

.method public clearAction()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6990
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6991
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->KEYSTROKE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 6993
    return-object p0
.end method

.method public clearActionProperties()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 8332
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8334
    return-object p0
.end method

.method public clearActionTrigger()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8085
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8086
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 8088
    return-object p0
.end method

.method public clearBandwidth()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7806
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7807
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bandwidth_:I

    .line 7809
    return-object p0
.end method

.method public clearCellid()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7184
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7185
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getCellid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7187
    return-object p0
.end method

.method public clearCurrentMccMnc()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7560
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7561
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->currentMccMnc_:I

    .line 7563
    return-object p0
.end method

.method public clearDeviceOrientation()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8016
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8017
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 8019
    return-object p0
.end method

.method public clearDropListItems()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 7362
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7364
    return-object p0
.end method

.method public clearDroplistCursor()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7064
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7065
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistCursor_:I

    .line 7067
    return-object p0
.end method

.method public clearDroplistText()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7131
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7132
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7134
    return-object p0
.end method

.method public clearDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7088
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7089
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 7091
    return-object p0
.end method

.method public clearDurationMs()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7257
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7258
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->durationMs_:I

    .line 7260
    return-object p0
.end method

.method public clearFeatureTypes()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7923
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 7924
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7926
    return-object p0
.end method

.method public clearGaiaBrowserUsage()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8061
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8062
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 8064
    return-object p0
.end method

.method public clearHomeMccMnc()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7539
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7540
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->homeMccMnc_:I

    .line 7542
    return-object p0
.end method

.method public clearLatencies()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 8169
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8171
    return-object p0
.end method

.method public clearLatencyFactor()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7851
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7852
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyFactor_:I

    .line 7854
    return-object p0
.end method

.method public clearLatencyTimeout()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7872
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyTimeout_:Z

    .line 7875
    return-object p0
.end method

.method public clearLatencyType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7830
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7831
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 7833
    return-object p0
.end method

.method public clearLatitude()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7215
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7216
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latitude_:I

    .line 7218
    return-object p0
.end method

.method public clearLocationWasAvailable()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7278
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->locationWasAvailable_:Z

    .line 7281
    return-object p0
.end method

.method public clearLongitude()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7236
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7237
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->longitude_:I

    .line 7239
    return-object p0
.end method

.method public clearNetworkProtocol()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8355
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8356
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 8358
    return-object p0
.end method

.method public clearNewCountryCode()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7722
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7723
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNewCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7725
    return-object p0
.end method

.method public clearNumGaiaAccounts()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8037
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8038
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->numGaiaAccounts_:I

    .line 8040
    return-object p0
.end method

.method public clearOldCountryCode()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7775
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7776
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getOldCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7778
    return-object p0
.end method

.method public clearPhoneTopDisplay()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7947
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7948
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 7950
    return-object p0
.end method

.method public clearRimVendorId()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7581
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7582
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->rimVendorId_:I

    .line 7584
    return-object p0
.end method

.method public clearSafeSearchFilter()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7518
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7519
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 7521
    return-object p0
.end method

.method public clearSignalStrength()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7679
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7680
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->signalStrength_:I

    .line 7682
    return-object p0
.end method

.method public clearSuggestionSource()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7971
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7972
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 7974
    return-object p0
.end method

.method public clearSuggestionSourceIndex()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7992
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7993
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSourceIndex_:I

    .line 7995
    return-object p0
.end method

.method public clearTcpApnSetting()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7624
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7625
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTcpApnSetting()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7627
    return-object p0
.end method

.method public clearText()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7033
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7034
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7036
    return-object p0
.end method

.method public clearTextModification()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8398
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8400
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8401
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7388
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7389
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->timestamp_:J

    .line 7391
    return-object p0
.end method

.method public clearUserStudyId()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6956
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6957
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUserStudyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6959
    return-object p0
.end method

.method public clearUtteranceId()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7431
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7432
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7434
    return-object p0
.end method

.method public clearVoiceSearchAction()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8217
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8218
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8220
    return-object p0
.end method

.method public clearVoiceSearchActionSlot()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8270
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8271
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionSlot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8273
    return-object p0
.end method

.method public clearVoiceSearchButton()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 7658
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7659
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 7661
    return-object p0
.end method

.method public clearVoiceSearchContactAddressType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 8422
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8423
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 8425
    return-object p0
.end method

.method public clearVoiceSearchLanguage()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 7484
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7485
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7487
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 6509
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

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
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    .locals 1

    .prologue
    .line 6978
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    return-object v0
.end method

.method public getActionProperties(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    .locals 1
    .parameter

    .prologue
    .line 8302
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    return-object p0
.end method

.method public getActionPropertiesCount()I
    .locals 1

    .prologue
    .line 8299
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

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
    .line 8296
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActionTrigger()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    .locals 1

    .prologue
    .line 8073
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    return-object v0
.end method

.method public getBandwidth()I
    .locals 1

    .prologue
    .line 7797
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bandwidth_:I

    return v0
.end method

.method public getCellid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7153
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7154
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7155
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7156
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7159
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCellidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7164
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7165
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7166
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7168
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7171
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCurrentMccMnc()I
    .locals 1

    .prologue
    .line 7551
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->currentMccMnc_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6402
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1

    .prologue
    .line 6513
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOrientation()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    .locals 1

    .prologue
    .line 8004
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    return-object v0
.end method

.method public getDropListItems(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1
    .parameter

    .prologue
    .line 7301
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    return-object p0
.end method

.method public getDropListItemsCount()I
    .locals 1

    .prologue
    .line 7298
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

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
    .line 7295
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDroplistCursor()I
    .locals 1

    .prologue
    .line 7055
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistCursor_:I

    return v0
.end method

.method public getDroplistText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7100
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7101
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7102
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7103
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7106
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDroplistTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7111
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7112
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7113
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7115
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7118
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1

    .prologue
    .line 7076
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 7248
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->durationMs_:I

    return v0
.end method

.method public getFeatureTypes(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    .locals 1
    .parameter

    .prologue
    .line 7894
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    return-object p0
.end method

.method public getFeatureTypesCount()I
    .locals 1

    .prologue
    .line 7891
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

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
    .line 7888
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaBrowserUsage()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    .locals 1

    .prologue
    .line 8049
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    return-object v0
.end method

.method public getHomeMccMnc()I
    .locals 1

    .prologue
    .line 7530
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->homeMccMnc_:I

    return v0
.end method

.method public getLatencies(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1
    .parameter

    .prologue
    .line 8108
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object p0
.end method

.method public getLatenciesCount()I
    .locals 1

    .prologue
    .line 8105
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

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
    .line 8102
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatencyFactor()I
    .locals 1

    .prologue
    .line 7842
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyFactor_:I

    return v0
.end method

.method public getLatencyTimeout()Z
    .locals 1

    .prologue
    .line 7863
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyTimeout_:Z

    return v0
.end method

.method public getLatencyType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 1

    .prologue
    .line 7818
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object v0
.end method

.method public getLatitude()I
    .locals 1

    .prologue
    .line 7206
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latitude_:I

    return v0
.end method

.method public getLocationWasAvailable()Z
    .locals 1

    .prologue
    .line 7269
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->locationWasAvailable_:Z

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .prologue
    .line 7227
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->longitude_:I

    return v0
.end method

.method public getNetworkProtocol()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    .locals 1

    .prologue
    .line 8343
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    return-object v0
.end method

.method public getNewCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7691
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7692
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7693
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7694
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7697
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNewCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7702
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7703
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7704
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7706
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7709
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getNumGaiaAccounts()I
    .locals 1

    .prologue
    .line 8028
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->numGaiaAccounts_:I

    return v0
.end method

.method public getOldCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7744
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7745
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7746
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7747
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7750
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getOldCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7755
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7756
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7757
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7759
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7762
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getPhoneTopDisplay()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    .locals 1

    .prologue
    .line 7935
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    return-object v0
.end method

.method public getRimVendorId()I
    .locals 1

    .prologue
    .line 7572
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->rimVendorId_:I

    return v0
.end method

.method public getSafeSearchFilter()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    .locals 1

    .prologue
    .line 7506
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 7670
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->signalStrength_:I

    return v0
.end method

.method public getSuggestionSource()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    .locals 1

    .prologue
    .line 7959
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    return-object v0
.end method

.method public getSuggestionSourceIndex()I
    .locals 1

    .prologue
    .line 7983
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSourceIndex_:I

    return v0
.end method

.method public getTcpApnSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7593
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7594
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7595
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7596
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7599
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTcpApnSettingBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7604
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7605
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7606
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7608
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7611
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7002
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7003
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7004
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7005
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7008
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7013
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7014
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7015
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7017
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7020
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTextModification()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 8367
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 7379
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getUserStudyId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6925
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6926
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6927
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6928
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6931
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserStudyIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6936
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6938
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6940
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6943
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7400
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7401
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7402
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7403
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7406
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7411
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7412
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7413
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7415
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7418
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoiceSearchAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8186
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8187
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8188
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8189
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8192
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceSearchActionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 8197
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8198
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8199
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8201
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8204
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoiceSearchActionSlot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8239
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8240
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8241
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8242
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8245
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceSearchActionSlotBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 8250
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8251
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8252
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8254
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8257
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getVoiceSearchButton()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    .locals 1

    .prologue
    .line 7646
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    return-object v0
.end method

.method public getVoiceSearchContactAddressType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    .locals 1

    .prologue
    .line 8410
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    return-object v0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7453
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7454
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7455
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7456
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7459
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 7464
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7465
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7466
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7468
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7471
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 6975
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 8070
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

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

.method public hasBandwidth()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 7794
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 7150
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, 0x2

    .line 7548
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/4 v1, 0x1

    .line 8001
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDroplistCursor()Z
    .locals 2

    .prologue
    .line 7052
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 7097
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 7073
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 7245
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 8046
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

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

.method public hasHomeMccMnc()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 7527
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, 0x400

    .line 7839
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, 0x800

    .line 7860
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, 0x200

    .line 7815
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 7203
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 7266
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 7224
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 8340
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

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

.method public hasNewCountryCode()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 7688
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 8025
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

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

.method public hasOldCountryCode()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 7741
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, 0x2000

    .line 7932
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, 0x4

    .line 7569
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const v1, 0x8000

    .line 7503
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    const/high16 v1, 0x20

    .line 7667
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, 0x4000

    .line 7956
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, -0x8000

    .line 7980
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    const/high16 v1, 0x8

    .line 7590
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 6999
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 8364
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 7376
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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

.method public hasUserStudyId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6922
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 7397
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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

.method public hasVoiceSearchAction()Z
    .locals 2

    .prologue
    .line 8183
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

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

.method public hasVoiceSearchActionSlot()Z
    .locals 2

    .prologue
    .line 8236
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

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

.method public hasVoiceSearchButton()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 7643
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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
    .line 8407
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

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

.method public hasVoiceSearchLanguage()Z
    .locals 2

    .prologue
    .line 7450
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6896
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
    .line 6402
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6402
    check-cast p1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

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
    .line 6402
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6903
    const/4 v1, 0x0

    .line 6905
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6910
    if-eqz v0, :cond_0

    .line 6911
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6914
    :cond_0
    return-object p0

    .line 6906
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6907
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6908
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6910
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 6911
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    :cond_1
    throw v0

    .line 6910
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 6712
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 6892
    :goto_0
    return-object v0

    .line 6713
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasUserStudyId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6714
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6715
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$4900(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6718
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6719
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getAction()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6721
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6722
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6723
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5100(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 6726
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDroplistCursor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6727
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistCursor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDroplistCursor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6729
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDroplistType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6730
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDroplistType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6732
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDroplistText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6733
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6734
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5400(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 6737
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasCellid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6738
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6739
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 6742
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6743
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLatitude()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLatitude(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6745
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6746
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLongitude()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLongitude(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6748
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6749
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6751
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLocationWasAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6752
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLocationWasAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLocationWasAvailable(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6754
    :cond_b
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6000(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6755
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6756
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6000(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 6757
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6764
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6765
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setTimestamp(J)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6767
    :cond_d
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasUtteranceId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6768
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6769
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6200(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 6772
    :cond_e
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchLanguage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6773
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6774
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6300(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 6777
    :cond_f
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasSafeSearchFilter()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6778
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSafeSearchFilter()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setSafeSearchFilter(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6780
    :cond_10
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasHomeMccMnc()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6781
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getHomeMccMnc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setHomeMccMnc(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6783
    :cond_11
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasCurrentMccMnc()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6784
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getCurrentMccMnc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setCurrentMccMnc(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6786
    :cond_12
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasRimVendorId()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6787
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getRimVendorId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setRimVendorId(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6789
    :cond_13
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasTcpApnSetting()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6790
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6791
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 6794
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchButton()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6795
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchButton()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchButton(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6797
    :cond_15
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6798
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSignalStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setSignalStrength(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6800
    :cond_16
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasNewCountryCode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6801
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6802
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7100(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 6805
    :cond_17
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasOldCountryCode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6806
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6807
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7200(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 6810
    :cond_18
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasBandwidth()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6811
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getBandwidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setBandwidth(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6813
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLatencyType()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6814
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLatencyType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLatencyType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6816
    :cond_1a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLatencyFactor()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6817
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLatencyFactor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLatencyFactor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6819
    :cond_1b
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLatencyTimeout()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6820
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLatencyTimeout()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLatencyTimeout(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6822
    :cond_1c
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6823
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6824
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 6825
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6832
    :cond_1d
    :goto_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasPhoneTopDisplay()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6833
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getPhoneTopDisplay()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setPhoneTopDisplay(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6835
    :cond_1e
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasSuggestionSource()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6836
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSuggestionSource()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setSuggestionSource(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6838
    :cond_1f
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasSuggestionSourceIndex()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6839
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSuggestionSourceIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setSuggestionSourceIndex(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6841
    :cond_20
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDeviceOrientation()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6842
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDeviceOrientation()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDeviceOrientation(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6844
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasNumGaiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6845
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNumGaiaAccounts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setNumGaiaAccounts(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6847
    :cond_22
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasGaiaBrowserUsage()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6848
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getGaiaBrowserUsage()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setGaiaBrowserUsage(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6850
    :cond_23
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasActionTrigger()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 6851
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getActionTrigger()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setActionTrigger(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6853
    :cond_24
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 6854
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6855
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 6856
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6863
    :cond_25
    :goto_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchAction()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6864
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6865
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8600(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 6868
    :cond_26
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchActionSlot()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6869
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6870
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 6873
    :cond_27
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 6874
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6875
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 6876
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6883
    :cond_28
    :goto_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasNetworkProtocol()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6884
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNetworkProtocol()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setNetworkProtocol(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6886
    :cond_29
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasTextModification()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6887
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTextModification()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeTextModification(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6889
    :cond_2a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchContactAddressType()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6890
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchContactAddressType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchContactAddressType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    :cond_2b
    move-object v0, p0

    .line 6892
    goto/16 :goto_0

    .line 6759
    :cond_2c
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 6760
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6000(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 6827
    :cond_2d
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureFeatureTypesIsMutable()V

    .line 6828
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 6858
    :cond_2e
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 6859
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 6878
    :cond_2f
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureActionPropertiesIsMutable()V

    .line 6879
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method public mergeTextModification(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 8386
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8388
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8394
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8395
    return-object p0

    .line 8391
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    goto :goto_0
.end method

.method public removeDropListItems(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7367
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 7368
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7370
    return-object p0
.end method

.method public removeLatencies(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8174
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8175
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8177
    return-object p0
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6981
    if-nez p1, :cond_0

    .line 6982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6984
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6985
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 6987
    return-object p0
.end method

.method public setActionProperties(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8306
    if-nez p2, :cond_0

    .line 8307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8309
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureActionPropertiesIsMutable()V

    .line 8310
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8312
    return-object p0
.end method

.method public setActionTrigger(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8076
    if-nez p1, :cond_0

    .line 8077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8079
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8080
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 8082
    return-object p0
.end method

.method public setBandwidth(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7800
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7801
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bandwidth_:I

    .line 7803
    return-object p0
.end method

.method public setCellid(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7175
    if-nez p1, :cond_0

    .line 7176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7178
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7179
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7181
    return-object p0
.end method

.method public setCellidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7191
    if-nez p1, :cond_0

    .line 7192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7194
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7195
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7197
    return-object p0
.end method

.method public setCurrentMccMnc(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7554
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7555
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->currentMccMnc_:I

    .line 7557
    return-object p0
.end method

.method public setDeviceOrientation(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8007
    if-nez p1, :cond_0

    .line 8008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8010
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8011
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 8013
    return-object p0
.end method

.method public setDropListItems(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7315
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 7316
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7318
    return-object p0
.end method

.method public setDropListItems(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7305
    if-nez p2, :cond_0

    .line 7306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7308
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 7309
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7311
    return-object p0
.end method

.method public setDroplistCursor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7058
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7059
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistCursor_:I

    .line 7061
    return-object p0
.end method

.method public setDroplistText(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7122
    if-nez p1, :cond_0

    .line 7123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7125
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7126
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7128
    return-object p0
.end method

.method public setDroplistTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7138
    if-nez p1, :cond_0

    .line 7139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7141
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7142
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7144
    return-object p0
.end method

.method public setDroplistType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7079
    if-nez p1, :cond_0

    .line 7080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7082
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7083
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 7085
    return-object p0
.end method

.method public setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7251
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7252
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->durationMs_:I

    .line 7254
    return-object p0
.end method

.method public setFeatureTypes(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7898
    if-nez p2, :cond_0

    .line 7899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7901
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureFeatureTypesIsMutable()V

    .line 7902
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7904
    return-object p0
.end method

.method public setGaiaBrowserUsage(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8052
    if-nez p1, :cond_0

    .line 8053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8055
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8056
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 8058
    return-object p0
.end method

.method public setHomeMccMnc(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7533
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7534
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->homeMccMnc_:I

    .line 7536
    return-object p0
.end method

.method public setLatencies(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8122
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8123
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8125
    return-object p0
.end method

.method public setLatencies(ILcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8112
    if-nez p2, :cond_0

    .line 8113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8115
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8116
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8118
    return-object p0
.end method

.method public setLatencyFactor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7845
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7846
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyFactor_:I

    .line 7848
    return-object p0
.end method

.method public setLatencyTimeout(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7866
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7867
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyTimeout_:Z

    .line 7869
    return-object p0
.end method

.method public setLatencyType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7821
    if-nez p1, :cond_0

    .line 7822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7824
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7825
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 7827
    return-object p0
.end method

.method public setLatitude(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7209
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7210
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latitude_:I

    .line 7212
    return-object p0
.end method

.method public setLocationWasAvailable(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7272
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7273
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->locationWasAvailable_:Z

    .line 7275
    return-object p0
.end method

.method public setLongitude(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7230
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7231
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->longitude_:I

    .line 7233
    return-object p0
.end method

.method public setNetworkProtocol(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8346
    if-nez p1, :cond_0

    .line 8347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8349
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8350
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 8352
    return-object p0
.end method

.method public setNewCountryCode(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7713
    if-nez p1, :cond_0

    .line 7714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7716
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7717
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7719
    return-object p0
.end method

.method public setNewCountryCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7729
    if-nez p1, :cond_0

    .line 7730
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7732
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7733
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7735
    return-object p0
.end method

.method public setNumGaiaAccounts(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8031
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8032
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->numGaiaAccounts_:I

    .line 8034
    return-object p0
.end method

.method public setOldCountryCode(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7766
    if-nez p1, :cond_0

    .line 7767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7769
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7770
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7772
    return-object p0
.end method

.method public setOldCountryCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7782
    if-nez p1, :cond_0

    .line 7783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7785
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7786
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7788
    return-object p0
.end method

.method public setPhoneTopDisplay(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7938
    if-nez p1, :cond_0

    .line 7939
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7941
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7942
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 7944
    return-object p0
.end method

.method public setRimVendorId(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7575
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7576
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->rimVendorId_:I

    .line 7578
    return-object p0
.end method

.method public setSafeSearchFilter(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7509
    if-nez p1, :cond_0

    .line 7510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7512
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7513
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 7515
    return-object p0
.end method

.method public setSignalStrength(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7673
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7674
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->signalStrength_:I

    .line 7676
    return-object p0
.end method

.method public setSuggestionSource(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7962
    if-nez p1, :cond_0

    .line 7963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7965
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7966
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 7968
    return-object p0
.end method

.method public setSuggestionSourceIndex(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7986
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7987
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSourceIndex_:I

    .line 7989
    return-object p0
.end method

.method public setTcpApnSetting(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7615
    if-nez p1, :cond_0

    .line 7616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7618
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7619
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7621
    return-object p0
.end method

.method public setTcpApnSettingBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7631
    if-nez p1, :cond_0

    .line 7632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7634
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7635
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7637
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7024
    if-nez p1, :cond_0

    .line 7025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7027
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7028
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7030
    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7040
    if-nez p1, :cond_0

    .line 7041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7043
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7044
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7046
    return-object p0
.end method

.method public setTextModification(Lcom/google/protos/MobileappsExtensions$TextModification$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8380
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8382
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8383
    return-object p0
.end method

.method public setTextModification(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8370
    if-nez p1, :cond_0

    .line 8371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8373
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8375
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8376
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7382
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7383
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->timestamp_:J

    .line 7385
    return-object p0
.end method

.method public setUserStudyId(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6947
    if-nez p1, :cond_0

    .line 6948
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6950
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6951
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6953
    return-object p0
.end method

.method public setUserStudyIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6963
    if-nez p1, :cond_0

    .line 6964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6966
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6967
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6969
    return-object p0
.end method

.method public setUtteranceId(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7422
    if-nez p1, :cond_0

    .line 7423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7425
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7426
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7428
    return-object p0
.end method

.method public setUtteranceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7438
    if-nez p1, :cond_0

    .line 7439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7441
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7442
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7444
    return-object p0
.end method

.method public setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8208
    if-nez p1, :cond_0

    .line 8209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8211
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8212
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8214
    return-object p0
.end method

.method public setVoiceSearchActionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8224
    if-nez p1, :cond_0

    .line 8225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8227
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8228
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8230
    return-object p0
.end method

.method public setVoiceSearchActionSlot(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8261
    if-nez p1, :cond_0

    .line 8262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8264
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8265
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8267
    return-object p0
.end method

.method public setVoiceSearchActionSlotBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8277
    if-nez p1, :cond_0

    .line 8278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8280
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8281
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8283
    return-object p0
.end method

.method public setVoiceSearchButton(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 7649
    if-nez p1, :cond_0

    .line 7650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7652
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7653
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 7655
    return-object p0
.end method

.method public setVoiceSearchContactAddressType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8413
    if-nez p1, :cond_0

    .line 8414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8416
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8417
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 8419
    return-object p0
.end method

.method public setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7475
    if-nez p1, :cond_0

    .line 7476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7478
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7479
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7481
    return-object p0
.end method

.method public setVoiceSearchLanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 7491
    if-nez p1, :cond_0

    .line 7492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7494
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7495
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7497
    return-object p0
.end method
