.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;
.source "UiUnit_Drawer.java"


# instance fields
.field private m_bOpen:Z

.field private m_oBorders:[Landroid/widget/LinearLayout;

.field private m_oContentHolder:Landroid/widget/LinearLayout;

.field private m_oHandle:Landroid/widget/Button;

.field private m_oMainLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "a_oActivity"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;-><init>(Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter "a_oActivity"
    .parameter "a_nLayoutId"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;-><init>(Landroid/app/Activity;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const v3, 0x106000d

    const/4 v2, 0x0

    .line 123
    iput-boolean v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_bOpen:Z

    .line 126
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oContentHolder:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    const v1, 0x7f0202ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 130
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oBorders:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oBorders:[Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 133
    return-void
.end method

.method protected createNativeView(I)V
    .locals 5
    .parameter "a_nResourceId"

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004b

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oMainLayout:Landroid/widget/LinearLayout;

    .line 36
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oMainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0c00c6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oContentHolder:Landroid/widget/LinearLayout;

    .line 38
    if-eqz p1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 41
    .local v0, oContentLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->setNativeView(Landroid/view/View;)V

    .line 44
    .end local v0           #oContentLayout:Landroid/widget/LinearLayout;
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oActivity:Landroid/app/Activity;

    const v2, 0x7f0c0164

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    const v2, 0x7f0202ed

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 46
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer$1;

    invoke-direct {v2, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer$1;-><init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer$2;

    invoke-direct {v2, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer$2;-><init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 62
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oActivity:Landroid/app/Activity;

    const v4, 0x7f0c0162

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v2, v3

    const/4 v3, 0x1

    .line 63
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oActivity:Landroid/app/Activity;

    const v4, 0x7f0c0163

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    aput-object v1, v2, v3

    .line 61
    iput-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oBorders:[Landroid/widget/LinearLayout;

    .line 65
    return-void
.end method

.method public bridge synthetic getNativeView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->getNativeView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getNativeView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oMainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_bOpen:Z

    return v0
.end method

.method public open()V
    .locals 5

    .prologue
    const v4, 0x7f0202e7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    iput-boolean v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_bOpen:Z

    .line 108
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oContentHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    const v1, 0x7f0202e8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 111
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oBorders:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 112
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oBorders:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 116
    return-void
.end method

.method public setHandleVisibility(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oHandle:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNativeView(Landroid/view/View;)V
    .locals 3
    .parameter "a_oView"

    .prologue
    const/4 v2, -0x1

    .line 92
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oContentHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 93
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_oContentHolder:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-super {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;->setNativeView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public show(Z)V
    .locals 0
    .parameter "a_bShow"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->open()V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->close()V

    goto :goto_0
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->m_bOpen:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_LeftPanelClose:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p0, v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_LeftPanelOpen:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p0, v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Drawer;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    goto :goto_0
.end method
