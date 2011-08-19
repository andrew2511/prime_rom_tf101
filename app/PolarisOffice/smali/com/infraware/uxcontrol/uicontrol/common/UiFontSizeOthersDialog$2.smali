.class Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$2;
.super Ljava/lang/Object;
.source "UiFontSizeOthersDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/16 v7, 0x48

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 55
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$2(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButtonEnabled(IZ)V

    .line 79
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 61
    .local v0, nLength:I
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, nValue:I
    if-ge v1, v6, :cond_2

    .line 64
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$2(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButtonEnabled(IZ)V

    .line 65
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$2(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButtonEnabled(IZ)V

    .line 72
    if-le v1, v7, :cond_3

    .line 73
    const-string v2, "72"

    invoke-interface {p1, v5, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 74
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;

    invoke-static {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/common/UiFontSizeOthersDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/infraware/common/Utils;->popupInputLimitationToast(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {}, Lcom/infraware/common/Utils;->hideInputLimitationToast()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 82
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 85
    return-void
.end method
