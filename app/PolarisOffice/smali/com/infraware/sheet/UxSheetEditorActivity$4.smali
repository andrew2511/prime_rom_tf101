.class Lcom/infraware/sheet/UxSheetEditorActivity$4;
.super Ljava/lang/Object;
.source "UxSheetEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/sheet/UxSheetEditorActivity;->InitFunctionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/sheet/UxSheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/sheet/UxSheetEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/sheet/UxSheetEditorActivity$4;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$4;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iget v0, v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$4;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->setEditMode(I)V

    .line 588
    :goto_0
    return-void

    .line 587
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$4;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->setEditMode(I)V

    goto :goto_0
.end method
