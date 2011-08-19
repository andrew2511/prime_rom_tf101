.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammarOrBuilder;
.super Ljava/lang/Object;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurableGrammarOrBuilder"
.end annotation


# virtual methods
.method public abstract getGaiaAuthenticationToken(I)Ljava/lang/String;
.end method

.method public abstract getGaiaAuthenticationTokenBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGaiaAuthenticationTokenCount()I
.end method

.method public abstract getGaiaAuthenticationTokenList()Ljava/util/List;
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

.method public abstract getKansasId()Ljava/lang/String;
.end method

.method public abstract getKansasIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUseSpeechpersonalizationGaiaAuthenticationTokens()Z
.end method

.method public abstract hasKansasId()Z
.end method

.method public abstract hasUseSpeechpersonalizationGaiaAuthenticationTokens()Z
.end method
