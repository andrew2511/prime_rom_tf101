.class public interface abstract Lcom/google/protos/speech/service/SpeechService$SynthesizeRequestOrBuilder;
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
    name = "SynthesizeRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAudioChunkSize()I
.end method

.method public abstract getEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;
.end method

.method public abstract getParams()Lcom/google/protos/speech/service/SpeechService$SynthesisParams;
.end method

.method public abstract getRequest()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
.end method

.method public abstract getSsml()Ljava/lang/String;
.end method

.method public abstract getSsmlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVoice()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
.end method

.method public abstract hasAudioChunkSize()Z
.end method

.method public abstract hasEncoding()Z
.end method

.method public abstract hasParams()Z
.end method

.method public abstract hasRequest()Z
.end method

.method public abstract hasSsml()Z
.end method

.method public abstract hasVoice()Z
.end method
