.class public Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter;
.super Ljava/lang/Object;
.source "LocalItemsCatalogFilter.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$1;,
        Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;
    }
.end annotation


# instance fields
.field private final localVisitor:Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;-><init>(Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter;->localVisitor:Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;

    return-void
.end method


# virtual methods
.method public shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter;->localVisitor:Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/models/ICatalogItem;->accept(Lcom/amazon/kcp/library/models/ICatalogItemVisitor;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter;->localVisitor:Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;

    iget-boolean v0, v0, Lcom/amazon/kcp/library/models/LocalItemsCatalogFilter$LocalVisitor;->isLocal:Z

    return v0
.end method
