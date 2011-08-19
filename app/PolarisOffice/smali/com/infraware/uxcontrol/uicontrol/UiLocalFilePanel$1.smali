.class Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel$1;
.super Ljava/lang/Object;
.source "UiLocalFilePanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel;

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFilePanel;->m_oLocalFilePanel:Lcom/infraware/uxcontrol/uiunit/UiUnit_Panel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Panel;->show(Z)V

    .line 100
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 90
    return-void
.end method
