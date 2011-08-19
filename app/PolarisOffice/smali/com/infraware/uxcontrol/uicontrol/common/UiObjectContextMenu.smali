.class public Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;
.super Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;
.source "UiObjectContextMenu.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;
.implements Lcom/infraware/common/UDM$UDM_CONTEXT_ID;
.implements Lcom/infraware/common/UDM$USER_DEFINE_MESSAGE;


# instance fields
.field protected m_eStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

.field private m_nType:I

.field protected m_oActivity:Lcom/infraware/common/UxDocEditorBase;

.field protected m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field private m_oItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/infraware/common/UxDocEditorBase;I)V
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_nType"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiContextMenu;-><init>()V

    .line 31
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_eStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 34
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    .line 35
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocEditorBase;->getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 36
    iput p2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    .line 37
    return-void
.end method

.method private canContainCopyCutMenu()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 523
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_eStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Sheet:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 535
    :goto_0
    return v0

    .line 525
    :cond_0
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 535
    goto :goto_0

    .line 532
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fillItems()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, nTitleStringResource:I
    const/4 v1, 0x0

    .line 76
    .local v1, nListStringArrayResource:I
    iget v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    packed-switch v8, :pswitch_data_0

    .line 121
    :goto_0
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 227
    .end local p0
    :cond_0
    :goto_1
    return-void

    .line 78
    .restart local p0
    :pswitch_0
    const v3, 0x7f0a0063

    .line 79
    const v1, 0x7f060044

    .line 80
    goto :goto_0

    .line 82
    :pswitch_1
    const v3, 0x7f0a0064

    .line 83
    const v1, 0x7f060042

    .line 84
    goto :goto_0

    .line 87
    :pswitch_2
    const v3, 0x7f0a0065

    .line 88
    const v1, 0x7f06003c

    .line 89
    goto :goto_0

    .line 92
    :pswitch_3
    const v3, 0x7f0a0066

    .line 93
    const v1, 0x7f06003d

    .line 94
    goto :goto_0

    .line 97
    :pswitch_4
    const v3, 0x7f0a0067

    .line 98
    const v1, 0x7f06003e

    .line 99
    goto :goto_0

    .line 102
    :pswitch_5
    const v3, 0x7f0a0068

    .line 103
    const v1, 0x7f06003f

    .line 104
    goto :goto_0

    .line 107
    :pswitch_6
    const v3, 0x7f0a0069

    .line 108
    const v1, 0x7f060040

    .line 109
    goto :goto_0

    .line 111
    :pswitch_7
    const v3, 0x7f0a006a

    .line 112
    const v1, 0x7f060041

    .line 113
    goto :goto_0

    .line 116
    :pswitch_8
    const v3, 0x7f0a036d

    .line 117
    const v1, 0x7f060046

    goto :goto_0

    .line 124
    :cond_1
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    if-nez v8, :cond_6

    .line 125
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    .line 129
    :goto_2
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v8, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setTitle(I)V

    .line 131
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, strNames:[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 136
    iget v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    if-lez v8, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->canContainCopyCutMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 141
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, strCutCopyNames:[Ljava/lang/String;
    array-length v8, v4

    move v9, v12

    :goto_3
    if-lt v9, v8, :cond_7

    .line 149
    .end local v4           #strCutCopyNames:[Ljava/lang/String;
    :cond_2
    array-length v8, v6

    move v9, v12

    :goto_4
    if-lt v9, v8, :cond_8

    .line 154
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->unsupportEditText()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 156
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    :cond_3
    iget v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    const/16 v9, 0x9

    if-lt v8, v9, :cond_4

    iget v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    const/16 v9, 0xe

    if-gt v8, v9, :cond_4

    .line 162
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, strSlideOnlyNames:[Ljava/lang/String;
    array-length v8, v7

    move v9, v12

    :goto_5
    if-lt v9, v8, :cond_9

    .line 167
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 169
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 170
    .local v2, nMenuCount:I
    array-length v0, v7

    .line 172
    .local v0, nAddCount:I
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/common/UxToolBarUpdater;->canObjectZOrder()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 174
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    sub-int v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v13}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 175
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    sub-int v9, v2, v0

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v13}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 185
    .end local v0           #nAddCount:I
    .end local v2           #nMenuCount:I
    .end local v7           #strSlideOnlyNames:[Ljava/lang/String;
    :cond_4
    :goto_6
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 187
    iget v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    if-nez v8, :cond_5

    .line 190
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/common/UxToolBarUpdater;->canPaste()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 191
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v13}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 195
    :goto_7
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/common/UxToolBarUpdater;->canUndo()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 196
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v13}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 200
    :goto_8
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/common/UxToolBarUpdater;->canRedo()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 201
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v13}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 206
    :cond_5
    :goto_9
    iget v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    if-ne v8, v13, :cond_0

    .line 209
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/common/UxToolBarUpdater;->canCopyCut()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 211
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v13}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 212
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v13}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 220
    :goto_a
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v8}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/common/UxToolBarUpdater;->canPaste()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 221
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {p0, v13}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    goto/16 :goto_1

    .line 127
    .end local v6           #strNames:[Ljava/lang/String;
    .restart local p0
    :cond_6
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 142
    .restart local v4       #strCutCopyNames:[Ljava/lang/String;
    .restart local v6       #strNames:[Ljava/lang/String;
    :cond_7
    aget-object v5, v4, v9

    .line 144
    .local v5, strName:Ljava/lang/String;
    iget-object v10, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    new-instance v11, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-direct {v11, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 149
    .end local v4           #strCutCopyNames:[Ljava/lang/String;
    .end local v5           #strName:Ljava/lang/String;
    :cond_8
    aget-object v5, v6, v9

    .line 150
    .restart local v5       #strName:Ljava/lang/String;
    iget-object v10, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    new-instance v11, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-direct {v11, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 163
    .end local v5           #strName:Ljava/lang/String;
    .restart local v7       #strSlideOnlyNames:[Ljava/lang/String;
    :cond_9
    aget-object v5, v7, v9

    .line 164
    .restart local v5       #strName:Ljava/lang/String;
    iget-object v10, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    new-instance v11, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-direct {v11, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 179
    .end local v5           #strName:Ljava/lang/String;
    .restart local v0       #nAddCount:I
    .restart local v2       #nMenuCount:I
    :cond_a
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    sub-int v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 180
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    sub-int v9, v2, v0

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    goto/16 :goto_6

    .line 193
    .end local v0           #nAddCount:I
    .end local v2           #nMenuCount:I
    .end local v7           #strSlideOnlyNames:[Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    goto/16 :goto_7

    .line 198
    :cond_c
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    goto/16 :goto_8

    .line 203
    :cond_d
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    goto/16 :goto_9

    .line 216
    :cond_e
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    .line 217
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v8, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    goto/16 :goto_a

    .line 223
    :cond_f
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {p0, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->setEnable(Z)V

    goto/16 :goto_1

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private onChartCommand(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x1

    .line 370
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    return-void

    .line 373
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 379
    :pswitch_1
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiChartInsertDialog;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v0, v2, v3}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiChartInsertDialog;-><init>(Lcom/infraware/common/UxDocViewerBase;Z)V

    .line 380
    .local v0, oChartDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiChartInsertDialog;
    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiChartInsertDialog;->show(Z)V

    goto :goto_0

    .line 383
    .end local v0           #oChartDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiChartInsertDialog;
    :pswitch_2
    new-instance v1, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    .line 384
    .local v1, oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->createView()V

    .line 385
    invoke-virtual {v1, v3}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->show(Z)V

    goto :goto_0

    .line 389
    .end local v1           #oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    :pswitch_3
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setSheetChartDelete()V

    goto :goto_0

    .line 393
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onSlideCommand(I)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private onCopyCutCommand(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 463
    packed-switch p1, :pswitch_data_0

    .line 472
    :goto_0
    return-void

    .line 466
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->copy()V

    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->cut()V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGroupCommand(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 489
    packed-switch p1, :pswitch_data_0

    .line 506
    :goto_0
    return-void

    .line 492
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 495
    :pswitch_1
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    .line 496
    .local v0, oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->createView()V

    .line 497
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->show(Z)V

    goto :goto_0

    .line 500
    .end local v0           #oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    :pswitch_2
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectDelete()V

    goto :goto_0

    .line 504
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onSlideCommand(I)V

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private onImageCommand(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 331
    :pswitch_2
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    .line 332
    .local v0, oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->createView()V

    .line 333
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->show(Z)V

    goto :goto_0

    .line 336
    .end local v0           #oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    :pswitch_3
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectDelete()V

    goto :goto_0

    .line 340
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onSlideCommand(I)V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private onLineCommand(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    .line 438
    :goto_0
    return-void

    .line 426
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectDelete()V

    goto :goto_0

    .line 432
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectZOrder(Z)V

    goto :goto_0

    .line 435
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectZOrder(Z)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onNoneCommand(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->paste()V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->unDo()V

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->reDo()V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onShapeCommand(I)V
    .locals 5
    .parameter "nIndex"

    .prologue
    .line 345
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 348
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 352
    :pswitch_1
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectTextEdit()V

    .line 353
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v2, -0x10c

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 356
    :pswitch_2
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    .line 357
    .local v0, oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->createView()V

    .line 358
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->show(Z)V

    goto :goto_0

    .line 361
    .end local v0           #oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    :pswitch_3
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectDelete()V

    goto :goto_0

    .line 365
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onSlideCommand(I)V

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private onSlideCommand(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 477
    packed-switch p1, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 479
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectZOrder(Z)V

    goto :goto_0

    .line 482
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectZOrder(Z)V

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTableCommand(I)V
    .locals 5
    .parameter "nIndex"

    .prologue
    .line 441
    packed-switch p1, :pswitch_data_0

    .line 460
    :goto_0
    return-void

    .line 444
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 448
    :pswitch_1
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectTextEdit()V

    .line 449
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v2, -0x10c

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 452
    :pswitch_2
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    .line 453
    .local v0, oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->createView()V

    .line 454
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->show(Z)V

    goto :goto_0

    .line 457
    .end local v0           #oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    :pswitch_3
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectDelete()V

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onTextCommand(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 303
    packed-switch p1, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v2}, Lcom/infraware/common/CoCoreFunctionInterface;->paste()V

    .line 311
    :pswitch_2
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v2}, Lcom/infraware/common/CoCoreFunctionInterface;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, strSearch:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v2, v0}, Lcom/infraware/common/UxDocEditorBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onTextboxCommand(I)V
    .locals 5
    .parameter "nIndex"

    .prologue
    .line 398
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 401
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onCopyCutCommand(I)V

    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectTextEdit()V

    .line 406
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v2, -0x10c

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 409
    :pswitch_2
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    .line 410
    .local v0, oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->createView()V

    .line 411
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->show(Z)V

    goto :goto_0

    .line 414
    .end local v0           #oChartResizeDialog:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
    :pswitch_3
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setObjectDelete()V

    goto :goto_0

    .line 418
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onSlideCommand(I)V

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private unsupportEditText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_eStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Sheet:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 518
    :goto_0
    return v0

    .line 512
    :cond_0
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 518
    goto :goto_0

    .line 515
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public changeType(I)V
    .locals 2
    .parameter "a_nType"

    .prologue
    .line 65
    iput p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    .line 66
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->fillItems()V

    .line 68
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 69
    .local v0, oAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public createView()V
    .locals 6

    .prologue
    .line 45
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 46
    .local v1, oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_DialogContextMenu:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createDialog(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .line 47
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v3, 0x7f0a0061

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setTitle(I)V

    .line 48
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v2, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 50
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->fillItems()V

    .line 52
    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    const v4, 0x7f03000d

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oItems:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 53
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v2, v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 54
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 56
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setMinimumWidth(I)I

    .line 57
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    const v3, 0x7f0202ba

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setDivider(I)V

    .line 58
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setNativeView(Landroid/view/View;)V

    .line 60
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 61
    .local v0, oAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 4
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    .line 230
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oListControl:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-eq p2, v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    .local v0, nIndex:I
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->canContainCopyCutMenu()Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocEditorBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, strCutCopyNames:[Ljava/lang/String;
    array-length v2, v1

    add-int/2addr v0, v2

    .line 243
    .end local v1           #strCutCopyNames:[Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->unsupportEditText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 248
    :cond_3
    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_nType:I

    packed-switch v2, :pswitch_data_0

    .line 285
    :goto_1
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_oActivity:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocEditorBase;->getCaretTask()Lcom/infraware/common/EvCaretTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    goto :goto_0

    .line 250
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onNoneCommand(I)V

    goto :goto_1

    .line 253
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onTextCommand(I)V

    goto :goto_1

    .line 257
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onImageCommand(I)V

    goto :goto_1

    .line 261
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onShapeCommand(I)V

    goto :goto_1

    .line 265
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onChartCommand(I)V

    goto :goto_1

    .line 269
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onTextboxCommand(I)V

    goto :goto_1

    .line 273
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onLineCommand(I)V

    goto :goto_1

    .line 276
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onTableCommand(I)V

    goto :goto_1

    .line 281
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->onGroupCommand(I)V

    goto :goto_1

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public setStyle(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V
    .locals 0
    .parameter "a_eStyle"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->m_eStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 42
    return-void
.end method
