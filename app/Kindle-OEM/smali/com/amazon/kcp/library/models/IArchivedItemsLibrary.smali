.class public interface abstract Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;
.super Ljava/lang/Object;
.source "IArchivedItemsLibrary.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/IBookList;


# virtual methods
.method public abstract cleanupCoverCache()Z
.end method

.method public abstract getAddEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getArchivedBookByAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/internal/IMetadata;
.end method

.method public abstract getArchivedBookFromIndex(I)Lcom/amazon/kcp/library/models/internal/IMetadata;
.end method

.method public abstract getArchivedItemsCountEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getOnLicenseCountErrorEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract sortByAuthor()[I
.end method

.method public abstract sortByTitle()[I
.end method
