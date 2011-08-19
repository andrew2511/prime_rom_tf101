.class public interface abstract Lcom/google/protos/speech/service/SpeechService$RecognitionResultOrBuilder;
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
    name = "RecognitionResultOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
.end method

.method public abstract getEndTimeUsec()J
.end method

.method public abstract getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
.end method

.method public abstract getHypothesisCount()I
.end method

.method public abstract getHypothesisList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartTimeUsec()J
.end method

.method public abstract getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
.end method

.method public abstract getUtteranceId()Ljava/lang/String;
.end method

.method public abstract getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWaveformClippedRatio()F
.end method

.method public abstract getWaveformData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAlternates()Z
.end method

.method public abstract hasEndTimeUsec()Z
.end method

.method public abstract hasStartTimeUsec()Z
.end method

.method public abstract hasStatus()Z
.end method

.method public abstract hasUtteranceId()Z
.end method

.method public abstract hasWaveformClippedRatio()Z
.end method

.method public abstract hasWaveformData()Z
.end method
