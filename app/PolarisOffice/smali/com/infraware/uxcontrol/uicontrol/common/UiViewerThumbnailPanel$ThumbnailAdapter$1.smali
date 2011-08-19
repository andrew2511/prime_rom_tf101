.class Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter$1;
.super Ljava/lang/Object;
.source "UiViewerThumbnailPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter$1;->this$1:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 332
    .local v0, oContainer:Landroid/view/ViewGroup;
    if-eqz p2, :cond_0

    .line 333
    const v1, 0x7f0202f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    const v1, 0x7f0202f5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method
