.class Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;
.super Ljava/lang/Object;
.source "UiColumnWidthDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;


# direct methods
.method private constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;-><init>(Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;)V

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

    .line 81
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButtonEnabled(IZ)V

    .line 99
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, nValue:I
    if-ge v0, v3, :cond_2

    .line 89
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButtonEnabled(IZ)V

    .line 90
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_2
    if-le v0, v5, :cond_3

    .line 93
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, "1440"

    invoke-interface {p1, v4, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 94
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;)Lcom/infraware/common/UxDocViewerBase;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog$InputValidator;->this$0:Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/sheet/UiColumnWidthDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

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
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 105
    return-void
.end method
