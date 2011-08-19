.class public interface abstract Lcom/amazon/kcp/library/ILibraryController;
.super Ljava/lang/Object;
.source "ILibraryController.java"

# interfaces
.implements Lcom/amazon/kcp/application/ISubAppController;


# virtual methods
.method public abstract getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;
.end method

.method public abstract getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;
.end method

.method public abstract getCatalogViewCache()Lcom/amazon/kcp/library/models/CatalogViewCache;
.end method

.method public abstract getContentCatalog()Lcom/amazon/kcp/library/models/IContentCatalog;
.end method

.method public abstract getDictionaryManager()Lcom/amazon/kcp/library/dictionary/IDictionaryManager;
.end method

.method public abstract getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;
.end method

.method public abstract showArchivedItemsPage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;)Lcom/amazon/kcp/library/pages/IArchivedItemsPage;
.end method

.method public abstract showArchivedItemsPage()V
.end method

.method public abstract showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;
.end method
