.class public interface abstract Lcom/google/protos/speech/service/SpeechService$CreateSessionResponseOrBuilder;
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
    name = "CreateSessionResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientExperimentConfig()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
.end method

.method public abstract getClientExperimentConfigHash()I
.end method

.method public abstract getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
.end method

.method public abstract getStunId()Ljava/lang/String;
.end method

.method public abstract getStunIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasClientExperimentConfig()Z
.end method

.method public abstract hasClientExperimentConfigHash()Z
.end method

.method public abstract hasServerAddress()Z
.end method

.method public abstract hasStunId()Z
.end method
