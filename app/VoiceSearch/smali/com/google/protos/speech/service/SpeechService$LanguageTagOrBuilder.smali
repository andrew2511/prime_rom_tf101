.class public interface abstract Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;
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
    name = "LanguageTagOrBuilder"
.end annotation


# virtual methods
.method public abstract getBaseLanguage()Ljava/lang/String;
.end method

.method public abstract getBaseLanguageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLanguageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRegion()Ljava/lang/String;
.end method

.method public abstract getRegionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getScript()Ljava/lang/String;
.end method

.method public abstract getScriptBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVariant(I)Ljava/lang/String;
.end method

.method public abstract getVariantBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVariantCount()I
.end method

.method public abstract getVariantList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasBaseLanguage()Z
.end method

.method public abstract hasLanguage()Z
.end method

.method public abstract hasRegion()Z
.end method

.method public abstract hasScript()Z
.end method
