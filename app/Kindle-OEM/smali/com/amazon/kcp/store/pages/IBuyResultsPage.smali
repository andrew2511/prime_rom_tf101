.class public interface abstract Lcom/amazon/kcp/store/pages/IBuyResultsPage;
.super Ljava/lang/Object;
.source "IBuyResultsPage.java"

# interfaces
.implements Lcom/amazon/kcp/application/IBasePage;


# virtual methods
.method public abstract downloadCovers(Lcom/amazon/system/drawing/Dimension;)V
.end method

.method public abstract getCancelFinishedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getDownloadCompleteEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getDownloadErrorEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getModel()Lcom/amazon/kcp/store/models/IBuyResultsModel;
.end method

.method public abstract goToArchivedItems()V
.end method

.method public abstract goToLibrary()V
.end method

.method public abstract goToStore()V
.end method

.method public abstract registerStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V
.end method

.method public abstract retryDownload()V
.end method

.method public abstract startReading()V
.end method

.method public abstract unBuy()V
.end method

.method public abstract unregisterStatusTracker(Lcom/amazon/foundation/IStatusTracker;)V
.end method
