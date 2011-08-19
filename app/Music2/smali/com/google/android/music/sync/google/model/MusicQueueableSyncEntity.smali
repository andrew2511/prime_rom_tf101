.class public interface abstract Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
.super Ljava/lang/Object;
.source "MusicQueueableSyncEntity.java"

# interfaces
.implements Lcom/google/android/music/sync/common/QueueableSyncEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;
    }
.end annotation


# virtual methods
.method public abstract getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
.end method

.method public abstract getCreationTimestamp()J
.end method

.method public abstract getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
.end method

.method public abstract getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
.end method

.method public abstract getLastModifiedTimestamp()J
.end method

.method public abstract getLocalId()J
.end method

.method public abstract getRemoteId()Ljava/lang/String;
.end method

.method public abstract getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
.end method

.method public abstract isDeleted()Z
.end method

.method public abstract serializeAsJson()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract setCreationTimestamp(J)V
.end method

.method public abstract setIsDeleted(Z)V
.end method

.method public abstract setLastModifiedTimestamp(J)V
.end method

.method public abstract setRemoteId(Ljava/lang/String;)V
.end method

.method public abstract validateForUpstreamDelete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract validateForUpstreamInsert()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract validateForUpstreamUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation
.end method
