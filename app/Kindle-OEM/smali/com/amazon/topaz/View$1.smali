.class Lcom/amazon/topaz/View$1;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/amazon/topaz/RenderSegment$LayoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/View;->layoutForward(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/View;

.field final synthetic val$stopper:Lcom/amazon/topaz/RenderSegment$LayoutCallback;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/View;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/amazon/topaz/View$1;->this$0:Lcom/amazon/topaz/View;

    iput-object p2, p0, Lcom/amazon/topaz/View$1;->val$stopper:Lcom/amazon/topaz/RenderSegment$LayoutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldContinueLayout(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z
    .locals 1
    .parameter "lastLine"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/amazon/topaz/View$1;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v0}, Lcom/amazon/topaz/View;->access$400(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/View$PageTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/View$PageTracker;->linesAdded()V

    .line 486
    iget-object v0, p0, Lcom/amazon/topaz/View$1;->val$stopper:Lcom/amazon/topaz/RenderSegment$LayoutCallback;

    invoke-interface {v0, p1}, Lcom/amazon/topaz/RenderSegment$LayoutCallback;->shouldContinueLayout(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z

    move-result v0

    return v0
.end method
