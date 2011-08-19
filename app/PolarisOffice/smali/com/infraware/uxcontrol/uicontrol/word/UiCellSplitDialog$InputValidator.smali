.class Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog$InputValidator;
.super Ljava/lang/Object;
.source "UiCellSplitDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputValidator"
.end annotation


# instance fields
.field private m_oEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;)V
    .locals 1
    .parameter
    .parameter "a_oEditText"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog$InputValidator;->m_oEditText:Landroid/widget/EditText;

    .line 90
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 100
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 101
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog$InputValidator;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v6}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 106
    .local v0, nLength:I
    invoke-interface {p1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    if-le v0, v6, :cond_3

    .line 107
    invoke-interface {p1, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 110
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 112
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, nValue:I
    if-nez v1, :cond_4

    .line 115
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 116
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog$InputValidator;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v6}, Landroid/widget/EditText;->setSelection(II)V

    .line 117
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;

    invoke-static {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :cond_4
    if-le v1, v7, :cond_0

    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 122
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog$InputValidator;->m_oEditText:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 123
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;

    invoke-static {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiCellSplitDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 131
    return-void
.end method
