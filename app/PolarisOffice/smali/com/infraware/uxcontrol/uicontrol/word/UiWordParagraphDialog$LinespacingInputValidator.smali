.class public Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$LinespacingInputValidator;
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
    name = "LinespacingInputValidator"
.end annotation


# instance fields
.field private m_oEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;)V
    .locals 1
    .parameter "a_oEditText"

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->getNativeView()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$LinespacingInputValidator;->m_oEditText:Landroid/widget/EditText;

    .line 263
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .parameter "s"

    .prologue
    const/16 v8, 0x2d

    const/4 v7, 0x2

    const/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 270
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const-string v3, "0"

    invoke-interface {p1, v4, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 271
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$LinespacingInputValidator;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v5}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 276
    .local v0, nLength:I
    if-ne v0, v7, :cond_5

    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_5

    invoke-interface {p1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5

    .line 277
    invoke-interface {p1, v5, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 283
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 284
    if-ne v0, v5, :cond_4

    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_0

    .line 287
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 289
    .local v1, nValue:I
    if-gez v1, :cond_6

    .line 290
    const-string v2, "0"

    invoke-interface {p1, v4, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 291
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$LinespacingInputValidator;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    .end local v1           #nValue:I
    :cond_5
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    if-le v0, v5, :cond_3

    .line 280
    invoke-interface {p1, v4, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 293
    .restart local v1       #nValue:I
    :cond_6
    if-le v1, v6, :cond_0

    .line 294
    const-string v2, "500"

    invoke-interface {p1, v4, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 295
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordParagraphDialog$LinespacingInputValidator;->m_oEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 300
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 303
    return-void
.end method
