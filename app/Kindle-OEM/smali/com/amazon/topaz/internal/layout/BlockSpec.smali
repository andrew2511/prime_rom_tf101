.class abstract Lcom/amazon/topaz/internal/layout/BlockSpec;
.super Ljava/lang/Object;
.source "BlockSpec.java"


# instance fields
.field public final common:Lcom/amazon/topaz/internal/layout/CommonStyles;

.field public final what:Lcom/amazon/topaz/internal/book/Container;


# direct methods
.method protected constructor <init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/layout/CommonStyles;)V
    .locals 0
    .parameter "what"
    .parameter "common"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    .line 24
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    .line 25
    return-void
.end method


# virtual methods
.method abstract createChild(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;ZZI)Lcom/amazon/topaz/internal/layout/BlockSpec;
.end method

.method public abstract getBottomMargin()I
.end method

.method public abstract getDisplay()I
.end method

.method public abstract getLeft()I
.end method

.method public abstract getRight()I
.end method

.method public abstract getTopMargin()I
.end method

.method public abstract getWidth()I
.end method

.method isCompatible(Lcom/amazon/topaz/internal/layout/BlockSpec;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 85
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/CommonStyles;->isCompatible(Lcom/amazon/topaz/internal/layout/CommonStyles;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 81
    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldAddLine()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
