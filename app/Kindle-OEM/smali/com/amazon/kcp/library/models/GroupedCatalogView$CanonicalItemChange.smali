.class public Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;
.super Ljava/lang/Object;
.source "GroupedCatalogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/GroupedCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanonicalItemChange"
.end annotation


# instance fields
.field public final originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

.field public final updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 0
    .parameter "original"
    .parameter "updated"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->originalCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 62
    iput-object p2, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$CanonicalItemChange;->updatedCanonicalItem:Lcom/amazon/kcp/library/models/ICatalogItem;

    .line 63
    return-void
.end method
