.class public interface abstract Lcom/amazon/kcp/library/models/internal/IDownloadManager;
.super Ljava/lang/Object;
.source "IDownloadManager.java"


# virtual methods
.method public abstract cancelMetadataSynchronization(Lcom/amazon/foundation/internal/IBooleanCallback;)V
.end method

.method public abstract cleanupDownload(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z
.end method

.method public abstract deserializeSyncMetadataCache(Ljava/lang/String;)V
.end method

.method public abstract getDownloadAddedEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getDownloadAfterRemovedEvent()Lcom/amazon/foundation/internal/IIndexedDownloadBookItemEventProvider;
.end method

.method public abstract getDownloadBeforeRemovedEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getDownloadBookCount()I
.end method

.method public abstract getDownloadBookItemFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/IDownloadBookItem;
.end method

.method public abstract getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;
.end method

.method public abstract getDownloadUpdatedEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getMinSyncMetadataRequestIntervalMinutes()I
.end method

.method public abstract getOnLicenseCountErrorEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getSyncMetadata()Lcom/amazon/kcp/library/models/internal/ISyncMetadata;
.end method

.method public abstract populatePartialDownloads(Lcom/amazon/system/io/IFileConnectionFactory;)V
.end method

.method public abstract primeSyncMetadataRequest(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reuseBookDetailForDownload(Lcom/amazon/kcp/store/models/IBookDetails;)V
.end method

.method public abstract serializeSyncMetadataCache(Ljava/lang/String;)V
.end method

.method public abstract setMinSyncMetadataRequestInterval(I)V
.end method

.method public abstract setPartialDownloadsList(Ljava/util/Vector;)V
.end method

.method public abstract synchronizeMetadataIfNeeded(Lcom/amazon/foundation/internal/IBooleanCallback;Lcom/amazon/foundation/IStatusTracker;Z)V
.end method
