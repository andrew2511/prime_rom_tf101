.class public interface abstract Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProtoOrBuilder;
.super Ljava/lang/Object;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GoogleSearchRequestProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getApplicationIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAttributes(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
.end method

.method public abstract getAttributesCount()I
.end method

.method public abstract getAttributesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getClientIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
.end method

.method public abstract getHttpHeaderCount()I
.end method

.method public abstract getHttpHeaderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatLong()Ljava/lang/String;
.end method

.method public abstract getLatLongBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMasfCookie()Ljava/lang/String;
.end method

.method public abstract getMasfCookieBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
.end method

.method public abstract getSafeSearchFilter()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;
.end method

.method public abstract getUtteranceId()Ljava/lang/String;
.end method

.method public abstract getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasApplicationId()Z
.end method

.method public abstract hasClientId()Z
.end method

.method public abstract hasLatLong()Z
.end method

.method public abstract hasMasfCookie()Z
.end method

.method public abstract hasRecognitionResultSet()Z
.end method

.method public abstract hasSafeSearchFilter()Z
.end method

.method public abstract hasUtteranceId()Z
.end method
