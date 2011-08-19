.class public abstract Lcom/amazon/kcp/library/ui/LibraryBookView;
.super Lcom/amazon/kcp/library/ui/CoverRowView;
.source "LibraryBookView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;,
        Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;
    }
.end annotation


# instance fields
.field private bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

.field private final downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

.field private final downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

.field protected updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/ui/CoverRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ui/LibraryBookView$1;-><init>(Lcom/amazon/kcp/library/ui/LibraryBookView;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 126
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ui/LibraryBookView$2;-><init>(Lcom/amazon/kcp/library/ui/LibraryBookView;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 145
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookView;->reset()V

    .line 267
    invoke-super {p0}, Lcom/amazon/kcp/library/ui/CoverRowView;->onDetachedFromWindow()V

    .line 268
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->isRegistered(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    .line 219
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 220
    return-void
.end method

.method public final setBookItemSource(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookView;->reset()V

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->bookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 3
    .parameter

    .prologue
    .line 249
    const-string v0, "<unknown>"

    .line 250
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadTarget()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 252
    const-string v0, "content"

    .line 258
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getMaxDownloadProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    return-void

    .line 254
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadTarget()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 256
    const-string v0, "sidecar"

    goto :goto_0
.end method

.method public setState(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "book"

    .prologue
    .line 168
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->createFromDownloadBookItemState(I)Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 170
    return-void
.end method

.method public setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/LibraryBookView;->getCoverView()Lcom/amazon/kcp/library/ui/BookCoverView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 230
    return-void
.end method

.method public setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;F)V
    .locals 2
    .parameter "updatableCover"
    .parameter "bookLengthPercent"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    new-instance v1, Lcom/amazon/kcp/library/ui/LibraryBookView$3;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/ui/LibraryBookView$3;-><init>(Lcom/amazon/kcp/library/ui/LibraryBookView;F)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 159
    return-void
.end method

.method public setViewPlace(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 240
    return-void
.end method
