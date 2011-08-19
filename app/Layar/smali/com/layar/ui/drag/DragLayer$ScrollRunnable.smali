.class Lcom/layar/ui/drag/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/drag/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/layar/ui/drag/DragLayer;


# direct methods
.method constructor <init>(Lcom/layar/ui/drag/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->this$0:Lcom/layar/ui/drag/DragLayer;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->this$0:Lcom/layar/ui/drag/DragLayer;

    invoke-static {v0}, Lcom/layar/ui/drag/DragLayer;->access$0(Lcom/layar/ui/drag/DragLayer;)Lcom/layar/ui/drag/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget v0, p0, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->this$0:Lcom/layar/ui/drag/DragLayer;

    invoke-static {v0}, Lcom/layar/ui/drag/DragLayer;->access$0(Lcom/layar/ui/drag/DragLayer;)Lcom/layar/ui/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/layar/ui/drag/DragScroller;->scrollLeft()V

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->this$0:Lcom/layar/ui/drag/DragLayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ui/drag/DragLayer;->access$1(Lcom/layar/ui/drag/DragLayer;I)V

    .line 613
    :cond_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->this$0:Lcom/layar/ui/drag/DragLayer;

    invoke-static {v0}, Lcom/layar/ui/drag/DragLayer;->access$0(Lcom/layar/ui/drag/DragLayer;)Lcom/layar/ui/drag/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/layar/ui/drag/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 616
    iput p1, p0, Lcom/layar/ui/drag/DragLayer$ScrollRunnable;->mDirection:I

    .line 617
    return-void
.end method
