.class public Lcom/amazon/kcp/store/internal/commands/CStorefrontCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "CStorefrontCommand.java"


# instance fields
.field private storeController:Lcom/amazon/kcp/store/IStoreController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/IStoreController;)V
    .locals 0
    .parameter "storeController"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/CStorefrontCommand;->storeController:Lcom/amazon/kcp/store/IStoreController;

    .line 22
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/internal/commands/CStorefrontCommand;->setError(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/amazon/kcp/store/internal/commands/CStorefrontCommand;->kill()V

    .line 34
    return-void
.end method
