.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequestOrBuilder;
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
    name = "ActionRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
.end method

.method public abstract getMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
.end method

.method public abstract getSupportedAction(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
.end method

.method public abstract getSupportedActionCount()I
.end method

.method public abstract getSupportedActionList()Ljava/util/List;
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

.method public abstract getWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
.end method

.method public abstract hasMapsRequestData()Z
.end method

.method public abstract hasMultislotActionContext()Z
.end method

.method public abstract hasWebsearchRequestData()Z
.end method
