.class public interface abstract Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;
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
    name = "RecognitionHypothesisOrBuilder"
.end annotation


# virtual methods
.method public abstract getConfidence()D
.end method

.method public abstract getGrammarId()Ljava/lang/String;
.end method

.method public abstract getGrammarIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
.end method

.method public abstract getInterpretationCount()I
.end method

.method public abstract getInterpretationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSentence()Ljava/lang/String;
.end method

.method public abstract getSentenceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasConfidence()Z
.end method

.method public abstract hasGrammarId()Z
.end method

.method public abstract hasSentence()Z
.end method
