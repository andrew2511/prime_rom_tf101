.class Lcom/android/deskclock/DeskClock$11;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;

.field final synthetic val$nightmodeButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;Landroid/widget/ImageButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$11;->this$0:Lcom/android/deskclock/DeskClock;

    iput-object p2, p0, Lcom/android/deskclock/DeskClock$11;->val$nightmodeButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 778
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$11;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v2}, Lcom/android/deskclock/DeskClock;->access$1000(Lcom/android/deskclock/DeskClock;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 782
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 783
    .local v1, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$11;->val$nightmodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 784
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 785
    .local v0, gloc:[I
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$11;->val$nightmodeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 786
    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 788
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$11;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v2, v4}, Lcom/android/deskclock/DeskClock;->access$1002(Lcom/android/deskclock/DeskClock;Z)Z

    .line 790
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$11;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v2, v5}, Lcom/android/deskclock/DeskClock;->access$1100(Lcom/android/deskclock/DeskClock;Z)V

    .line 793
    .end local v0           #gloc:[I
    .end local v1           #r:Landroid/graphics/Rect;
    :cond_0
    return v4
.end method
