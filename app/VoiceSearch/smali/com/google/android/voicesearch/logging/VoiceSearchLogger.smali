.class public Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
.super Ljava/lang/Object;
.source "VoiceSearchLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;,
        Lcom/google/android/voicesearch/logging/VoiceSearchLogger$DebugLogger;,
        Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final ERROR:I = 0x3

.field public static final EVENT_LOG_PROTOBUF:I = 0x0

.field public static final EXTRA_PROTOBUF_BYTES:Ljava/lang/String; = "extra_protobuf_bytes"

.field public static final LISTENING:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final USE_DEBUG_LOGGER:Z = false

.field public static final VOICE_SEARCH_APP_NAME:Ljava/lang/String; = "voice_search_native_app"

.field public static final WORKING:I = 0x2


# instance fields
.field private final mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 70
    new-instance v0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$ServiceLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getNBestChoose(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 529
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_N_BEST_CHOOSE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDroplistCursor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getNBestReveal()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_N_BEST_REVEAL:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryCleared()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 544
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_CLEAR_QUERY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryCorrection()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_QUERY_CORRECTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getResultClicked()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 534
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_SELECT_WEBVIEW_RESULT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getRetry()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->VOICE_SEARCH_RETRY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 158
    return-void
.end method

.method public actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 150
    return-void
.end method

.method public actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 154
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 126
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->listeningCancel()V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->workingCancel()V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->errorCancel()V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public contactMissingAddress(I)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->contactMissingAddress(I)V

    .line 209
    return-void
.end method

.method public disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 205
    return-void
.end method

.method public disambigPresented()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->disambigPresented()V

    .line 201
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->flush()V

    .line 142
    return-void
.end method

.method public helpButtonUsed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->helpButtonUsed(Z)V

    .line 130
    return-void
.end method

.method public personalizationAuthTokenFailure()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationAuthTokenFailure()V

    .line 229
    return-void
.end method

.method public personalizationDashboardLink()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationDashboardLink()V

    .line 225
    return-void
.end method

.method public personalizationMoreLink()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationMoreLink()V

    .line 221
    return-void
.end method

.method public personalizationPopup(Z)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationPopup(Z)V

    .line 217
    return-void
.end method

.method public personalizationSetting(Z)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->personalizationSetting(Z)V

    .line 213
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 138
    return-void
.end method

.method public retry()V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->errorRetry()V

    .line 110
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 111
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->retry()V

    goto :goto_0
.end method

.method public setRecognitionState(I)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mState:I

    .line 134
    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v1, "u"

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v1, "m"

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v1, "s"

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v1, "l"

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_4
    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v1, "i"

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const-string v1, "u"

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->start(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public textModifiedByDeletion(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_DELETION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v2, v3}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->textModified(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;Lcom/google/protos/MobileappsExtensions$TextModification;)V

    .line 197
    return-void
.end method

.method public textModifiedBySuggestions(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->CHOOSE_SUGGESTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v1, v2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->textModified(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;Lcom/google/protos/MobileappsExtensions$TextModification;)V

    .line 163
    return-void
.end method

.method public textModifiedByTyping(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->TAG:Ljava/lang/String;

    const-string v1, "Trying to log a typing length == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 178
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->textModified(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;Lcom/google/protos/MobileappsExtensions$TextModification;)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    :cond_2
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    goto :goto_1

    .line 186
    :cond_3
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->TYPING_INSERTION_PUNCTUATION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    goto :goto_1
.end method

.method public textModifiedByVoice(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    invoke-virtual {v2, v3}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->textModified(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;Lcom/google/protos/MobileappsExtensions$TextModification;)V

    .line 168
    return-void
.end method

.method public videoLaunched()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->mRealLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;

    invoke-interface {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;->videoLaunched()V

    .line 146
    return-void
.end method
