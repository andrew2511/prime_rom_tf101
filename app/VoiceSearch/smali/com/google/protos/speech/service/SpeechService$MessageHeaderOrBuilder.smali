.class public interface abstract Lcom/google/protos/speech/service/SpeechService$MessageHeaderOrBuilder;
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
    name = "MessageHeaderOrBuilder"
.end annotation


# virtual methods
.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getApplicationIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRequestId()I
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasApplicationId()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasSessionId()Z
.end method
