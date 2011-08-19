.class public interface abstract Lcom/amazon/kcp/library/models/internal/ISyncMetadata;
.super Ljava/lang/Object;
.source "ISyncMetadata.java"


# virtual methods
.method public abstract deSerializeMetaData(Ljava/lang/String;Lcom/amazon/system/drawing/ImageFactory;)V
.end method

.method public abstract empty(Ljava/lang/String;)V
.end method

.method public abstract getAnnotationSyncStatus()Z
.end method

.method public abstract getMinSyncMetadataRequestIntervalMinutes()I
.end method

.method public abstract getMinTodoItemRequestIntervalMinutes()I
.end method

.method public abstract getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
.end method

.method public abstract getSyncTime()Ljava/lang/String;
.end method

.method public abstract isLoaded()Z
.end method

.method public abstract remove(Lcom/amazon/kcp/library/models/internal/IMetadata;)V
.end method

.method public abstract serializeMetaData(Ljava/lang/String;)V
.end method

.method public abstract setAnnotationSyncStatus(I)V
.end method

.method public abstract setMinSyncMetadataRequestInterval(I)V
.end method

.method public abstract setMinTodoItemRequestInterval(I)V
.end method

.method public abstract setSyncTime(Ljava/lang/String;)V
.end method
