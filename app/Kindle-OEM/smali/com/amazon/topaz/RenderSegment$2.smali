.class Lcom/amazon/topaz/RenderSegment$2;
.super Ljava/lang/Object;
.source "RenderSegment.java"

# interfaces
.implements Lcom/amazon/topaz/RenderSegment$Discarder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/RenderSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/RenderSegment;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/RenderSegment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discardData(Lcom/amazon/topaz/internal/layout/LayoutLine;ILcom/amazon/topaz/internal/layout/LayoutLine;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding layout data outside y coordinates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$300(Lcom/amazon/topaz/RenderSegment;)Lcom/amazon/topaz/internal/layout/LayoutEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine;->getRootBlock()Lcom/amazon/topaz/internal/layout/Block;

    move-result-object v0

    sub-int v1, p4, p2

    invoke-virtual {v0, p2, v1}, Lcom/amazon/topaz/internal/layout/Block;->discardOutside(II)V

    .line 73
    if-eqz p3, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    .line 79
    if-ne v1, p3, :cond_4

    .line 90
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    .line 93
    if-ne v0, p1, :cond_5

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 104
    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v1}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 105
    :cond_3
    return-void

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v1}, Lcom/amazon/topaz/RenderSegment;->access$400(Lcom/amazon/topaz/RenderSegment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$2;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$400(Lcom/amazon/topaz/RenderSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method
