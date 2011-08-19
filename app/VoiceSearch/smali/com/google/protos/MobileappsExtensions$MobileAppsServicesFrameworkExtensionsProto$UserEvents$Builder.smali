.class public final Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEventsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEventsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

.field private issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

.field private mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

.field private mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

.field private placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

.field private uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

.field private voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16654
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16797
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16840
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16883
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16926
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16969
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 17012
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 17055
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 16655
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->maybeForceBuilderInitialization()V

    .line 16656
    return-void
.end method

.method static synthetic access$18600()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16649
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16661
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 16659
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 2

    .prologue
    .line 16692
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v0

    .line 16693
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16694
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 16696
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 5

    .prologue
    .line 16700
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 16701
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16702
    const/4 v2, 0x0

    .line 16703
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16704
    or-int/lit8 v2, v2, 0x1

    .line 16706
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->access$18802(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16707
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 16708
    or-int/lit8 v2, v2, 0x2

    .line 16710
    :cond_1
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->access$18902(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16711
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 16712
    or-int/lit8 v2, v2, 0x4

    .line 16714
    :cond_2
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->access$19002(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16715
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 16716
    or-int/lit8 v2, v2, 0x8

    .line 16718
    :cond_3
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->access$19102(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16719
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 16720
    or-int/lit8 v2, v2, 0x10

    .line 16722
    :cond_4
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->access$19202(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 16723
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 16724
    or-int/lit8 v2, v2, 0x20

    .line 16726
    :cond_5
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-static {v0, v3}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->access$19302(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 16727
    and-int/lit8 v1, v1, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_6

    .line 16728
    or-int/lit8 v1, v2, 0x40

    .line 16730
    :goto_0
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-static {v0, v2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->access$19402(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 16731
    invoke-static {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->access$19502(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;I)I

    .line 16732
    return-object v0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16665
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16666
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16667
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16668
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16669
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16670
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16671
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16672
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16673
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16674
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 16675
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16676
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 16677
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16678
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 16679
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16680
    return-object p0
.end method

.method public clearGvDialerInfo()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16962
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16964
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16965
    return-object p0
.end method

.method public clearIssInfo()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16876
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16878
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16879
    return-object p0
.end method

.method public clearMobileOrkutEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16919
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16921
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16922
    return-object p0
.end method

.method public clearMobileVideoInfo()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16833
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16835
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16836
    return-object p0
.end method

.method public clearPlacesInfo()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 17091
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 17093
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17094
    return-object p0
.end method

.method public clearUploadInfo()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 17005
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 17007
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17008
    return-object p0
.end method

.method public clearVoiceImeInfo()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 17048
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 17050
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17051
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 2

    .prologue
    .line 16684
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->create()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

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
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->clone()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16649
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1

    .prologue
    .line 16688
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v0

    return-object v0
.end method

.method public getGvDialerInfo()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1

    .prologue
    .line 16931
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public getIssInfo()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1

    .prologue
    .line 16845
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object v0
.end method

.method public getMobileOrkutEvent()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1

    .prologue
    .line 16888
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object v0
.end method

.method public getMobileVideoInfo()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1

    .prologue
    .line 16802
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object v0
.end method

.method public getPlacesInfo()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1

    .prologue
    .line 17060
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object v0
.end method

.method public getUploadInfo()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1

    .prologue
    .line 16974
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object v0
.end method

.method public getVoiceImeInfo()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1

    .prologue
    .line 17017
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object v0
.end method

.method public hasGvDialerInfo()Z
    .locals 2

    .prologue
    .line 16928
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

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

.method public hasIssInfo()Z
    .locals 2

    .prologue
    .line 16842
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

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

.method public hasMobileOrkutEvent()Z
    .locals 2

    .prologue
    .line 16885
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

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

.method public hasMobileVideoInfo()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16799
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlacesInfo()Z
    .locals 2

    .prologue
    .line 17057
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

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

.method public hasUploadInfo()Z
    .locals 2

    .prologue
    .line 16971
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

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

.method public hasVoiceImeInfo()Z
    .locals 2

    .prologue
    .line 17014
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16762
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->hasMobileOrkutEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16763
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->getMobileOrkutEvent()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 16774
    :goto_0
    return v0

    .line 16768
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->hasGvDialerInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16769
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->getGvDialerInfo()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 16771
    goto :goto_0

    .line 16774
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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
    .line 16649
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16649
    check-cast p1, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

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
    .line 16649
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16781
    const/4 v1, 0x0

    .line 16783
    :try_start_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16788
    if-eqz v0, :cond_0

    .line 16789
    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    .line 16792
    :cond_0
    return-object p0

    .line 16784
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 16785
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16786
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16788
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 16789
    invoke-virtual {p0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    :cond_1
    throw v0

    .line 16788
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16736
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 16758
    :goto_0
    return-object v0

    .line 16737
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasMobileVideoInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16738
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getMobileVideoInfo()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeMobileVideoInfo(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    .line 16740
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasIssInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16741
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getIssInfo()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeIssInfo(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    .line 16743
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasMobileOrkutEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16744
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getMobileOrkutEvent()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeMobileOrkutEvent(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    .line 16746
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasGvDialerInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16747
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getGvDialerInfo()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeGvDialerInfo(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    .line 16749
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasUploadInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16750
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getUploadInfo()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeUploadInfo(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    .line 16752
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasVoiceImeInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16753
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getVoiceImeInfo()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeVoiceImeInfo(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    .line 16755
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasPlacesInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16756
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getPlacesInfo()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergePlacesInfo(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    :cond_7
    move-object v0, p0

    .line 16758
    goto :goto_0
.end method

.method public mergeGvDialerInfo(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16950
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16952
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16958
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16959
    return-object p0

    .line 16955
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    goto :goto_0
.end method

.method public mergeIssInfo(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16864
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16866
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16872
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16873
    return-object p0

    .line 16869
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    goto :goto_0
.end method

.method public mergeMobileOrkutEvent(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16907
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16909
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16915
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16916
    return-object p0

    .line 16912
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    goto :goto_0
.end method

.method public mergeMobileVideoInfo(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16821
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16823
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16829
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16830
    return-object p0

    .line 16826
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    goto :goto_0
.end method

.method public mergePlacesInfo(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 2
    .parameter

    .prologue
    .line 17079
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 17081
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 17087
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17088
    return-object p0

    .line 17084
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    goto :goto_0
.end method

.method public mergeUploadInfo(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16993
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16995
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 17001
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17002
    return-object p0

    .line 16998
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    goto :goto_0
.end method

.method public mergeVoiceImeInfo(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 2
    .parameter

    .prologue
    .line 17036
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 17038
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 17044
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17045
    return-object p0

    .line 17041
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    goto :goto_0
.end method

.method public setGvDialerInfo(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16944
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16946
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16947
    return-object p0
.end method

.method public setGvDialerInfo(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16934
    if-nez p1, :cond_0

    .line 16935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16937
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16939
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16940
    return-object p0
.end method

.method public setIssInfo(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16858
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16860
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16861
    return-object p0
.end method

.method public setIssInfo(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16848
    if-nez p1, :cond_0

    .line 16849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16851
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16853
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16854
    return-object p0
.end method

.method public setMobileOrkutEvent(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16901
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16903
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16904
    return-object p0
.end method

.method public setMobileOrkutEvent(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16891
    if-nez p1, :cond_0

    .line 16892
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16894
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16896
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16897
    return-object p0
.end method

.method public setMobileVideoInfo(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16815
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16817
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16818
    return-object p0
.end method

.method public setMobileVideoInfo(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16805
    if-nez p1, :cond_0

    .line 16806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16808
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16810
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16811
    return-object p0
.end method

.method public setPlacesInfo(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17073
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 17075
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17076
    return-object p0
.end method

.method public setPlacesInfo(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17063
    if-nez p1, :cond_0

    .line 17064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17066
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 17068
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17069
    return-object p0
.end method

.method public setUploadInfo(Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16987
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 16989
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16990
    return-object p0
.end method

.method public setUploadInfo(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16977
    if-nez p1, :cond_0

    .line 16978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16980
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 16982
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 16983
    return-object p0
.end method

.method public setVoiceImeInfo(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17030
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 17032
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17033
    return-object p0
.end method

.method public setVoiceImeInfo(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 17020
    if-nez p1, :cond_0

    .line 17021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17023
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 17025
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->bitField0_:I

    .line 17026
    return-object p0
.end method
