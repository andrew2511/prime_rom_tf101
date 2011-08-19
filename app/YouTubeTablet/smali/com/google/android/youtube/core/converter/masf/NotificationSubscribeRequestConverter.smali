.class public Lcom/google/android/youtube/core/converter/masf/NotificationSubscribeRequestConverter;
.super Ljava/lang/Object;
.source "NotificationSubscribeRequestConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Lcom/google/android/youtube/core/async/NotificationRequest;",
        "Lcom/google/android/youtube/googlemobile/masf/protocol/Request;",
        ">;"
    }
.end annotation


# instance fields
.field private final stubbyConverter:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter",
            "<",
            "Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "serviceString"
    .parameter "serviceVersion"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/masf/NotificationSubscribeRequestConverter;->stubbyConverter:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;

    .line 24
    return-void
.end method

.method static createStubbyRequest(Lcom/google/android/youtube/core/async/NotificationRequest;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 2
    .parameter "request"

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/NotificationRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/NotificationRequest;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/NotificationRequest;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/NotificationRequest;->registrationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->setRegistrationId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/NotificationRequest;->channelIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->addAllChannelIds(Ljava/lang/Iterable;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->build()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertRequest(Lcom/google/android/youtube/core/async/NotificationRequest;)Lcom/google/android/youtube/googlemobile/masf/protocol/Request;
    .locals 2
    .parameter "request"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/masf/NotificationSubscribeRequestConverter;->stubbyConverter:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;

    invoke-static {p1}, Lcom/google/android/youtube/core/converter/masf/NotificationSubscribeRequestConverter;->createStubbyRequest(Lcom/google/android/youtube/core/async/NotificationRequest;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;->convertRequest(Lcom/google/protobuf/MessageLite;)Lcom/google/android/youtube/googlemobile/masf/protocol/Request;

    move-result-object v0

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
    .line 16
    check-cast p1, Lcom/google/android/youtube/core/async/NotificationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/masf/NotificationSubscribeRequestConverter;->convertRequest(Lcom/google/android/youtube/core/async/NotificationRequest;)Lcom/google/android/youtube/googlemobile/masf/protocol/Request;

    move-result-object v0

    return-object v0
.end method
