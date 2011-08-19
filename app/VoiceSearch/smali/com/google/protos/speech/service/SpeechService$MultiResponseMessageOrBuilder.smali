.class public interface abstract Lcom/google/protos/speech/service/SpeechService$MultiResponseMessageOrBuilder;
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
    name = "MultiResponseMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getResponseMessage(I)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
.end method

.method public abstract getResponseMessageCount()I
.end method

.method public abstract getResponseMessageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation
.end method
