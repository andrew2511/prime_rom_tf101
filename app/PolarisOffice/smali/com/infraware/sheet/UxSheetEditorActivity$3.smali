.class Lcom/infraware/sheet/UxSheetEditorActivity$3;
.super Ljava/lang/Object;
.source "UxSheetEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/infraware/sheet/UxSheetEditorActivity$3;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 572
    if-eqz p2, :cond_1

    .line 573
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$3;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->sendSheetFocusEvent()V

    .line 579
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$3;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->updateToolbar()V

    .line 580
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$3;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iget v0, v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_nEditMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$3;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$22(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/sheet/UxSheetEditorActivity$3;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-static {v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
