.class public interface abstract Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponseOrBuilder;
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
    name = "CapabilitiesResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
.end method

.method public abstract getRecognitionLanguageCount()I
.end method

.method public abstract getRecognitionLanguageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
.end method

.method public abstract getSynthesisVoiceCount()I
.end method

.method public abstract getSynthesisVoiceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation
.end method
