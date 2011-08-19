.class Lcom/amazon/kcp/reader/models/internal/TPZBookState;
.super Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;
.source "TPZBookState.java"


# instance fields
.field private nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

.field private offscreensToRecycle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/system/drawing/BufferedImageExtended;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

.field private prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;-><init>()V

    .line 16
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 19
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/TPZBookState;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;)V

    .line 16
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 19
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    .line 36
    iget-object v0, p1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 37
    iget-object v0, p1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 38
    iget-object v0, p1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 40
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->clear()V

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->invalidate()V

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->invalidate()V

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->invalidate()V

    .line 129
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 130
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 131
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 132
    return-void
.end method

.method public clearCurrentPage()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->invalidate()V

    .line 102
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 103
    return-void
.end method

.method public clearOffscreensToRecycle()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->dispose()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->dispose()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->dispose()V

    .line 160
    :cond_2
    return-void
.end method

.method public getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    return-object v0
.end method

.method public getNextPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    return-object v0
.end method

.method public getOffscreensToRecycle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/system/drawing/BufferedImageExtended;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    return-object v0
.end method

.method public moveToPrerenderedNextPage()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 51
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->empty()V

    .line 53
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iput-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 54
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iput-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 55
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 56
    return-void
.end method

.method public moveToPrerenderedPrevPage()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->offscreensToRecycle:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->empty()V

    .line 69
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iput-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 70
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iput-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 71
    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, retval:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->prevPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->nextPage:Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v1, :cond_2

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_2
    return-object v0

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 190
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
