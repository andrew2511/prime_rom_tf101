.class Lcom/android/launcher2/CustomizePagedView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CustomizePagedView;->animateDropOntoScreen(Landroid/view/View;Lcom/android/launcher2/ItemInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CustomizePagedView;

.field final synthetic val$dragLayer:Lcom/android/launcher2/DragLayer;

.field final synthetic val$info:Lcom/android/launcher2/ItemInfo;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CustomizePagedView;Lcom/android/launcher2/DragLayer;Landroid/view/View;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView$4;->this$0:Lcom/android/launcher2/CustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$dragLayer:Lcom/android/launcher2/DragLayer;

    iput-object p3, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$info:Lcom/android/launcher2/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$dragLayer:Lcom/android/launcher2/DragLayer;

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 545
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$4;->this$0:Lcom/android/launcher2/CustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher2/CustomizePagedView;->access$200(Lcom/android/launcher2/CustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$info:Lcom/android/launcher2/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)V

    .line 546
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView$4;->val$info:Lcom/android/launcher2/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 547
    return-void
.end method
