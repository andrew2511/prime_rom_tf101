.class Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$1;
.super Ljava/lang/Object;
.source "UiFunctionbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getSurfaceView()Lcom/infraware/common/UxSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxSurfaceView;->setWillNotDraw(Z)V

    .line 101
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;->access$1(Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 97
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 94
    return-void
.end method
