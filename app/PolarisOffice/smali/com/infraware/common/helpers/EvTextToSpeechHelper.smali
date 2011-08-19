.class public Lcom/infraware/common/helpers/EvTextToSpeechHelper;
.super Ljava/lang/Object;
.source "EvTextToSpeechHelper.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/infraware/evengine/E$EV_DOCEXTENSION_TYPE;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static isSupportTTS(I)Z
    .locals 1
    .parameter "EV_DOCEXTENSION_TYPE"

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onInit(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 38
    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 0
    .parameter "utteranceId"

    .prologue
    .line 41
    return-void
.end method

.method public speechString(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 35
    return-void
.end method
