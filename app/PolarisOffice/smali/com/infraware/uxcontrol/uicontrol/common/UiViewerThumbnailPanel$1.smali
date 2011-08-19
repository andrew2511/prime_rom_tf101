.class Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;
.super Landroid/os/Handler;
.source "UiViewerThumbnailPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;
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
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 56
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 59
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 60
    .local v3, oBundle:Landroid/os/Bundle;
    const-string v5, "nIndex"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 61
    .local v2, nPageIndex:I
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v5, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->getThumbNail(I)V

    goto :goto_0

    .line 64
    .end local v2           #nPageIndex:I
    .end local v3           #oBundle:Landroid/os/Bundle;
    :sswitch_1
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/infraware/common/CoCoreFunctionInterface;->getThumbNail(I)V

    goto :goto_0

    .line 68
    :sswitch_2
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v5}, Lcom/infraware/common/CoCoreFunctionInterface;->getPageCount()I

    move-result v4

    .line 71
    .local v4, totalCount:I
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 73
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 74
    .local v1, nAddCount:I
    move v0, v1

    .local v0, i:I
    :goto_1
    if-lt v0, v4, :cond_1

    .line 76
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-static {v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->access$0(Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;)Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$ThumbnailAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v5, v5, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;-><init>(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :sswitch_data_0
    .sparse-switch
        -0x119 -> :sswitch_2
        -0x107 -> :sswitch_1
        -0x100 -> :sswitch_0
    .end sparse-switch
.end method
