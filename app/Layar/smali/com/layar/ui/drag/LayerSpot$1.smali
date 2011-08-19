.class Lcom/layar/ui/drag/LayerSpot$1;
.super Ljava/lang/Object;
.source "LayerSpot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/drag/LayerSpot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/drag/LayerSpot;


# direct methods
.method constructor <init>(Lcom/layar/ui/drag/LayerSpot;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$0(Lcom/layar/ui/drag/LayerSpot;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    .line 70
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 60
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-virtual {v0}, Lcom/layar/ui/drag/LayerSpot;->requestFocus()Z

    :cond_1
    :goto_1
    move v0, v3

    .line 70
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$6(Lcom/layar/ui/drag/LayerSpot;)Lcom/layar/ui/drag/DragController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$7(Lcom/layar/ui/drag/LayerSpot;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$6(Lcom/layar/ui/drag/LayerSpot;)Lcom/layar/ui/drag/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v1}, Lcom/layar/ui/drag/LayerSpot;->access$3(Lcom/layar/ui/drag/LayerSpot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-interface {v0, v1, v2, v5, v3}, Lcom/layar/ui/drag/DragController;->startDrag(Landroid/view/View;Lcom/layar/ui/drag/DragSource;Ljava/lang/Object;I)V

    goto :goto_1

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v0}, Lcom/layar/ui/drag/LayerSpot;->access$6(Lcom/layar/ui/drag/LayerSpot;)Lcom/layar/ui/drag/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-static {v1}, Lcom/layar/ui/drag/LayerSpot;->access$3(Lcom/layar/ui/drag/LayerSpot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/ui/drag/LayerSpot$1;->this$0:Lcom/layar/ui/drag/LayerSpot;

    invoke-interface {v0, v1, v2, v5, v4}, Lcom/layar/ui/drag/DragController;->startDrag(Landroid/view/View;Lcom/layar/ui/drag/DragSource;Ljava/lang/Object;I)V

    goto :goto_1
.end method
