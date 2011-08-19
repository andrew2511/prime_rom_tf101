.class public interface abstract Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;
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
    name = "RequestMessageOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getEnableDebug()Z
.end method

.method public abstract getEnableDebugPassword()Ljava/lang/String;
.end method

.method public abstract getEnableDebugPasswordBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
.end method

.method public abstract hasEnableDebug()Z
.end method

.method public abstract hasEnableDebugPassword()Z
.end method

.method public abstract hasHeader()Z
.end method
