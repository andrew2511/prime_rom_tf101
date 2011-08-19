.class Lcom/amazon/topaz/RenderSegment$1;
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
    .line 43
    iput-object p1, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discardData(Lcom/amazon/topaz/internal/layout/LayoutLine;ILcom/amazon/topaz/internal/layout/LayoutLine;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$000(Lcom/amazon/topaz/RenderSegment;)Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Discarding render data outside y coordinates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$000(Lcom/amazon/topaz/RenderSegment;)Lcom/amazon/topaz/internal/drawing/RollingCanvas;

    move-result-object v0

    sub-int v1, p4, p2

    invoke-virtual {v0, p2, v1}, Lcom/amazon/topaz/internal/drawing/RollingCanvas;->discardOutside(II)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$100(Lcom/amazon/topaz/RenderSegment;)I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$100(Lcom/amazon/topaz/RenderSegment;)I

    move-result v0

    sub-int v0, p2, v0

    .line 55
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v1, v0}, Lcom/amazon/topaz/RenderSegment;->access$220(Lcom/amazon/topaz/RenderSegment;I)I

    .line 56
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v1, v0}, Lcom/amazon/topaz/RenderSegment;->access$112(Lcom/amazon/topaz/RenderSegment;I)I

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$100(Lcom/amazon/topaz/RenderSegment;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v1}, Lcom/amazon/topaz/RenderSegment;->access$200(Lcom/amazon/topaz/RenderSegment;)I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p4, :cond_2

    .line 60
    iget-object v0, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v0}, Lcom/amazon/topaz/RenderSegment;->access$100(Lcom/amazon/topaz/RenderSegment;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v1}, Lcom/amazon/topaz/RenderSegment;->access$200(Lcom/amazon/topaz/RenderSegment;)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p4

    .line 61
    iget-object v1, p0, Lcom/amazon/topaz/RenderSegment$1;->this$0:Lcom/amazon/topaz/RenderSegment;

    invoke-static {v1, v0}, Lcom/amazon/topaz/RenderSegment;->access$220(Lcom/amazon/topaz/RenderSegment;I)I

    .line 63
    :cond_2
    return-void
.end method
