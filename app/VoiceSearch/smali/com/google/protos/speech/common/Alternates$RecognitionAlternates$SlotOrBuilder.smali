.class public interface abstract Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$SlotOrBuilder;
.super Ljava/lang/Object;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$RecognitionAlternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlotOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlternate(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
.end method

.method public abstract getAlternateCount()I
.end method

.method public abstract getAlternateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstWord()I
.end method

.method public abstract getOriginalPhraseConfidence()F
.end method

.method public abstract getPhraseLength()I
.end method

.method public abstract hasFirstWord()Z
.end method

.method public abstract hasOriginalPhraseConfidence()Z
.end method

.method public abstract hasPhraseLength()Z
.end method
