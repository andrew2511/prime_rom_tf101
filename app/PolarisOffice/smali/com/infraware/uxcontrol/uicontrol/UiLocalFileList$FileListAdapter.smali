.class Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;
.super Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.source "UiLocalFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
        "<",
        "Lcom/infraware/filemanager/FmFileItem;",
        ">;"
    }
.end annotation


# instance fields
.field private m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
    .locals 0
    .parameter
    .parameter "a_oContext"
    .parameter "a_nItemViewResourceId"
    .parameter
    .parameter "a_oOwner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/FmFileItem;",
            ">;",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p4, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/FmFileItem;>;"
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    .line 1133
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 1134
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1290
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->onCheckedMultiCheckbox(Z)V

    return-void
.end method

.method private onCheckedMultiCheckbox(Z)V
    .locals 4
    .parameter "a_bChecked"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1291
    if-eqz p1, :cond_2

    .line 1292
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->access$1(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->access$2(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;I)V

    if-ne v1, v2, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/infraware/filemanager/FmFileSyncActivity;

    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-static {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->access$3(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Z)V

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->showQuickMenu(Z)V

    goto :goto_0

    .line 1299
    :cond_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->access$1(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->access$2(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;I)V

    if-nez v1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/infraware/filemanager/FmFileSyncActivity;

    if-eqz v0, :cond_3

    .line 1301
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-static {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->access$3(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Z)V

    goto :goto_0

    .line 1303
    :cond_3
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->showQuickMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1138
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/FmFileItem;

    .line 1140
    .local v6, oItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1142
    .local v5, oInflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_5

    .line 1143
    const v9, 0x7f030045

    const/4 v10, 0x0

    invoke-virtual {v5, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1144
    new-instance v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    iget-object v10, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-direct {v9, v10, p2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;-><init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Landroid/view/View;)V

    iput-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    .line 1145
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1151
    .end local p1
    :goto_0
    iget-boolean v9, v6, Lcom/infraware/filemanager/FmFileItem;->m_bIsSelected:Z

    if-eqz v9, :cond_6

    .line 1153
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1154
    .local v0, nColor:I
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1160
    .end local v0           #nColor:I
    :goto_1
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->getNameView()Landroid/widget/TextView;

    move-result-object v7

    .line 1162
    .local v7, oNameView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->getCommentView()Landroid/widget/TextView;

    move-result-object v2

    .line 1163
    .local v2, oCommentView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->getSizeView()Landroid/widget/TextView;

    move-result-object v8

    .line 1164
    .local v8, oSizeView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->getDateView()Landroid/widget/TextView;

    move-result-object v3

    .line 1165
    .local v3, oDateView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 1167
    .local v4, oImageView:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 1169
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-boolean v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    if-eqz v9, :cond_7

    .line 1170
    invoke-virtual {v6}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-boolean v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bSyncMode:Z

    if-eqz v9, :cond_a

    .line 1177
    if-eqz v2, :cond_1

    .line 1179
    iget-boolean v9, v6, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v9, :cond_8

    .line 1180
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1191
    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    .line 1193
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    :cond_2
    if-eqz v3, :cond_3

    .line 1197
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1238
    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 1239
    invoke-virtual {v6}, Lcom/infraware/filemanager/FmFileItem;->getFileResID()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1241
    :cond_4
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    invoke-virtual {v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 1242
    .local v1, oCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1243
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1244
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1246
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-boolean v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bSyncMode:Z

    if-eqz v9, :cond_11

    .line 1257
    iget-boolean v9, v6, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v9, :cond_10

    .line 1258
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1273
    :goto_5
    iget-boolean v9, v6, Lcom/infraware/filemanager/FmFileItem;->m_bIsSelected:Z

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1275
    new-instance v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter$1;

    invoke-direct {v9, p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter$1;-><init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;)V

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1288
    return-object p2

    .line 1148
    .end local v1           #oCheckBox:Landroid/widget/CheckBox;
    .end local v2           #oCommentView:Landroid/widget/TextView;
    .end local v3           #oDateView:Landroid/widget/TextView;
    .end local v4           #oImageView:Landroid/widget/ImageView;
    .end local v7           #oNameView:Landroid/widget/TextView;
    .end local v8           #oSizeView:Landroid/widget/TextView;
    .restart local p1
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->m_oWrapper:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;

    goto/16 :goto_0

    .line 1158
    :cond_6
    const v9, 0x106000d

    invoke-virtual {p2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1172
    .restart local v2       #oCommentView:Landroid/widget/TextView;
    .restart local v3       #oDateView:Landroid/widget/TextView;
    .restart local v4       #oImageView:Landroid/widget/ImageView;
    .restart local v7       #oNameView:Landroid/widget/TextView;
    .restart local v8       #oSizeView:Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v6}, Lcom/infraware/filemanager/FmFileItem;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1183
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1184
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v6, v9}, Lcom/infraware/filemanager/FmFileItem;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v9}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    .line 1186
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v6, v9}, Lcom/infraware/filemanager/FmFileItem;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1188
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v10, v10, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v6, v10}, Lcom/infraware/filemanager/FmFileItem;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/infraware/filemanager/FmFileItem;->getSizeString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1203
    :cond_a
    if-eqz v2, :cond_b

    .line 1205
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    :cond_b
    if-eqz v8, :cond_c

    .line 1209
    iget-boolean v9, v6, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v9, :cond_d

    .line 1210
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    :cond_c
    :goto_6
    if-eqz v3, :cond_3

    .line 1224
    iget-boolean v9, v6, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v9, :cond_f

    .line 1225
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1213
    :cond_d
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1214
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v9}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_c

    .line 1218
    :cond_e
    invoke-virtual {v6}, Lcom/infraware/filemanager/FmFileItem;->getSizeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1228
    :cond_f
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1229
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    iget-object v9, v9, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v6, v9}, Lcom/infraware/filemanager/FmFileItem;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1260
    .restart local v1       #oCheckBox:Landroid/widget/CheckBox;
    :cond_10
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    .line 1265
    :cond_11
    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    invoke-static {v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->access$0(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 1266
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    .line 1267
    :cond_12
    iget-boolean v9, v6, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v9, :cond_13

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    const-string v10, ".."

    if-ne v9, v10, :cond_13

    .line 1268
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    .line 1270
    :cond_13
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5
.end method
