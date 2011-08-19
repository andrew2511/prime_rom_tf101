.class public interface abstract Lcom/amazon/kcp/store/IStoreController;
.super Ljava/lang/Object;
.source "IStoreController.java"

# interfaces
.implements Lcom/amazon/kcp/application/ISubAppController;


# virtual methods
.method public abstract getModelFactory()Lcom/amazon/kcp/internal/webservices/WebservicesModelFactory;
.end method

.method public abstract showAlreadyOwnPage(Ljava/lang/String;Lcom/amazon/kcp/store/models/IBuyResultsModel;)Lcom/amazon/kcp/store/pages/IBuyResultsPage;
.end method

.method public abstract showBestSellers()V
.end method

.method public abstract showBrowse()V
.end method

.method public abstract showBrowseNodePage(Lcom/amazon/kcp/application/internal/commands/CLoadMoreCommand;Lcom/amazon/kcp/store/models/internal/CSearchModel;)Lcom/amazon/kcp/store/pages/ISearchPage;
.end method

.method public abstract showBrowsePage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/store/models/internal/CBrowseModel;)Lcom/amazon/kcp/store/pages/IBrowsePage;
.end method

.method public abstract showBrowseSubcategoryPage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/store/models/internal/CBrowseModel;)Lcom/amazon/kcp/store/pages/IBrowsePage;
.end method

.method public abstract showCustomerReviewsPage(Lcom/amazon/kcp/application/internal/commands/CLoadMoreCommand;Lcom/amazon/kcp/store/models/internal/CReviewsModel;Lcom/amazon/kcp/store/models/IBookDetails;)Lcom/amazon/kcp/store/pages/IReviewsPage;
.end method

.method public abstract showDetailDescriptionPage(Lcom/amazon/kcp/store/models/IBookDetails;)V
.end method

.method public abstract showDetailPage(Lcom/amazon/kcp/application/internal/ICommand;Lcom/amazon/kcp/store/models/IDetailsModel;Lcom/amazon/system/drawing/Image;)Lcom/amazon/kcp/store/pages/IDetailsPage;
.end method

.method public abstract showDetailTopSecondaryPage(Lcom/amazon/kcp/store/models/IBookDetails;)V
.end method

.method public abstract showDetailedReviewPage(Lcom/amazon/kcp/store/models/IReviewInfo;Lcom/amazon/kcp/store/models/IBookDetails;)V
.end method

.method public abstract showEditorsPicks()V
.end method

.method public abstract showListPage(Lcom/amazon/kcp/application/internal/commands/CLoadMoreCommand;Lcom/amazon/kcp/store/models/internal/CSearchModel;)Lcom/amazon/kcp/store/pages/ISearchPage;
.end method

.method public abstract showNewNoteworthy()V
.end method

.method public abstract showRecommended()V
.end method

.method public abstract showSearchPage(Lcom/amazon/kcp/application/internal/commands/CLoadMoreCommand;Lcom/amazon/kcp/store/models/internal/CSearchModel;)Lcom/amazon/kcp/store/pages/ISearchPage;
.end method

.method public abstract showSimilaritiesPage(Lcom/amazon/kcp/application/internal/commands/CLoadMoreCommand;Lcom/amazon/kcp/store/models/internal/CSearchModel;)Lcom/amazon/kcp/store/pages/ISearchPage;
.end method

.method public abstract showStorefrontPage()Lcom/amazon/kcp/store/pages/IStorefrontPage;
.end method

.method public abstract showThankYouPage(Ljava/lang/String;ILcom/amazon/kcp/store/models/IBuyResultsModel;)Lcom/amazon/kcp/store/pages/IBuyResultsPage;
.end method

.method public abstract showTopSellers()V
.end method

.method public abstract showUnBuyPage(Ljava/lang/String;Lcom/amazon/kcp/store/models/IBuyResultsModel;)Lcom/amazon/kcp/store/pages/IBuyResultsPage;
.end method
