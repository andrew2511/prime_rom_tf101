.class Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog$1;
.super Ljava/util/TimerTask;
.source "UiAccountAddDetailDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;

    .line 74
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 77
    .local v0, Imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/UiAccountAddDetailDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 79
    :cond_0
    return-void
.end method
