.class public interface abstract Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProtoOrBuilder;
.super Ljava/lang/Object;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileAppsServicesFrameworkExtensionsProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getApplicationName()Ljava/lang/String;
.end method

.method public abstract getApplicationNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getApplicationVersion()Ljava/lang/String;
.end method

.method public abstract getApplicationVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBackendRequests(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;
.end method

.method public abstract getBackendRequestsCount()I
.end method

.method public abstract getBackendRequestsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$BackendRequests;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClientLocale()Ljava/lang/String;
.end method

.method public abstract getClientLocaleBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDistributionChannel()Ljava/lang/String;
.end method

.method public abstract getDistributionChannelBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInstallInstanceId()J
.end method

.method public abstract getIsActivationEvent()Z
.end method

.method public abstract getPlatformId()Ljava/lang/String;
.end method

.method public abstract getPlatformIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getProtocolVersion()I
.end method

.method public abstract getRecordedEvent()Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$RecordedEvent;
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getUserEvents(I)Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;
.end method

.method public abstract getUserEventsCount()I
.end method

.method public abstract getUserEventsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$MobileAppsServicesFrameworkExtensionsProto$UserEvents;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasApplicationName()Z
.end method

.method public abstract hasApplicationVersion()Z
.end method

.method public abstract hasClientLocale()Z
.end method

.method public abstract hasDistributionChannel()Z
.end method

.method public abstract hasInstallInstanceId()Z
.end method

.method public abstract hasIsActivationEvent()Z
.end method

.method public abstract hasPlatformId()Z
.end method

.method public abstract hasProtocolVersion()Z
.end method

.method public abstract hasRecordedEvent()Z
.end method

.method public abstract hasRequestId()Z
.end method
