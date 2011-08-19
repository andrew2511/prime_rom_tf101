.class public final Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEventsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserEvents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    }
.end annotation


# static fields
.field public static final GV_DIALER_INFO_FIELD_NUMBER:I = 0x17

.field public static final ISS_INFO_FIELD_NUMBER:I = 0x13

.field public static final MOBILE_ORKUT_EVENT_FIELD_NUMBER:I = 0x16

.field public static final MOBILE_VIDEO_INFO_FIELD_NUMBER:I = 0x12

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACES_INFO_FIELD_NUMBER:I = 0x1a

.field public static final UPLOAD_INFO_FIELD_NUMBER:I = 0x18

.field public static final VOICE_IME_INFO_FIELD_NUMBER:I = 0x19

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;


# instance fields
.field private bitField0_:I

.field private gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

.field private issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

.field private mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

.field private placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

.field private uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

.field private voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16403
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    .line 17101
    new-instance v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    .line 17102
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->initFields()V

    .line 17103
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16498
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedIsInitialized:B

    .line 16545
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedSerializedSize:I

    .line 16284
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->initFields()V

    .line 16287
    const/4 v0, 0x0

    move v1, v0

    .line 16288
    :goto_0
    if-nez v1, :cond_7

    .line 16289
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 16290
    sparse-switch v0, :sswitch_data_0

    .line 16295
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v4

    :goto_1
    move v1, v0

    .line 16393
    goto :goto_0

    :sswitch_0
    move v0, v4

    .line 16293
    goto :goto_1

    .line 16303
    :sswitch_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_e

    .line 16304
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    move-result-object v0

    move-object v2, v0

    .line 16306
    :goto_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16307
    if-eqz v2, :cond_0

    .line 16308
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;

    .line 16309
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16311
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    move v0, v1

    .line 16312
    goto :goto_1

    .line 16316
    :sswitch_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    .line 16317
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    move-object v2, v0

    .line 16319
    :goto_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16320
    if-eqz v2, :cond_1

    .line 16321
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 16322
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16324
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    move v0, v1

    .line 16325
    goto :goto_1

    .line 16329
    :sswitch_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    .line 16330
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    move-result-object v0

    move-object v2, v0

    .line 16332
    :goto_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16333
    if-eqz v2, :cond_2

    .line 16334
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;

    .line 16335
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16337
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    move v0, v1

    .line 16338
    goto/16 :goto_1

    .line 16342
    :sswitch_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_b

    .line 16343
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    move-object v2, v0

    .line 16345
    :goto_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16346
    if-eqz v2, :cond_3

    .line 16347
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;

    .line 16348
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16350
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    move v0, v1

    .line 16351
    goto/16 :goto_1

    .line 16355
    :sswitch_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_a

    .line 16356
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    move-result-object v0

    move-object v2, v0

    .line 16358
    :goto_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 16359
    if-eqz v2, :cond_4

    .line 16360
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;

    .line 16361
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 16363
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    move v0, v1

    .line 16364
    goto/16 :goto_1

    .line 16368
    :sswitch_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_9

    .line 16369
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    move-object v2, v0

    .line 16371
    :goto_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 16372
    if-eqz v2, :cond_5

    .line 16373
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    .line 16374
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 16376
    :cond_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    move v0, v1

    .line 16377
    goto/16 :goto_1

    .line 16381
    :sswitch_7
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_8

    .line 16382
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    move-result-object v0

    move-object v2, v0

    .line 16384
    :goto_8
    sget-object v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 16385
    if-eqz v2, :cond_6

    .line 16386
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-virtual {v2, v0}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;

    .line 16387
    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 16389
    :cond_6
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 16390
    goto/16 :goto_1

    .line 16400
    :cond_7
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->makeExtensionsImmutable()V

    .line 16402
    return-void

    .line 16394
    :catch_0
    move-exception v0

    .line 16395
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16400
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->makeExtensionsImmutable()V

    throw v0

    .line 16396
    :catch_1
    move-exception v0

    .line 16397
    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    move-object v2, v3

    goto :goto_8

    :cond_9
    move-object v2, v3

    goto :goto_7

    :cond_a
    move-object v2, v3

    goto/16 :goto_6

    :cond_b
    move-object v2, v3

    goto/16 :goto_5

    :cond_c
    move-object v2, v3

    goto/16 :goto_4

    :cond_d
    move-object v2, v3

    goto/16 :goto_3

    :cond_e
    move-object v2, v3

    goto/16 :goto_2

    :cond_f
    move v0, v1

    goto/16 :goto_1

    .line 16290
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x92 -> :sswitch_1
        0x9a -> :sswitch_2
        0xb2 -> :sswitch_3
        0xba -> :sswitch_4
        0xc2 -> :sswitch_5
        0xca -> :sswitch_6
        0xd2 -> :sswitch_7
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
    .line 16261
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 16266
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16498
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedIsInitialized:B

    .line 16545
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedSerializedSize:I

    .line 16268
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 16269
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16498
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedIsInitialized:B

    .line 16545
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedSerializedSize:I

    .line 16269
    return-void
.end method

.method static synthetic access$18802(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;)Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object p1
.end method

.method static synthetic access$18902(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object p1
.end method

.method static synthetic access$19002(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;)Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;)Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object p1
.end method

.method static synthetic access$19202(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$UploadEventInfo;)Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object p1
.end method

.method static synthetic access$19302(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object p1
.end method

.method static synthetic access$19402(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object p1
.end method

.method static synthetic access$19502(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16261
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1

    .prologue
    .line 16273
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 16490
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    .line 16491
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 16492
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    .line 16493
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    .line 16494
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$UploadEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    .line 16495
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 16496
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    .line 16497
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16642
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->access$18600()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16645
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16622
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16628
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16592
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16598
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16633
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16639
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16612
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16618
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16602
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16608
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16261
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
    .locals 1

    .prologue
    .line 16277
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->defaultInstance:Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;

    return-object v0
.end method

.method public getGvDialerInfo()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;
    .locals 1

    .prologue
    .line 16456
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public getIssInfo()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1

    .prologue
    .line 16436
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object v0
.end method

.method public getMobileOrkutEvent()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;
    .locals 1

    .prologue
    .line 16446
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    return-object v0
.end method

.method public getMobileVideoInfo()Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;
    .locals 1

    .prologue
    .line 16426
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16415
    sget-object v0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPlacesInfo()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;
    .locals 1

    .prologue
    .line 16486
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 16547
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedSerializedSize:I

    .line 16548
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 16580
    :goto_0
    return v0

    .line 16550
    :cond_0
    const/4 v0, 0x0

    .line 16551
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 16552
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16555
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 16556
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16559
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 16560
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16563
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 16564
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16567
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 16568
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16571
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 16572
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16575
    :cond_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 16576
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16579
    :cond_7
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getUploadInfo()Lcom/google/protos/MobileappsExtensions$UploadEventInfo;
    .locals 1

    .prologue
    .line 16466
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    return-object v0
.end method

.method public getVoiceImeInfo()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .locals 1

    .prologue
    .line 16476
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object v0
.end method

.method public hasGvDialerInfo()Z
    .locals 2

    .prologue
    .line 16453
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

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
    .line 16433
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

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
    .line 16443
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

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

    .line 16423
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

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
    .line 16483
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

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
    .line 16463
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

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
    .line 16473
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16500
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedIsInitialized:B

    .line 16501
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 16516
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 16501
    goto :goto_0

    .line 16503
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasMobileOrkutEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16504
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getMobileOrkutEvent()Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16505
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedIsInitialized:B

    move v0, v2

    .line 16506
    goto :goto_0

    .line 16509
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->hasGvDialerInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16510
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getGvDialerInfo()Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16511
    iput-byte v2, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedIsInitialized:B

    move v0, v2

    .line 16512
    goto :goto_0

    .line 16515
    :cond_3
    iput-byte v3, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->memoizedIsInitialized:B

    move v0, v3

    .line 16516
    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16261
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16643
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->newBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16261
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;
    .locals 1

    .prologue
    .line 16647
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->newBuilder(Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents$Builder;

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
    .line 16586
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16521
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->getSerializedSize()I

    .line 16522
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 16523
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileVideoInfo_:Lcom/google/protos/MobileappsExtensions$MobileVideoEventInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16525
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 16526
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->issInfo_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16528
    :cond_1
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 16529
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->mobileOrkutEvent_:Lcom/google/protos/MobileappsExtensions$MobileOrkutEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16531
    :cond_2
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 16532
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->gvDialerInfo_:Lcom/google/protos/MobileappsExtensions$GoogleVoiceDialerEventInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16534
    :cond_3
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 16535
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->uploadInfo_:Lcom/google/protos/MobileappsExtensions$UploadEventInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16537
    :cond_4
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 16538
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->voiceImeInfo_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16540
    :cond_5
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 16541
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;->placesInfo_:Lcom/google/protos/MobileappsExtensions$PlacesEventInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16543
    :cond_6
    return-void
.end method
