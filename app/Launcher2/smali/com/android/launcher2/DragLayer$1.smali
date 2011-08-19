.class Lcom/android/launcher2/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;

.field final synthetic val$childrenLayout:Lcom/android/launcher2/CellLayoutChildren;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/CellLayoutChildren;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$1;->this$0:Lcom/android/launcher2/DragLayer;

    iput-object p2, p0, Lcom/android/launcher2/DragLayer$1;->val$childrenLayout:Lcom/android/launcher2/CellLayoutChildren;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$1;->val$childrenLayout:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->isWidgetBeingResized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$1;->val$childrenLayout:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->clearAllResizeFrames()V

    .line 75
    :cond_0
    return-void
.end method
