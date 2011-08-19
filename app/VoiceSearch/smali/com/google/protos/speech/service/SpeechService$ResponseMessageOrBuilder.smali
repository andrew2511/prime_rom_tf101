.class public interface abstract Lcom/google/protos/speech/service/SpeechService$ResponseMessageOrBuilder;
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
    name = "ResponseMessageOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDebugEvent()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
.end method

.method public abstract getErrorDetail()Ljava/lang/String;
.end method

.method public abstract getErrorDetailBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
.end method

.method public abstract getStatus()Lcom/google/protos/speech/service/SpeechService$Status;
.end method

.method public abstract hasDebugEvent()Z
.end method

.method public abstract hasErrorDetail()Z
.end method

.method public abstract hasHeader()Z
.end method

.method public abstract hasStatus()Z
.end method
