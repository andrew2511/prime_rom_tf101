.class Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;
.super Landroid/os/Handler;
.source "UiSlideThumbnailPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 57
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 155
    .end local p1
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 65
    .restart local p1
    :sswitch_1
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$0(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 67
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/infraware/common/UxDocViewerBase;->showTitleProgress(Z)V

    .line 68
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$0(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 69
    .local v3, nIndex:I
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$0(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v9, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->getThumbNail(I)V

    goto :goto_0

    .line 73
    .end local v3           #nIndex:I
    .restart local p1
    :cond_1
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/infraware/common/UxDocViewerBase;->showTitleProgress(Z)V

    goto :goto_0

    .line 77
    :sswitch_2
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 79
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v9}, Lcom/infraware/common/CoCoreFunctionInterface;->getPageCount()I

    move-result v8

    .line 80
    .local v8, totalCount:I
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v9, v8, :cond_0

    .line 82
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 83
    .local v1, nAddCount:I
    move v0, v1

    .local v0, i:I
    :goto_1
    if-lt v0, v8, :cond_2

    .line 85
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$1(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    new-instance v10, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;-><init>(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0           #i:I
    .end local v1           #nAddCount:I
    .end local v8           #totalCount:I
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 91
    .local v7, oBundle:Landroid/os/Bundle;
    const-string v9, "nIndex"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 92
    .local v5, nPageIndex:I
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int v10, v5, v10

    if-lt v9, v10, :cond_4

    .line 94
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    const/4 v10, 0x1

    sub-int v10, v5, v10

    new-instance v11, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    const/4 v12, 0x1

    sub-int v12, v5, v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;-><init>(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 95
    move v0, v5

    .end local p1
    .restart local v0       #i:I
    :goto_2
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v0, v9, :cond_3

    .line 97
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$1(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;->notifyDataSetChanged()V

    .line 98
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v9, v5}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->addQueueSingle(I)V

    .line 99
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    iget-object v9, v9, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v10, -0x103

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oUiUpdateHandler:Landroid/os/Handler;

    const/16 v10, -0x11c

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 96
    :cond_3
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    iget v9, p1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_nIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_nIndex:I

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    .end local v0           #i:I
    .restart local p1
    :cond_4
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    iget-object v9, v9, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v10, -0x103

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 108
    .end local v5           #nPageIndex:I
    .end local v7           #oBundle:Landroid/os/Bundle;
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 109
    .restart local v7       #oBundle:Landroid/os/Bundle;
    const-string v9, "nIndex"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 110
    .restart local v5       #nPageIndex:I
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int v10, v5, v10

    if-lt v9, v10, :cond_5

    .line 112
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    const/4 v10, 0x1

    sub-int v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    const/4 v9, 0x1

    sub-int v0, v5, v9

    .end local p1
    .restart local v0       #i:I
    :goto_3
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v0, v9, :cond_6

    .line 115
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$1(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;->notifyDataSetChanged()V

    .line 117
    .end local v0           #i:I
    :cond_5
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    iget-object v9, v9, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v10, -0x103

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 114
    .restart local v0       #i:I
    :cond_6
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    iget v9, p1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_nIndex:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iput v9, p1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_nIndex:I

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 122
    .end local v0           #i:I
    .end local v5           #nPageIndex:I
    .end local v7           #oBundle:Landroid/os/Bundle;
    .restart local p1
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 123
    .restart local v7       #oBundle:Landroid/os/Bundle;
    const-string v9, "nFrom"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    sub-int v4, v9, v10

    .line 124
    .local v4, nPageFrom:I
    const-string v9, "nTo"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    sub-int v6, v9, v10

    .line 126
    .local v6, nPageTo:I
    if-eq v4, v6, :cond_0

    .line 130
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v4, :cond_7

    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v6, :cond_9

    .line 132
    :cond_7
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v9}, Lcom/infraware/common/CoCoreFunctionInterface;->getPageCount()I

    move-result v2

    .line 134
    .local v2, nCnt:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-lt v0, v2, :cond_8

    .line 136
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$1(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;)Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$ThumbnailAdapter;->notifyDataSetChanged()V

    .line 138
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v10, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v10, v10, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v10}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentPageIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->addQueue(I)V

    .line 139
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    iget-object v9, v9, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v10, -0x103

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oUiUpdateHandler:Landroid/os/Handler;

    const/16 v10, -0x11c

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 135
    :cond_8
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    new-instance v10, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    add-int/lit8 v11, v0, 0x1

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;-><init>(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 144
    .end local v0           #i:I
    .end local v2           #nCnt:I
    :cond_9
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-static {v9, v4, v6}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->access$2(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;II)V

    .line 146
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    iget-boolean v9, p1, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_bSelected:Z

    if-eqz v9, :cond_a

    .line 147
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v9, v6}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->setCurrentPage(I)V

    .line 149
    :cond_a
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    iget-object v9, v9, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v10, -0x103

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        -0x305 -> :sswitch_5
        -0x304 -> :sswitch_4
        -0x303 -> :sswitch_3
        -0x11c -> :sswitch_1
        -0x119 -> :sswitch_2
        -0x100 -> :sswitch_0
    .end sparse-switch
.end method
