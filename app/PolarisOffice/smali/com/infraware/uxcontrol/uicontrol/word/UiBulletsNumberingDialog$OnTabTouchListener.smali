.class Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;
.super Ljava/lang/Object;
.source "UiBulletsNumberingDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;


# direct methods
.method private constructor <init>(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;-><init>(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 325
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    invoke-static {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;->access$1(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 328
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;->access$2(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;)Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;->access$3(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    invoke-static {v1, v3}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;->access$4(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 340
    :cond_0
    :goto_0
    return v3

    .line 332
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 333
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;

    invoke-static {v1, v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;->access$5(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;)V

    .line 335
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;->access$3(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;->access$4(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method
