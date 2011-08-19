.class public interface abstract Lcom/google/protos/speech/service/SpeechService$MultiRequestMessageOrBuilder;
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
    name = "MultiRequestMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getRequestMessage(I)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
.end method

.method public abstract getRequestMessageCount()I
.end method

.method public abstract getRequestMessageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end method
