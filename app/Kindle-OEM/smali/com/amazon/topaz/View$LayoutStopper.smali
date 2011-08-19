.class Lcom/amazon/topaz/View$LayoutStopper;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/amazon/topaz/RenderSegment$LayoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutStopper"
.end annotation


# instance fields
.field private final offset:I

.field private final page:I

.field final synthetic this$0:Lcom/amazon/topaz/View;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/View;II)V
    .locals 0
    .parameter
    .parameter "page"
    .parameter "offset"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazon/topaz/View$LayoutStopper;->this$0:Lcom/amazon/topaz/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p2, p0, Lcom/amazon/topaz/View$LayoutStopper;->page:I

    .line 199
    iput p3, p0, Lcom/amazon/topaz/View$LayoutStopper;->offset:I

    .line 200
    return-void
.end method


# virtual methods
.method public hasEnoughData()Z
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/amazon/topaz/View$LayoutStopper;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v1}, Lcom/amazon/topaz/View;->access$400(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/View$PageTracker;

    move-result-object v1

    iget v2, p0, Lcom/amazon/topaz/View$LayoutStopper;->page:I

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    .line 213
    .local v0, pageStartIndex:I
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/amazon/topaz/View$LayoutStopper;->offset:I

    add-int/2addr v1, v0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldContinueLayout(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z
    .locals 1
    .parameter "lastLine"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/amazon/topaz/View$LayoutStopper;->hasEnoughData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
