.class Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog$CustumedTextWatcher;
.super Ljava/lang/Object;
.source "UiFileSaveDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustumedTextWatcher"
.end annotation


# instance fields
.field private m_nMax:I

.field private oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;I)V
    .locals 0
    .parameter
    .parameter "a_oEdit"
    .parameter "a_nMax"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog$CustumedTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog$CustumedTextWatcher;->oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    .line 198
    iput p3, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog$CustumedTextWatcher;->m_nMax:I

    .line 199
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 202
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog$CustumedTextWatcher;->m_nMax:I

    if-le v0, v1, :cond_0

    .line 205
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog$CustumedTextWatcher;->m_nMax:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog$CustumedTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->updatePositiveButton()V

    .line 209
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
    .line 218
    return-void
.end method
