.class public interface abstract Lcom/amazon/kcp/library/pages/ILibraryPage;
.super Ljava/lang/Object;
.source "ILibraryPage.java"

# interfaces
.implements Lcom/amazon/kcp/application/IBasePage;


# virtual methods
.method public abstract deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z
.end method

.method public abstract gotoArchivedItems()V
.end method

.method public abstract openBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
.end method

.method public abstract retryDownload(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
.end method
