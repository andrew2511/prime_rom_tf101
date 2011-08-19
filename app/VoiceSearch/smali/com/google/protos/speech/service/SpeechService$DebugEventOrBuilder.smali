.class public interface abstract Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;
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
    name = "DebugEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getDurationMs()J
.end method

.method public abstract getStartTimeMs()J
.end method

.method public abstract getSubevent(I)Lcom/google/protos/speech/service/SpeechService$DebugEvent;
.end method

.method public abstract getSubeventCount()I
.end method

.method public abstract getSubeventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasDurationMs()Z
.end method

.method public abstract hasStartTimeMs()Z
.end method

.method public abstract hasText()Z
.end method
