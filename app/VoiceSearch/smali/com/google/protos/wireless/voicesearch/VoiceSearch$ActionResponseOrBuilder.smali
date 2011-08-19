.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponseOrBuilder;
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
    name = "ActionResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getDisplayDisambiguation()Z
.end method

.method public abstract getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
.end method

.method public abstract getHypothesisCount()I
.end method

.method public abstract getHypothesisList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation
.end method

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

.method public abstract hasDisplayDisambiguation()Z
.end method
