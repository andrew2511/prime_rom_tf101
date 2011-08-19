.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;
.super Ljava/lang/Object;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionHypothesisOrBuilder"
.end annotation


# virtual methods
.method public abstract getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
.end method

.method public abstract getInterpretationCount()I
.end method

.method public abstract getInterpretationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSentence()Ljava/lang/String;
.end method

.method public abstract getSentenceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasSentence()Z
.end method
