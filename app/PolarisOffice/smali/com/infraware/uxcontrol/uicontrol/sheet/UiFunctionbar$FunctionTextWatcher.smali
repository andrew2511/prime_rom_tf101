.class Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$FunctionTextWatcher;
.super Ljava/lang/Object;
.source "UiFunctionbar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FunctionTextWatcher"
.end annotation


# instance fields
.field private m_nMaxLength:I

.field private oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;I)V
    .locals 0
    .parameter
    .parameter "a_oEdit"
    .parameter "a_nMax"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$FunctionTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$FunctionTextWatcher;->oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    .line 202
    iput p3, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$FunctionTextWatcher;->m_nMaxLength:I

    .line 203
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$FunctionTextWatcher;->m_nMaxLength:I

    if-le v0, v1, :cond_0

    .line 208
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$FunctionTextWatcher;->m_nMaxLength:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 209
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$FunctionTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiFunctionbar$FunctionTextWatcher;->m_nMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;)V

    .line 211
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 213
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 216
    return-void
.end method
