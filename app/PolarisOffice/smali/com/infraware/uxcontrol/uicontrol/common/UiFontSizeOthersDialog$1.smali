.class Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$1;
.super Ljava/util/TimerTask;
.source "UiFontSizeOthersDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    .line 95
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .local v0, Imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 100
    :cond_0
    return-void
.end method
