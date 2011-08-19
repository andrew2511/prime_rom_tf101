.class public Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter;
.super Ljava/lang/Object;
.source "ArchivedItemsCatalogFilter.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$1;,
        Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$ArchivedVisitor;
    }
.end annotation


# instance fields
.field private final archiveVisitor:Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$ArchivedVisitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$ArchivedVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$ArchivedVisitor;-><init>(Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter;->archiveVisitor:Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$ArchivedVisitor;

    return-void
.end method


# virtual methods
.method public shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter;->archiveVisitor:Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$ArchivedVisitor;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/models/ICatalogItem;->accept(Lcom/amazon/kcp/library/models/ICatalogItemVisitor;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter;->archiveVisitor:Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$ArchivedVisitor;

    iget-boolean v0, v0, Lcom/amazon/kcp/library/models/ArchivedItemsCatalogFilter$ArchivedVisitor;->isArchived:Z

    return v0
.end method
