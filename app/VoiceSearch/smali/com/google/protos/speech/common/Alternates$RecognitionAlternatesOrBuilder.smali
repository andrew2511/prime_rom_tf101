.class public interface abstract Lcom/google/protos/speech/common/Alternates$RecognitionAlternatesOrBuilder;
.super Ljava/lang/Object;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecognitionAlternatesOrBuilder"
.end annotation


# virtual methods
.method public abstract getSlot(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
.end method

.method public abstract getSlotCount()I
.end method

.method public abstract getSlotList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation
.end method
