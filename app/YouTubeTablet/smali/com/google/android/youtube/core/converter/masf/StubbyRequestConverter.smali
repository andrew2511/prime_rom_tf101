.class public Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;
.super Ljava/lang/Object;
.source "StubbyRequestConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lcom/google/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<TF;",
        "Lcom/google/android/youtube/googlemobile/masf/protocol/Request;",
        ">;"
    }
.end annotation


# instance fields
.field private final serviceString:Ljava/lang/String;

.field private final serviceVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter "serviceString"
    .parameter "serviceVersion"

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;,"Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter<TF;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-ltz p2, :cond_0

    move v0, v3

    :goto_0
    const-string v1, "service version number should be > 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 25
    const v0, 0xffff

    if-gt p2, v0, :cond_1

    move v0, v3

    :goto_1
    const-string v1, "service version should be <= 0xffff"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 26
    iput p2, p0, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;->serviceVersion:I

    .line 27
    const-string v0, "service string can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;->serviceString:Ljava/lang/String;

    .line 28
    return-void

    :cond_0
    move v0, v2

    .line 24
    goto :goto_0

    :cond_1
    move v0, v2

    .line 25
    goto :goto_1
.end method


# virtual methods
.method public convertRequest(Lcom/google/protobuf/MessageLite;)Lcom/google/android/youtube/googlemobile/masf/protocol/Request;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/google/android/youtube/googlemobile/masf/protocol/Request;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;,"Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter<TF;>;"
    .local p1, request:Lcom/google/protobuf/MessageLite;,"TF;"
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/protocol/PlainRequest;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;->serviceString:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;->serviceVersion:I

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    return-object v0
.end method

.method public bridge synthetic convertRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;,"Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter<TF;>;"
    check-cast p1, Lcom/google/protobuf/MessageLite;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;->convertRequest(Lcom/google/protobuf/MessageLite;)Lcom/google/android/youtube/googlemobile/masf/protocol/Request;

    move-result-object v0

    return-object v0
.end method
