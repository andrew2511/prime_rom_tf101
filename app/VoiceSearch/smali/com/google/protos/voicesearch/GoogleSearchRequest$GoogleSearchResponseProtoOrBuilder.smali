.class public interface abstract Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProtoOrBuilder;
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
    name = "GoogleSearchResponseProtoOrBuilder"
.end annotation


# virtual methods
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

.method public abstract getResult(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
.end method

.method public abstract getResultCount()I
.end method

.method public abstract getResultList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
            ">;"
        }
    .end annotation
.end method
