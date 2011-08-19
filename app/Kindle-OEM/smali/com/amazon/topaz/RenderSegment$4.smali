.class Lcom/amazon/topaz/RenderSegment$4;
.super Ljava/lang/Object;
.source "RenderSegment.java"

# interfaces
.implements Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/RenderSegment;->append(Lcom/amazon/topaz/RenderSegment;ILcom/amazon/foundation/internal/ICancelRequester;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/RenderSegment;

.field final synthetic val$targetLastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/RenderSegment;Lcom/amazon/topaz/internal/layout/LayoutLine;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/amazon/topaz/RenderSegment$4;->this$0:Lcom/amazon/topaz/RenderSegment;

    iput-object p2, p0, Lcom/amazon/topaz/RenderSegment$4;->val$targetLastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLayoutComplete()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public handleLineAdded(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z
    .locals 1
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$4;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$400(Lcom/amazon/topaz/RenderSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$4;->val$targetLastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
