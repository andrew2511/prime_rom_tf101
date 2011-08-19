.class Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$2;
.super Ljava/lang/Object;
.source "UiViewerThumbnailPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getSurfaceView()Lcom/infraware/common/UxSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxSurfaceView;->setWillNotDraw(Z)V

    .line 153
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oDrawer:Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->show(Z)V

    .line 155
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxDocViewerBase;->showTitleProgress(Z)V

    .line 156
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 149
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 146
    return-void
.end method
