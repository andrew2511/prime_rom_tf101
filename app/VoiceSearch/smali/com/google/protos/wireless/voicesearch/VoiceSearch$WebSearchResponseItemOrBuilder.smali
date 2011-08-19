.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItemOrBuilder;
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
    name = "WebSearchResponseItemOrBuilder"
.end annotation


# virtual methods
.method public abstract getHttpHeader(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
.end method

.method public abstract getHttpHeaderCount()I
.end method

.method public abstract getHttpHeaderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageHtml()Ljava/lang/String;
.end method

.method public abstract getPageHtmlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPageHtmlEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract getQueryBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasPageHtml()Z
.end method

.method public abstract hasPageHtmlEncoding()Z
.end method

.method public abstract hasQuery()Z
.end method

.method public abstract hasUrl()Z
.end method
