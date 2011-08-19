.class Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar$2;
.super Ljava/lang/Object;
.source "UiSheetMainToolbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;->access$2(Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 203
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 200
    return-void
.end method
