.class Lcom/amazon/topaz/View$3;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/amazon/topaz/RenderSegment$LayoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/View;->prependRenderSegment(Lcom/amazon/topaz/RenderSegment;Lcom/amazon/foundation/internal/ICancelRequester;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/View;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/View;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/amazon/topaz/View$3;->this$0:Lcom/amazon/topaz/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldContinueLayout(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z
    .locals 2
    .parameter "lastLine"

    .prologue
    .line 616
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/View$3;->this$0:Lcom/amazon/topaz/View;

    invoke-static {v1}, Lcom/amazon/topaz/View;->access$100(Lcom/amazon/topaz/View;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
