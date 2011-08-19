.class public interface abstract Lcom/google/protos/speech/service/SpeechService$RecognizeResponseOrBuilder;
.super Ljava/lang/Object;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecognizeResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getApplicationErrorCode()I
.end method

.method public abstract getDeprecatedPersonalizationEnabled()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
.end method

.method public abstract getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
.end method

.method public abstract getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
.end method

.method public abstract getPartialTranscript()Lcom/google/protos/speech/service/SpeechService$Transcript;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
.end method

.method public abstract getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
.end method

.method public abstract hasApplicationErrorCode()Z
.end method

.method public abstract hasDeprecatedPersonalizationEnabled()Z
.end method

.method public abstract hasGaiaResult()Z
.end method

.method public abstract hasPartialResult()Z
.end method

.method public abstract hasPartialTranscript()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasRecognitionResult()Z
.end method

.method public abstract hasResponse()Z
.end method
