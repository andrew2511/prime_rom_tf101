.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalDataOrBuilder;
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
    name = "MultiModalDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGoogleSearchRequestProtoData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHighConfidence()Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract getResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
.end method

.method public abstract getServerHttpUrl()Ljava/lang/String;
.end method

.method public abstract getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getServerProtoUrl()Ljava/lang/String;
.end method

.method public abstract getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSkipWebsearchAction(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
.end method

.method public abstract getSkipWebsearchActionCount()I
.end method

.method public abstract getSkipWebsearchActionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSkipWebsearchAlways()Z
.end method

.method public abstract hasData()Z
.end method

.method public abstract hasGoogleSearchRequestProtoData()Z
.end method

.method public abstract hasHighConfidence()Z
.end method

.method public abstract hasPriority()Z
.end method

.method public abstract hasResponseContentEncoding()Z
.end method

.method public abstract hasServerHttpUrl()Z
.end method

.method public abstract hasServerProtoUrl()Z
.end method

.method public abstract hasSkipWebsearchAlways()Z
.end method
