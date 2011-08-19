.class public interface abstract Lcom/amazon/kcp/application/IAnnotationCache;
.super Ljava/lang/Object;
.source "IAnnotationCache.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAnnotationUpdateHandler;


# virtual methods
.method public abstract equalsIgnoreJournalTimestamp(Ljava/lang/String;)Z
.end method

.method public abstract getJournal()Ljava/lang/String;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isSyncAnnotationsOn()Z
.end method

.method public abstract resetJournal()V
.end method

.method public abstract serialize()V
.end method

.method public abstract setAnnotationSyncStatus(Z)V
.end method
