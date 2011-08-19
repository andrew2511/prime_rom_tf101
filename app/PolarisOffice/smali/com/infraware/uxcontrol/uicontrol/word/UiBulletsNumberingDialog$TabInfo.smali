.class Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;
.super Ljava/lang/Object;
.source "UiBulletsNumberingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabInfo"
.end annotation


# static fields
.field static final NORMAL:I = 0x0

.field static final PRESSED:I = 0x1

.field static final SELECTED:I = 0x2


# instance fields
.field m_anIconStateDrawables:[I

.field m_nIndex:I

.field m_nState:I

.field m_oLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;II[I)V
    .locals 3
    .parameter
    .parameter "a_nIndex"
    .parameter "a_nLayoutId"
    .parameter "a_anIconStateDrawables"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;->this$0:Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;->m_nIndex:I

    .line 65
    invoke-static {p1}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->getNativeView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;->m_oLayout:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;->m_oLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;-><init>(Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog;Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$OnTabTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 68
    iput-object p4, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;->m_anIconStateDrawables:[I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiBulletsNumberingDialog$TabInfo;->m_nState:I

    .line 70
    return-void
.end method
