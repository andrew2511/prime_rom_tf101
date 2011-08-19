.class public Lcom/infraware/common/CoNotification;
.super Ljava/lang/Object;
.source "CoNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 4
    .parameter "a_oActivity"
    .parameter "a_oCommandListener"
    .parameter "a_eCommand"

    .prologue
    .line 61
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 61
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 66
    .local v0, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 70
    return-void
.end method

.method public static Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 3
    .parameter "a_oActivity"
    .parameter "a_oCommandListener"
    .parameter "a_szMessage"
    .parameter "a_eCommand"

    .prologue
    .line 74
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 74
    invoke-direct {v0, p0, v1, p2, v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 79
    .local v0, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 81
    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 83
    return-void
.end method

.method public static Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 2
    .parameter "a_oActivity"
    .parameter "a_oCommandListener"
    .parameter "a_szTitle"
    .parameter "a_szMessage"
    .parameter "a_eCommand"

    .prologue
    .line 87
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 91
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 87
    invoke-direct {v0, p0, p2, p3, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 92
    .local v0, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 96
    return-void
.end method

.method public static Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 3
    .parameter "a_oActivity"
    .parameter "a_oCommandListener"
    .parameter "a_szTitle"
    .parameter "a_szMessage"
    .parameter "a_eCommand1"
    .parameter "a_eCommand2"

    .prologue
    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 104
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 100
    invoke-direct {v0, p0, p2, p3, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 105
    .local v0, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 106
    invoke-virtual {v0, p4, v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 107
    invoke-virtual {v0, p5, v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 108
    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 110
    return-void
.end method

.method public static Error(Landroid/app/Activity;)V
    .locals 4
    .parameter "a_oActivity"

    .prologue
    .line 37
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 37
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 42
    .local v0, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 44
    return-void
.end method

.method public static Error(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 2
    .parameter "a_oActivity"
    .parameter "a_oCommandListener"
    .parameter "a_szTitle"
    .parameter "a_szMessage"
    .parameter "a_eCommand"

    .prologue
    .line 48
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 52
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 48
    invoke-direct {v0, p0, p2, p3, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 53
    .local v0, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 55
    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 57
    return-void
.end method

.method public static Error(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "a_oActivity"
    .parameter "a_szMessage"

    .prologue
    .line 25
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 25
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 30
    .local v0, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 32
    return-void
.end method

.method public static Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "a_oActivity"
    .parameter "a_szTitle"
    .parameter "a_szMessage"

    .prologue
    .line 18
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 19
    .local v0, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 21
    return-void
.end method
