.class Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC$1;
.super Ljava/lang/Object;
.source "CMBPBookTOC.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookTOC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "tocItem"
    .parameter "oLocation"

    .prologue
    .line 43
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 44
    .local v1, location:I
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/ITOCItem;

    move-object v2, v0

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/ITOCItem;->getLastPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 52
    .end local p1
    :goto_0
    return v2

    .line 48
    .restart local p1
    :cond_0
    check-cast p1, Lcom/amazon/kcp/reader/models/ITOCItem;

    .end local p1
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/ITOCItem;->getFirstPosition()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 50
    const/4 v2, -0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
