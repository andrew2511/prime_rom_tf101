.class Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog$CustumedTextWatcher;
.super Ljava/lang/Object;
.source "UiFileOverridingDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustumedTextWatcher"
.end annotation


# instance fields
.field private m_nMax:I

.field private oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;I)V
    .locals 0
    .parameter
    .parameter "a_oEdit"
    .parameter "a_nMax"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog$CustumedTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog$CustumedTextWatcher;->oEdit:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    .line 177
    iput p3, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog$CustumedTextWatcher;->m_nMax:I

    .line 178
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 181
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog$CustumedTextWatcher;->m_nMax:I

    if-le v0, v1, :cond_0

    .line 183
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog$CustumedTextWatcher;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->updatePositiveButton()V

    .line 187
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 191
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 196
    return-void
.end method
