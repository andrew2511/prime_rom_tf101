.class Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;
.super Ljava/lang/Object;
.source "UiWordColumnsDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnButtonTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;


# direct methods
.method private constructor <init>(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;-><init>(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 111
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;->getNativeView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$2(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$3(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)[I

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;->setBackgroundImage(I)V

    .line 116
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$4(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;Z)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$3(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;->getNativeView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$2(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;)[I

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Button;->setBackgroundImage(I)V

    .line 120
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog$OnButtonTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;

    invoke-static {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;->access$4(Lcom/infraware/uxcontrol/uicontrol/word/UiWordColumnsDialog;Z)V

    goto :goto_0
.end method
