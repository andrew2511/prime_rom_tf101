.class Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;
.super Ljava/lang/Object;
.source "UiObjectResizeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeValueWatcher"
.end annotation


# instance fields
.field private m_nMax:I

.field private m_nMin:I

.field private oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;II)V
    .locals 0
    .parameter
    .parameter "a_oEdit"
    .parameter "a_nMax"
    .parameter "a_nMin"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    .line 91
    iput p3, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMax:I

    .line 92
    iput p4, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMin:I

    .line 93
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 96
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 98
    :cond_0
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMin:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->updatePositiveButton()V

    .line 117
    return-void

    .line 102
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMax:I

    if-le v0, v1, :cond_3

    .line 104
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMax:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 106
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMin:I

    if-ge v0, v1, :cond_1

    .line 110
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMin:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 112
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiObjectResizeDialog$ResizeValueWatcher;->m_nMax:I

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
    .line 121
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 126
    return-void
.end method
