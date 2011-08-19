.class public Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$IndentInputValidator;
.super Ljava/lang/Object;
.source "UiWordParagraphDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndentInputValidator"
.end annotation


# instance fields
.field private m_oEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;)V
    .locals 1
    .parameter "a_oEditText"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$IndentInputValidator;->m_oEditText:Landroid/widget/EditText;

    .line 214
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .parameter "s"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x64

    const/16 v6, -0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 221
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const-string v3, "0"

    invoke-interface {p1, v4, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 222
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$IndentInputValidator;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v5}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 227
    .local v0, nLength:I
    if-ne v0, v8, :cond_5

    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_5

    invoke-interface {p1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5

    .line 228
    invoke-interface {p1, v5, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 234
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 235
    if-ne v0, v5, :cond_4

    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    .line 238
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, nValue:I
    if-ge v1, v6, :cond_6

    .line 241
    const-string v2, "-100"

    invoke-interface {p1, v4, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 242
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$IndentInputValidator;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    .end local v1           #nValue:I
    :cond_5
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    if-le v0, v5, :cond_3

    .line 231
    invoke-interface {p1, v4, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 244
    .restart local v1       #nValue:I
    :cond_6
    if-le v1, v7, :cond_0

    .line 245
    const-string v2, "100"

    invoke-interface {p1, v4, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 246
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$IndentInputValidator;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 251
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 254
    return-void
.end method
