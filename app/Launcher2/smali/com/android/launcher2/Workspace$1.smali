.class Lcom/android/launcher2/Workspace$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->initWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0, v7}, Lcom/android/launcher2/Workspace;->access$002(Lcom/android/launcher2/Workspace;Z)Z

    .line 329
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    iput-boolean v8, v0, Lcom/android/launcher2/Workspace;->mSyncWallpaperOffsetWithScroll:Z

    .line 330
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$ShrinkState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v0, v1, :cond_2

    .line 331
    const/4 v6, 0x0

    .line 332
    .local v6, layout:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/DragView;IIII)Lcom/android/launcher2/CellLayout;

    move-result-object v6

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/SpringLoadedDragController;

    move-result-object v0

    if-nez v6, :cond_1

    move v1, v8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;->onEnterSpringLoadedMode(Z)V

    .line 340
    .end local v6           #layout:Landroid/view/View;
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1002(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 342
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/Workspace;->enableChildrenLayers(Z)V

    .line 343
    return-void

    .restart local v6       #layout:Landroid/view/View;
    :cond_1
    move v1, v7

    .line 336
    goto :goto_0

    .line 338
    .end local v6           #layout:Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0, v7}, Lcom/android/launcher2/Workspace;->access$902(Lcom/android/launcher2/Workspace;Z)Z

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$002(Lcom/android/launcher2/Workspace;Z)Z

    .line 324
    return-void
.end method
