.class public interface abstract Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;
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
    name = "RecognitionLanguageOrBuilder"
.end annotation


# virtual methods
.method public abstract getLanguageTag()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
.end method

.method public abstract getLocalizedName()Ljava/lang/String;
.end method

.method public abstract getLocalizedNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMatchingLanguage(I)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
.end method

.method public abstract getMatchingLanguageCount()I
.end method

.method public abstract getMatchingLanguageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasLanguageTag()Z
.end method

.method public abstract hasLocalizedName()Z
.end method

.method public abstract hasName()Z
.end method
