.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitView;
.source "UiUnit_Edit.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter "a_oActivity"
    .parameter "a_nBackgroundDrawableId"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;-><init>(Landroid/app/Activity;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createNativeView(I)V
    .locals 3
    .parameter "a_nBackgroundDrawableId"

    .prologue
    .line 22
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, oEditText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 24
    const v1, 0x10000006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 27
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 47
    :goto_0
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;

    invoke-direct {v1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;-><init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->setNativeView(Landroid/view/View;)V

    .line 64
    return-void

    .line 33
    :cond_0
    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getNativeView()Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->getNativeView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public setHint(I)V
    .locals 1
    .parameter "a_nStringId"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->setHint(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "a_szHint"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setSelectionAtEnd()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 93
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "a_szText"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
