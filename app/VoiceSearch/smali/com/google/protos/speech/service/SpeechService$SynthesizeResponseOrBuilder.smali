.class public interface abstract Lcom/google/protos/speech/service/SpeechService$SynthesizeResponseOrBuilder;
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
    name = "SynthesizeResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getApplicationErrorCode()I
.end method

.method public abstract getAudioEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;
.end method

.method public abstract getAudioRate()I
.end method

.method public abstract getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
.end method

.method public abstract getStatus()Lcom/google/protos/speech/service/SpeechService$SynthesisStatus;
.end method

.method public abstract hasApplicationErrorCode()Z
.end method

.method public abstract hasAudioEncoding()Z
.end method

.method public abstract hasAudioRate()Z
.end method

.method public abstract hasResponse()Z
.end method

.method public abstract hasStatus()Z
.end method
