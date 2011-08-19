.class public interface abstract Lcom/amazon/kcp/reader/models/IBookDocument;
.super Ljava/lang/Object;
.source "IBookDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;
    }
.end annotation


# virtual methods
.method public abstract clearCachedSearchResults()V
.end method

.method public abstract closeDocument()V
.end method

.method public abstract getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;
.end method

.method public abstract getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;
.end method

.method public abstract getCachedSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method public abstract getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;
.end method

.method public abstract getDocumentCloseEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;
.end method

.method public abstract getNoteSelectionListener()Lcom/amazon/foundation/internal/INoteSelectionListener;
.end method

.method public abstract getShowBookBuyEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getShowBookDetailsEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract saveLocalBookState()V
.end method

.method public abstract search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;)Ljava/lang/Runnable;
.end method

.method public abstract setApplicationCommands(Lcom/mobipocket/common/library/reader/ApplicationCommands;)V
.end method

.method public abstract setCachedSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V
.end method

.method public abstract setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V
.end method
