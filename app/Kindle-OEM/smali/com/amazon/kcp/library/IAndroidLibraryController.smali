.class public interface abstract Lcom/amazon/kcp/library/IAndroidLibraryController;
.super Ljava/lang/Object;
.source "IAndroidLibraryController.java"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryController;


# virtual methods
.method public abstract getArchivedItemsPage()Lcom/amazon/kcp/library/pages/IArchivedItemsPage;
.end method

.method public abstract getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;
.end method

.method public abstract getLocalLibraryPage()Lcom/amazon/kcp/library/pages/internal/CLibraryPage;
.end method

.method public abstract refreshBookDirectory()V
.end method

.method public abstract search(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchAi(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchLocal(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/search/SearchResult;",
            ">;"
        }
    .end annotation
.end method
