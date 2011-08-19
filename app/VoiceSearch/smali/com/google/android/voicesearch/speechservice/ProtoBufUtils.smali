.class public Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;
.super Ljava/lang/Object;
.source "ProtoBufUtils.java"


# static fields
.field static final RC_ENABLED_LANGUAGES:Ljava/lang/String; = "enabledLanguages"

.field private static final RC_FIELD_ID:Ljava/lang/String; = "fieldId"

.field private static final RC_FIELD_NAME:Ljava/lang/String; = "fieldName"

.field private static final RC_HINT:Ljava/lang/String; = "hint"

.field private static final RC_IME_OPTIONS:Ljava/lang/String; = "imeOptions"

.field private static final RC_INPUT_TYPE:Ljava/lang/String; = "inputType"

.field private static final RC_LABEL:Ljava/lang/String; = "label"

.field private static final RC_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final RC_SELECTED_LANGUAGE:Ljava/lang/String; = "selectedLanguage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-static {p1, p2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->addAttributes(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 437
    return-void
.end method

.method private static makeActionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 3
    .parameter

    .prologue
    .line 325
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSupportedActionInterpretations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 327
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v1, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->addSupportedAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeWebSearchRequestData(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->setWebsearchRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    .line 334
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMultislotActionType()I

    move-result v0

    .line 335
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 339
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v2

    .line 340
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->setActionType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    .line 341
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMultislotActionSelectedSlot()Ljava/lang/String;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->setSelectedSlot(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    .line 345
    :cond_2
    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->setMultislotActionContext(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    .line 348
    :cond_3
    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method private static makeApplicationData(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 3
    .parameter

    .prologue
    .line 314
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    .line 315
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->actionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeActionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 316
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public static makeCancelRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 3
    .parameter

    .prologue
    .line 265
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->cancelRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static makeClientReportRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->setClientReport(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    .line 278
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReportRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Encoding;->AMR_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setEncoding(Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 125
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getAudioSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setSampleRate(I)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 126
    invoke-virtual {v0, v5}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setEndpointerEnabled(Z)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 130
    invoke-virtual {v0, v4}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setNoiseCancelerEnabled(Z)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 132
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v1

    .line 133
    if-eqz p1, :cond_2

    .line 134
    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setProtocol(Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 139
    invoke-virtual {v1, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setInputAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 144
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getExperimentHash()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setClientExperimentConfigHash(I)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getCookie()Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v1, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setCookie(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setLocale(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 156
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v5}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableAck(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 158
    invoke-virtual {v0, v4}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableInProgressResponse(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 159
    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isPartialTranscriptsEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnablePartialResults(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isAlternatesEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableRecognitionAlternates(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 163
    invoke-virtual {v1, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setProtocolFeatures(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 165
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->createSessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v1

    invoke-static {p0, v0, v1, v4}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0

    .line 136
    :cond_2
    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Protocol;->HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setProtocol(Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    goto :goto_0
.end method

.method public static makeDestroySessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 3
    .parameter

    .prologue
    .line 270
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->destroySessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static makeMediaDataRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;[BZ)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p2}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->setEndOfData(Z)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    .line 260
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    .line 261
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$MediaData;->mediaData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method private static makeMessageHeader(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v1

    if-lez v1, :cond_1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setRequestId(I)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 310
    :cond_2
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method private static makeRecognitionContext(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->newBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    .line 83
    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 87
    :cond_0
    const-string v1, "fieldName"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setFieldName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 91
    :cond_1
    const-string v1, "fieldId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string v1, "fieldId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setFieldId(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 94
    :cond_2
    const-string v1, "label"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setLabel(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 98
    :cond_3
    const-string v1, "hint"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setHint(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 102
    :cond_4
    const-string v1, "inputType"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    const-string v1, "inputType"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setInputType(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 105
    :cond_5
    const-string v1, "imeOptions"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    const-string v1, "imeOptions"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setImeOptions(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 108
    :cond_6
    const-string v1, "selectedLanguage"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 112
    :cond_7
    const-string v1, "enabledLanguages"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_8

    .line 114
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    .line 115
    invoke-virtual {v0, v4}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->addEnabledKeyboardLanguage(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_8
    invoke-virtual {v0, p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->build()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public static makeRecognizeRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isApiMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getLanguageModel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getLanguageModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->setLanguageModel(Ljava/lang/String;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMaxResults()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->setMaxNbest(I)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 176
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRecognitionContextBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRecognitionContext(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->setRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 181
    :cond_1
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v2

    .line 182
    sget-object v3, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->intentApiGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->build()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 183
    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getClientApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 210
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isProfanityFilterEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setEnableProfanityFilter(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 212
    invoke-static {p0, v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->setPersonalizationToken(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;)V

    .line 214
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputModality;->PUSH_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputModality(Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 215
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputDevice(Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 216
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isCarDock()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 217
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_CAR_DOCK:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputEnvironment(Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 222
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->hasNoiseEstmation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSnr()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setSnr(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 224
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getNoiseLevel()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setNoiseLevel(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 227
    :cond_3
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->recognizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v0

    invoke-static {p0, v1, v0, v6}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0

    .line 186
    :cond_4
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getContactAuthTokens()[Ljava/lang/String;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_5

    .line 189
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->setUseSpeechpersonalizationGaiaAuthenticationTokens(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    .line 190
    array-length v3, v2

    move v4, v6

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 191
    invoke-virtual {v1, v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->addGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 195
    :cond_5
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v2

    .line 196
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->configurableGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 198
    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 203
    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeApplicationData(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    goto/16 :goto_0

    .line 219
    :cond_6
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputEnvironment(Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    goto :goto_1
.end method

.method private static makeRequestAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    .line 442
    invoke-virtual {v0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->setValue(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    .line 443
    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    return-object v0
.end method

.method private static makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "TT;>;TT;Z)",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;"
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    .line 289
    invoke-static {p0, p3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeMessageHeader(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->setHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    .line 290
    invoke-virtual {v0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 291
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method private static makeWebSearchRequestData(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 4
    .parameter

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v1

    .line 358
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 359
    invoke-virtual {v1, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setUtteranceId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 360
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSafeSearchSetting()I

    move-result v0

    invoke-static {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->valueOf(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setSafeSearchFilter(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 362
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setClientId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 365
    const-string v0, "hl"

    invoke-static {}, Lcom/google/android/voicesearch/LanguagePrefManager;->getHlParameter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "gl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "ie"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "v"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "client"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRevClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "source"

    const-string v2, "mobilesearchapp-vs"

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "channel"

    const-string v2, "iss"

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getGeoPosition()Ljava/lang/String;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_0

    .line 377
    const-string v2, "Geo-Position"

    invoke-static {v2, v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->addHttpHeader(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 393
    :cond_0
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 395
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setGoogleSearchRequestProto(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 398
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMofeHttpUrl()Ljava/lang/String;

    move-result-object v1

    .line 399
    if-eqz v1, :cond_1

    .line 400
    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setServerHttpUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMofeProtoUrl()Ljava/lang/String;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_2

    .line 405
    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setServerProtoUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 408
    :cond_2
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->GZIP:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setResponseContentEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 410
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSupportedActionInterpretations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 411
    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 412
    invoke-static {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v2

    .line 413
    if-eqz v2, :cond_3

    .line 414
    invoke-virtual {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->addSkipWebsearchAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    goto :goto_0

    .line 429
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setSkipWebsearchAlways(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 431
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    return-object v0
.end method

.method private static setPersonalizationToken(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isPersonalizationSet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isPersonalizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 235
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setPersonalizationOptIn(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 240
    const/4 v1, 0x0

    .line 241
    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechPersonalizationServiceAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_1
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p1, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 254
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 232
    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getContactAuthTokens()[Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 247
    aget-object v0, v0, v3

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
