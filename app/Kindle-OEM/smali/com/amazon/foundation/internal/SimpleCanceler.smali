.class public Lcom/amazon/foundation/internal/SimpleCanceler;
.super Ljava/lang/Object;
.source "SimpleCanceler.java"

# interfaces
.implements Lcom/amazon/foundation/internal/ICanceler;


# instance fields
.field private volatile cancelRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCanceler;->cancelRequested:Z

    return-void
.end method


# virtual methods
.method public cancelRequested()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCanceler;->cancelRequested:Z

    return v0
.end method

.method public requestCancel()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCanceler;->cancelRequested:Z

    .line 20
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCanceler;->cancelRequested:Z

    .line 25
    return-void
.end method
