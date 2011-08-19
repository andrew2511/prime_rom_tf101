.class public Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;
.super Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;
.source "UiLocalSyncList.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 0
    .parameter "a_oActivity"
    .parameter "a_nAdapterMode"
    .parameter "a_nHolderID"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;-><init>(Landroid/app/Activity;II)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createListControl()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 21
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 22
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 23
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemLongClicked:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 24
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f02029c

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 25
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 29
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_nHolderId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 30
    .local v7, oMainLayout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v7, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 32
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 34
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v6

    .line 35
    .local v6, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oActivity:Landroid/app/Activity;

    .line 37
    const v3, 0x7f030044

    .line 38
    iget-object v1, v6, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileAdapter;->getFileList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    move-object v1, p0

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;-><init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 39
    .local v0, oAdapter:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setCustomAdapter(Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)V

    .line 42
    .end local v0           #oAdapter:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->updateTitle()V

    .line 43
    return-void
.end method

.method protected getTitleTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :pswitch_0
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .line 60
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oActivity:Landroid/app/Activity;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    move-object v0, p0

    goto :goto_0

    .line 63
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_oActivity:Landroid/app/Activity;

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    move-object v0, p0

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "a_szTitle"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 48
    .local v0, oView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalSyncList;->m_strTitle:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
