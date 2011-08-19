.class public interface abstract Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;
.super Ljava/lang/Object;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecognitionSlotOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getConfidence()F
.end method

.method public abstract getLiteral()Ljava/lang/String;
.end method

.method public abstract getLiteralBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
.end method

.method public abstract getSubslotCount()I
.end method

.method public abstract getSubslotList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract getValueBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasConfidence()Z
.end method

.method public abstract hasLiteral()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasValue()Z
.end method
