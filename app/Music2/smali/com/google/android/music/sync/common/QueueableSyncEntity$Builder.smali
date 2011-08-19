.class public interface abstract Lcom/google/android/music/sync/common/QueueableSyncEntity$Builder;
.super Ljava/lang/Object;
.source "QueueableSyncEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/common/QueueableSyncEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parse(Landroid/database/Cursor;)Lcom/google/android/music/sync/common/QueueableSyncEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method
