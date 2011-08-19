.class Lcom/amazon/topaz/RenderSegment$3;
.super Ljava/lang/Object;
.source "RenderSegment.java"

# interfaces
.implements Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/RenderSegment;->layout(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/RenderSegment;

.field final synthetic val$callback:Lcom/amazon/topaz/RenderSegment$LayoutCallback;

.field final synthetic val$localCanceler:Lcom/amazon/foundation/internal/ICanceler;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/RenderSegment;Lcom/amazon/topaz/RenderSegment$LayoutCallback;Lcom/amazon/foundation/internal/ICanceler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amazon/topaz/RenderSegment$3;->this$0:Lcom/amazon/topaz/RenderSegment;

    iput-object p2, p0, Lcom/amazon/topaz/RenderSegment$3;->val$callback:Lcom/amazon/topaz/RenderSegment$LayoutCallback;

    iput-object p3, p0, Lcom/amazon/topaz/RenderSegment$3;->val$localCanceler:Lcom/amazon/foundation/internal/ICanceler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLayoutComplete()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$3;->this$0:Lcom/amazon/topaz/RenderSegment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/topaz/RenderSegment;->access$502(Lcom/amazon/topaz/RenderSegment;Z)Z

    .line 336
    return-void
.end method

.method public handleLineAdded(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$3;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$400(Lcom/amazon/topaz/RenderSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$3;->val$callback:Lcom/amazon/topaz/RenderSegment$LayoutCallback;

    invoke-interface {v0, p1}, Lcom/amazon/topaz/RenderSegment$LayoutCallback;->shouldContinueLayout(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$3;->val$localCanceler:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->requestCancel()V

    .line 346
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
