.class public Lcom/amazon/foundation/internal/ListeningCanceler;
.super Ljava/lang/Object;
.source "ListeningCanceler.java"

# interfaces
.implements Lcom/amazon/foundation/internal/ICanceler;


# instance fields
.field private final inner:Lcom/amazon/foundation/internal/ICanceler;

.field private volatile source:Lcom/amazon/foundation/internal/ICancelRequester;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/ICanceler;)V
    .locals 1
    .parameter "inner"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/foundation/internal/ListeningCanceler;-><init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelRequester;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelRequester;)V
    .locals 0
    .parameter "inner"
    .parameter "source"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/foundation/internal/ListeningCanceler;->inner:Lcom/amazon/foundation/internal/ICanceler;

    .line 38
    iput-object p2, p0, Lcom/amazon/foundation/internal/ListeningCanceler;->source:Lcom/amazon/foundation/internal/ICancelRequester;

    .line 39
    return-void
.end method


# virtual methods
.method public cancelRequested()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/foundation/internal/ListeningCanceler;->inner:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/foundation/internal/ListeningCanceler;->source:Lcom/amazon/foundation/internal/ICancelRequester;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestCancel()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/foundation/internal/ListeningCanceler;->inner:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->requestCancel()V

    .line 54
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/foundation/internal/ListeningCanceler;->inner:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->reset()V

    .line 59
    return-void
.end method

.method public setSource(Lcom/amazon/foundation/internal/ICancelRequester;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazon/foundation/internal/ListeningCanceler;->source:Lcom/amazon/foundation/internal/ICancelRequester;

    .line 49
    return-void
.end method
