.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_Panel;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;
.source "UiUnit_Panel.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter "a_oActivity"
    .parameter "a_nResourceId"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;-><init>(Landroid/app/Activity;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected createNativeView(I)V
    .locals 3
    .parameter "a_nResourceId"

    .prologue
    .line 18
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Panel;->m_oActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 19
    .local v0, oToolbarLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Panel;->setNativeView(Landroid/view/View;)V

    .line 20
    return-void
.end method
