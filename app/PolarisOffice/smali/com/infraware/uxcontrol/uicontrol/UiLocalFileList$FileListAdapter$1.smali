.class Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter$1;
.super Ljava/lang/Object;
.source "UiLocalFileList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter$1;->this$1:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;

    .line 1275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1277
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 1278
    .local v1, isChecked:Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/FmFileItem;

    .line 1279
    .local v2, oItem:Lcom/infraware/filemanager/FmFileItem;
    iput-boolean v1, v2, Lcom/infraware/filemanager/FmFileItem;->m_bIsSelected:Z

    .line 1281
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter$1;->this$1:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;

    invoke-static {v3, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->access$0(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;Z)V

    .line 1283
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter$1;->this$1:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;->notifyDataSetChanged()V

    .line 1285
    return-void
.end method
