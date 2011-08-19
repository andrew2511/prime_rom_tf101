.class Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;
.super Ljava/lang/Object;
.source "UiRowHeightDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;


# direct methods
.method private constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;-><init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/16 v5, 0x5a0

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 80
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButtonEnabled(IZ)V

    .line 97
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, nValue:I
    if-ge v0, v3, :cond_2

    .line 88
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButtonEnabled(IZ)V

    .line 89
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_2
    if-le v0, v5, :cond_3

    .line 92
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, "1440"

    invoke-interface {p1, v4, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 93
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiRowHeightDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButtonEnabled(IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 100
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 103
    return-void
.end method
