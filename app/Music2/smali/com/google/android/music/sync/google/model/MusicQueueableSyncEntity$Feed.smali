.class public interface abstract Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;
.super Ljava/lang/Object;
.source "MusicQueueableSyncEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Feed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getNextPageToken()Ljava/lang/String;
.end method

.method public abstract getUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
.end method
