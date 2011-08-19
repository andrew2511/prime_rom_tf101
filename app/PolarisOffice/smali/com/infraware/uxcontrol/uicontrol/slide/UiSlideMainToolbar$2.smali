.class Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar$2;
.super Ljava/lang/Object;
.source "UiSlideMainToolbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;->access$2(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 205
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 202
    return-void
.end method
