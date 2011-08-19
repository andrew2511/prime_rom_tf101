.class public abstract Lcom/amazon/foundation/internal/CAsynchronousCallback;
.super Ljava/lang/Object;
.source "CAsynchronousCallback.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IAsynchronousCallback;


# instance fields
.field private error:Z

.field killEvent:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->error:Z

    .line 14
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->killEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-void
.end method


# virtual methods
.method public getKillEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->killEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->error:Z

    return v0
.end method

.method protected notifyKillEvent()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->killEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 35
    return-void
.end method

.method protected setError(Z)V
    .locals 0
    .parameter "error"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->error:Z

    .line 42
    return-void
.end method
