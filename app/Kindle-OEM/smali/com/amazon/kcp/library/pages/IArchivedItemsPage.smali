.class public interface abstract Lcom/amazon/kcp/library/pages/IArchivedItemsPage;
.super Ljava/lang/Object;
.source "IArchivedItemsPage.java"


# virtual methods
.method public abstract downloadBook(Lcom/amazon/kcp/library/models/IListableBook;)V
.end method

.method public abstract downloadCovers([ILcom/amazon/system/drawing/Dimension;)V
.end method

.method public abstract getModel()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;
.end method

.method public abstract getUpdateModelFinishedEvent()Lcom/amazon/foundation/IEventProvider;
.end method
