.class public Lcom/infraware/uxcontrol/uiunit/UiUnitView;
.super Ljava/lang/Object;
.source "UiUnitView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;
    }
.end annotation


# instance fields
.field m_eUnitStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

.field m_oActivity:Landroid/app/Activity;

.field m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

.field m_oEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;",
            "Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;",
            ">;"
        }
    .end annotation
.end field

.field m_oParent:Lcom/infraware/uxcontrol/uiunit/UiUnitView;

.field m_oUserData:Ljava/lang/Object;

.field m_oView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a_oActivity"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oActivity:Landroid/app/Activity;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oEventMap:Ljava/util/HashMap;

    .line 34
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_eUnitStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter "a_oActivity"
    .parameter "a_nResourceId"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;-><init>(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->createNativeView(I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected constructEvent()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected createNativeView(I)V
    .locals 0
    .parameter "a_nResourceId"

    .prologue
    .line 44
    return-void
.end method

.method public getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oView:Landroid/view/View;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 93
    goto :goto_0

    :cond_1
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 1
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method

.method public registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V
    .locals 0
    .parameter "a_oOnCommandListener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    .line 120
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "a_oActivity"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oActivity:Landroid/app/Activity;

    .line 62
    return-void
.end method

.method public setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 1
    .parameter "a_eUnitEvent"
    .parameter "a_eUnitCommand"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->constructEvent()V

    .line 79
    return-void
.end method

.method public setNativeView(Landroid/view/View;)V
    .locals 0
    .parameter "a_oView"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oView:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->constructEvent()V

    .line 68
    return-void
.end method

.method public setParent(Lcom/infraware/uxcontrol/uiunit/UiUnitView;)V
    .locals 0
    .parameter "a_oParentUnitView"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oParent:Lcom/infraware/uxcontrol/uiunit/UiUnitView;

    .line 84
    return-void
.end method

.method public setStyle(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V
    .locals 0
    .parameter "a_eUnitStyle"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_eUnitStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 57
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "a_oUserData"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oUserData:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->m_oView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
