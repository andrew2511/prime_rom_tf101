.class Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog$FolderSelectionAdapter;
.super Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
.source "UiSelectFolderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderSelectionAdapter"
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
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V
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
    .line 213
    .local p4, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/FmFileItem;>;"
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog$FolderSelectionAdapter;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;

    .line 214
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 215
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog$FolderSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/FmFileItem;

    .line 221
    .local v2, oItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez p2, :cond_0

    .line 222
    const v0, 0x7f030053

    .line 225
    .local v0, nSpinnerViewLayoutId:I
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog$FolderSelectionAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 226
    .local v1, oInflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    invoke-virtual {v1, v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 229
    .end local v0           #nSpinnerViewLayoutId:I
    .end local v1           #oInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f0c0035

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 231
    .local v3, oTextView:Landroid/widget/TextView;
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/infraware/filemanager/FmFileItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/filemanager/FmFileUtil;->getReleativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, strFilePath:Ljava/lang/String;
    iget-object v5, v2, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    .line 234
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_0
    return-object p2

    .line 236
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 243
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 245
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog$FolderSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/FmFileItem;

    .line 247
    .local v0, oItem:Lcom/infraware/filemanager/FmFileItem;
    const v2, 0x7f0c0035

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    .local v1, oTextView:Landroid/widget/TextView;
    iget-object v2, v0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-object p2
.end method
