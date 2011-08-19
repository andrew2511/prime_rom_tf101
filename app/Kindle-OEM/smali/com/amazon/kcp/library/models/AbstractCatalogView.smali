.class public abstract Lcom/amazon/kcp/library/models/AbstractCatalogView;
.super Ljava/lang/Object;
.source "AbstractCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView;


# instance fields
.field protected final catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

.field private final parentView:Lcom/amazon/kcp/library/models/ICatalogView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ICatalogView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kcp/library/models/AbstractCatalogView;->parentView:Lcom/amazon/kcp/library/models/ICatalogView;

    .line 14
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/AbstractCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    .line 15
    return-void
.end method


# virtual methods
.method public parentView()Lcom/amazon/kcp/library/models/ICatalogView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/models/AbstractCatalogView;->parentView:Lcom/amazon/kcp/library/models/ICatalogView;

    return-object v0
.end method

.method public registerListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/library/models/AbstractCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->register(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 24
    return-void
.end method

.method public unregisterListener(Lcom/amazon/kcp/library/models/ICatalogListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/models/AbstractCatalogView;->catalogChangeEventProvider:Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;->unregister(Lcom/amazon/kcp/library/models/ICatalogListener;)V

    .line 33
    return-void
.end method
