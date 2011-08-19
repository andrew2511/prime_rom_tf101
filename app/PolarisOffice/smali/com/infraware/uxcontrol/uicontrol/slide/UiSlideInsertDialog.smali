.class public Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;
.super Ljava/lang/Object;
.source "UiSlideInsertDialog.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# instance fields
.field private m_oActivity:Landroid/app/Activity;

.field private m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

.field private m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

.field private m_oNoneButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

.field private m_oTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

.field private m_oTitle2TextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

.field private m_oTitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

.field private m_oTitleSubtitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

.field private m_oTitleTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V
    .locals 3
    .parameter "a_oActivity"
    .parameter "a_oListener"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    .line 45
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 46
    .local v0, oUnitBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_DialogNoButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    const v2, 0x7f03002b

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createDialog(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .line 47
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v2, 0x7f0201e9

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setIcon(I)V

    .line 48
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v2, 0x7f0a020f

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setTitle(I)V

    .line 49
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 51
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    .line 52
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->initControls()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/infraware/common/UxDocViewerBase;)V
    .locals 3
    .parameter "a_oActivity"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    .line 31
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    check-cast v1, Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v1}, Lcom/infraware/common/UxDocViewerBase;->getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;

    .line 33
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 34
    .local v0, oUnitBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_DialogNoButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    const v2, 0x7f03002b

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createDialog(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .line 35
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v2, 0x7f0201e9

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setIcon(I)V

    .line 36
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v2, 0x7f0a020f

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setTitle(I)V

    .line 38
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 40
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->initControls()V

    .line 41
    return-void
.end method

.method private initControls()V
    .locals 4

    .prologue
    const v3, 0x7f02002c

    .line 56
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oNoneButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .line 57
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oNoneButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 58
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oNoneButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 60
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v1, 0x7f0c0092

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oNoneButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 62
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleSubtitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .line 63
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleSubtitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 64
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleSubtitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    const v1, 0x7f02024c

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 66
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v1, 0x7f0c0093

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleSubtitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 68
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .line 69
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 70
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    const v1, 0x7f020248

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 72
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v1, 0x7f0c0094

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 74
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .line 75
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 76
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    const v1, 0x7f02024e

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 78
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v1, 0x7f0c0095

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 80
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitle2TextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .line 81
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitle2TextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 82
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitle2TextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 84
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v1, 0x7f0c0096

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitle2TextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 86
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .line 87
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 88
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    const v1, 0x7f020246

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 90
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v1, 0x7f0c0097

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 91
    return-void
.end method


# virtual methods
.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 7
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 102
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-eq p2, v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, nSlideType:I
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oNoneButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 125
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/infraware/common/UxDocViewerBase;

    if-eqz v1, :cond_7

    .line 126
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideAdd:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v6, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 130
    :goto_2
    invoke-virtual {p0, v5}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->show(Z)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleSubtitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitleTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    if-ne p1, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    .line 122
    :cond_5
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTitle2TextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    if-ne p1, v1, :cond_6

    const/4 v0, 0x5

    goto :goto_1

    .line 123
    :cond_6
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oTextButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    .line 128
    :cond_7
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_PptTypeIndex:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v6, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V
    .locals 0
    .parameter "a_oCommandListener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oCommandListener:Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    .line 99
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "a_bShow"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideInsertDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->show(Z)V

    .line 95
    return-void
.end method
