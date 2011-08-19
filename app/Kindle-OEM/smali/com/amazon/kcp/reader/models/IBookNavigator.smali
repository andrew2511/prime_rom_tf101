.class public interface abstract Lcom/amazon/kcp/reader/models/IBookNavigator;
.super Ljava/lang/Object;
.source "IBookNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;
    }
.end annotation


# virtual methods
.method public abstract back()Z
.end method

.method public abstract getDictionaryCapabilities()Lcom/amazon/kcp/library/dictionary/IDictionary;
.end method

.method public abstract getLastPageNumber()I
.end method

.method public abstract getLastPosition()I
.end method

.method public abstract getLocationFromPosition(I)I
.end method

.method public abstract getObjectSelector()Lcom/amazon/kcp/reader/models/IObjectSelector;
.end method

.method public abstract getPageFirstPosition(I)I
.end method

.method public abstract getPageLastPosition(I)I
.end method

.method public abstract getPageNumber()I
.end method

.method public abstract getPageTurnedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getPositionFromLocation(I)I
.end method

.method public abstract getProgress()I
.end method

.method public abstract getStartReadingPosition()I
.end method

.method public abstract getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;
.end method

.method public abstract gotoCover()V
.end method

.method public abstract gotoFirstPage()V
.end method

.method public abstract gotoPosition(I)V
.end method

.method public abstract gotoStartReadingPosition()V
.end method

.method public abstract gotoTOC()V
.end method

.method public abstract hasCoverPage()Z
.end method

.method public abstract hasTOC()Z
.end method

.method public abstract isBackAvailable()Z
.end method

.method public abstract isNextLineAvailable()Z
.end method

.method public abstract isNextPageAvailable()Z
.end method

.method public abstract isPreviousLineAvailable()Z
.end method

.method public abstract isPreviousPageAvailable()Z
.end method

.method public abstract nextLine()V
.end method

.method public abstract nextPage()V
.end method

.method public abstract previousLine()V
.end method

.method public abstract previousPage()V
.end method

.method public abstract proposeFurthestReadLocation(Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;)Z
.end method
