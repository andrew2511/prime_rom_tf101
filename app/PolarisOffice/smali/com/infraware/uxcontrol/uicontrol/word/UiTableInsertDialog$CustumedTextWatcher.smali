.class Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;
.super Ljava/lang/Object;
.source "UiTableInsertDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustumedTextWatcher"
.end annotation


# instance fields
.field private m_nMax:I

.field private m_nMin:I

.field private oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;II)V
    .locals 0
    .parameter
    .parameter "a_oEdit"
    .parameter "a_nMax"
    .parameter "a_nMin"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    .line 89
    iput p3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMax:I

    .line 90
    iput p4, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMin:I

    .line 91
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 96
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMin:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 97
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;)V

    .line 115
    return-void

    .line 100
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMax:I

    if-le v0, v1, :cond_2

    .line 102
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMax:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 103
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 104
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMin:I

    if-ge v0, v1, :cond_0

    .line 108
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMin:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 109
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 110
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiTableInsertDialog$CustumedTextWatcher;->m_nMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 124
    return-void
.end method
