.class public Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
.super Ljava/lang/Object;
.source "UiUnitBuilder.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitStyle:[I


# instance fields
.field m_oActivity:Landroid/app/Activity;

.field m_oInflater:Landroid/view/LayoutInflater;

.field private m_oSheetToolbarButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private m_oSlideToolbarButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private m_oWordToolbarButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitStyle()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->values()[Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Bookclip:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Bookmark:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_19

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_18

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog3Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_17

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_DialogContextMenu:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_16

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_DialogContextMenuButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_15

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_DialogNoButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_14

    :goto_8
    :try_start_8
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_DialogSpinner:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_13

    :goto_9
    :try_start_9
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_12

    :goto_a
    :try_start_a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Sheet:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_11

    :goto_b
    :try_start_b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Slide:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_10

    :goto_c
    :try_start_c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerGrid:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_f

    :goto_d
    :try_start_d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_e

    :goto_e
    :try_start_e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerListButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_d

    :goto_f
    :try_start_f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SubmenuSearchOption:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_c

    :goto_10
    :try_start_10
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SubmenuToolbar:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_b

    :goto_11
    :try_start_11
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToggleButtonGroupCheckBox:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_a

    :goto_12
    :try_start_12
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToggleButtonGroupRadio:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_9

    :goto_13
    :try_start_13
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToolbarFileSync:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_8

    :goto_14
    :try_start_14
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToolbarFind:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_7

    :goto_15
    :try_start_15
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToolbarReplace:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_6

    :goto_16
    :try_start_16
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToolbarSheet:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_5

    :goto_17
    :try_start_17
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToolbarSheetTabControl:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_4

    :goto_18
    :try_start_18
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToolbarSlide:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_3

    :goto_19
    :try_start_19
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToolbarWord:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_2

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Viewer:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Word:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_0

    :goto_1c
    sput-object v0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitStyle:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1c

    :catch_1
    move-exception v1

    goto :goto_1b

    :catch_2
    move-exception v1

    goto :goto_1a

    :catch_3
    move-exception v1

    goto :goto_19

    :catch_4
    move-exception v1

    goto :goto_18

    :catch_5
    move-exception v1

    goto :goto_17

    :catch_6
    move-exception v1

    goto :goto_16

    :catch_7
    move-exception v1

    goto :goto_15

    :catch_8
    move-exception v1

    goto :goto_14

    :catch_9
    move-exception v1

    goto :goto_13

    :catch_a
    move-exception v1

    goto :goto_12

    :catch_b
    move-exception v1

    goto/16 :goto_11

    :catch_c
    move-exception v1

    goto/16 :goto_10

    :catch_d
    move-exception v1

    goto/16 :goto_f

    :catch_e
    move-exception v1

    goto/16 :goto_e

    :catch_f
    move-exception v1

    goto/16 :goto_d

    :catch_10
    move-exception v1

    goto/16 :goto_c

    :catch_11
    move-exception v1

    goto/16 :goto_b

    :catch_12
    move-exception v1

    goto/16 :goto_a

    :catch_13
    move-exception v1

    goto/16 :goto_9

    :catch_14
    move-exception v1

    goto/16 :goto_8

    :catch_15
    move-exception v1

    goto/16 :goto_7

    :catch_16
    move-exception v1

    goto/16 :goto_6

    :catch_17
    move-exception v1

    goto/16 :goto_5

    :catch_18
    move-exception v1

    goto/16 :goto_4

    :catch_19
    move-exception v1

    goto/16 :goto_3

    :catch_1a
    move-exception v1

    goto/16 :goto_2

    :catch_1b
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a_oActivity"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oInflater:Landroid/view/LayoutInflater;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private createSheetToolbar()Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;
    .locals 5

    .prologue
    const v4, 0x7f02030a

    .line 287
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    const v3, 0x7f030067

    invoke-direct {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;-><init>(Landroid/app/Activity;I)V

    .line 289
    .local v1, oUnitToolbar:Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 290
    .local v0, oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarSave:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 291
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 292
    const v2, 0x7f0a0344

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 293
    const v2, 0x7f020285

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 294
    const v2, 0x7f0c0126

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 295
    const v2, 0x7f020286

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 296
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 299
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarUndo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 300
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 301
    const v2, 0x7f0a0347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 302
    const v2, 0x7f02028d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 303
    const v2, 0x7f0c0127

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 304
    const v2, 0x7f02028e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 305
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 308
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarRedo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 309
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 310
    const v2, 0x7f0a0342

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 311
    const v2, 0x7f020280

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 312
    const v2, 0x7f0c0128

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 313
    const v2, 0x7f020281

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 314
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 317
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarClipboard:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 318
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 319
    const v2, 0x7f0a0334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 320
    const v2, 0x7f020264

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 321
    const v2, 0x7f0c0129

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 322
    const v2, 0x7f020265

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 323
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 335
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarFontSize:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 336
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 337
    const v2, 0x7f0a0338

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 338
    const v2, 0x7f02026a

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 339
    const v2, 0x7f0c012a

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 340
    const v2, 0x7f02026b

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 341
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 344
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarFontStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 345
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 346
    const v2, 0x7f0a0339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 347
    const v2, 0x7f02026c

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 348
    const v2, 0x7f0c012b

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 349
    const v2, 0x7f02026d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 350
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 353
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarFontColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 354
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 355
    const v2, 0x7f0a0337

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 356
    const v2, 0x7f020268

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 357
    const v2, 0x7f0c012c

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 358
    const v2, 0x7f020269

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 359
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 362
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarAlignment:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 363
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 364
    const v2, 0x7f0a032d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 365
    const v2, 0x7f020254

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 366
    const v2, 0x7f0c012d

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 367
    const v2, 0x7f020255

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 368
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 371
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarMergeSplit:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 372
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 373
    const v2, 0x7f0a0340

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 374
    const v2, 0x7f02027a

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 375
    const v2, 0x7f0c012e

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 376
    const v2, 0x7f02027b

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 377
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 380
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarFormatCells:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 381
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 382
    const v2, 0x7f0a033a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 383
    const v2, 0x7f02027c

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 384
    const v2, 0x7f0c012f

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 385
    const v2, 0x7f02027d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 386
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 389
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarDecimalPoint:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 390
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 391
    const v2, 0x7f0a0335

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 392
    const v2, 0x7f020262

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 393
    const v2, 0x7f0c0130

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 394
    const v2, 0x7f020263

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 395
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 398
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarInsertFunction:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 399
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 400
    const v2, 0x7f0a033e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 401
    const v2, 0x7f02026e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 402
    const v2, 0x7f0c0131

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 403
    const v2, 0x7f02026f

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 404
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 407
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarInsertChart:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 408
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 409
    const v2, 0x7f0a033d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 410
    const v2, 0x7f020260

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 411
    const v2, 0x7f0c0132

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 412
    const v2, 0x7f020261

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 413
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 416
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarBackgroundColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 417
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 418
    const v2, 0x7f0a032e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 419
    const v2, 0x7f020256

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 420
    const v2, 0x7f0c0133

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 421
    const v2, 0x7f020257

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 422
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 425
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarBorder:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 426
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 427
    const v2, 0x7f0a032f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 428
    const v2, 0x7f020258

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 429
    const v2, 0x7f0c0134

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 430
    const v2, 0x7f020259

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 431
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 434
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarBorderStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 435
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 436
    const v2, 0x7f0a0331

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 437
    const v2, 0x7f020278

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 438
    const v2, 0x7f0c0135

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 439
    const v2, 0x7f020279

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 440
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 443
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarCell:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 444
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 445
    const v2, 0x7f0a0333

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 446
    const v2, 0x7f02025e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 447
    const v2, 0x7f0c0136

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 448
    const v2, 0x7f02025f

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 449
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    return-object v1
.end method

.method private createSlideToolbar()Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;
    .locals 5

    .prologue
    const v4, 0x7f02030a

    .line 455
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    const v3, 0x7f030069

    invoke-direct {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;-><init>(Landroid/app/Activity;I)V

    .line 457
    .local v1, oUnitToolbar:Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 458
    .local v0, oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarSave:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 459
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 460
    const v2, 0x7f0a0344

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 461
    const v2, 0x7f020285

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 462
    const v2, 0x7f0c013a

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 463
    const v2, 0x7f020286

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 464
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 467
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarUndo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 468
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 469
    const v2, 0x7f0a0347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 470
    const v2, 0x7f02028d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 471
    const v2, 0x7f0c0127

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 472
    const v2, 0x7f02028e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 473
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 476
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarRedo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 477
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 478
    const v2, 0x7f0a0342

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 479
    const v2, 0x7f020280

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 480
    const v2, 0x7f0c0128

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 481
    const v2, 0x7f020281

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 482
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 485
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarClipboard:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 486
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 487
    const v2, 0x7f0a0334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 488
    const v2, 0x7f020264

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 489
    const v2, 0x7f0c013b

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 490
    const v2, 0x7f020265

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 491
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 494
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarSlideShow:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 495
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 496
    const v2, 0x7f0a0346

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 497
    const v2, 0x7f020289

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 498
    const v2, 0x7f0c013c

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 499
    const v2, 0x7f02028a

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 500
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 503
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarTextBox:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 504
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 505
    const v2, 0x7f0a0068

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 506
    const v2, 0x7f020274

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 507
    const v2, 0x7f0c013d

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 508
    const v2, 0x7f020275

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 509
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 512
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarFontSize:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 513
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 514
    const v2, 0x7f0a0338

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 515
    const v2, 0x7f02026a

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 516
    const v2, 0x7f0c013e

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 517
    const v2, 0x7f02026b

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 518
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 521
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarFontStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 522
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 523
    const v2, 0x7f0a0339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 524
    const v2, 0x7f02026c

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 525
    const v2, 0x7f0c013f

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 526
    const v2, 0x7f02026d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 527
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 530
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarFontColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 531
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 532
    const v2, 0x7f0a0337

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 533
    const v2, 0x7f020268

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 534
    const v2, 0x7f0c0140

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 535
    const v2, 0x7f020269

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 536
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 539
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarAlignment:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 540
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 541
    const v2, 0x7f0a032d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 542
    const v2, 0x7f020254

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 543
    const v2, 0x7f0c0141

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 544
    const v2, 0x7f020255

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 545
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 548
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarBulletList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 549
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 550
    const v2, 0x7f0a0332

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 551
    const v2, 0x7f02025c

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 552
    const v2, 0x7f0c0142

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 553
    const v2, 0x7f02025d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 554
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 557
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarNumberedList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 558
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 559
    const v2, 0x7f0a0341

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 560
    const v2, 0x7f02027e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 561
    const v2, 0x7f0c0143

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 562
    const v2, 0x7f02027f

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 563
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 566
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarLineSpacing:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 567
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 568
    const v2, 0x7f0a033f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 569
    const v2, 0x7f020276

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 570
    const v2, 0x7f0c0144

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 571
    const v2, 0x7f020277

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 572
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 575
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarInsert:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 576
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 577
    const v2, 0x7f0a033c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 578
    const v2, 0x7f020272

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 579
    const v2, 0x7f0c0145

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 580
    const v2, 0x7f020273

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 581
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 584
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarShape:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 585
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 586
    const v2, 0x7f0a0345

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 587
    const v2, 0x7f020266

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 588
    const v2, 0x7f0c0146

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 589
    const v2, 0x7f020267

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 590
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 593
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarFillColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 594
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 595
    const v2, 0x7f0a0336

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 596
    const v2, 0x7f020256

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 597
    const v2, 0x7f0c0147

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 598
    const v2, 0x7f020257

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 599
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 602
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarBorderColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 603
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 604
    const v2, 0x7f0a0330

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 605
    const v2, 0x7f02025a

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 606
    const v2, 0x7f0c0148

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 607
    const v2, 0x7f02025b

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 608
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 611
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarCell:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 612
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 613
    const v2, 0x7f0a0333

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 614
    const v2, 0x7f02025e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 615
    const v2, 0x7f0c0149

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 616
    const v2, 0x7f02025f

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 617
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    return-object v1
.end method

.method private createWordToolbar()Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;
    .locals 5

    .prologue
    const v4, 0x7f02030a

    .line 110
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    const v3, 0x7f03006a

    invoke-direct {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;-><init>(Landroid/app/Activity;I)V

    .line 112
    .local v1, oUnitToolbar:Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 113
    .local v0, oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarSave:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 114
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 115
    const v2, 0x7f0a0344

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 116
    const v2, 0x7f020285

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 117
    const v2, 0x7f0c014b

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 118
    const v2, 0x7f020286

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 119
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 122
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarUndo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 123
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 124
    const v2, 0x7f0a0347

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 125
    const v2, 0x7f02028d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 126
    const v2, 0x7f0c0127

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 127
    const v2, 0x7f02028e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 128
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 131
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarRedo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 132
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 133
    const v2, 0x7f0a0342

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 134
    const v2, 0x7f020280

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 135
    const v2, 0x7f0c0128

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 136
    const v2, 0x7f020281

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 137
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 140
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarClipboard:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 141
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 142
    const v2, 0x7f0a0334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 143
    const v2, 0x7f020264

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 144
    const v2, 0x7f0c014c

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 145
    const v2, 0x7f020265

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 146
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 158
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarFontSize:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 159
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 160
    const v2, 0x7f0a0338

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 161
    const v2, 0x7f02026a

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 162
    const v2, 0x7f0c014d

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 163
    const v2, 0x7f02026b

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 164
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 167
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarFontStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 168
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 169
    const v2, 0x7f0a0339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 170
    const v2, 0x7f02026c

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 171
    const v2, 0x7f0c014e

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 172
    const v2, 0x7f02026d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 173
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 176
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarFontColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 177
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 178
    const v2, 0x7f0a0337

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 179
    const v2, 0x7f020268

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 180
    const v2, 0x7f0c014f

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 181
    const v2, 0x7f020269

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 182
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 185
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarAlignment:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 186
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 187
    const v2, 0x7f0a032d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 188
    const v2, 0x7f020254

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 189
    const v2, 0x7f0c0150

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 190
    const v2, 0x7f020255

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 191
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 194
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarBulletList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 195
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 196
    const v2, 0x7f0a0332

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 197
    const v2, 0x7f02025c

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 198
    const v2, 0x7f0c0151

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 199
    const v2, 0x7f02025d

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 200
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 203
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarNumberedList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 204
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 205
    const v2, 0x7f0a0341

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 206
    const v2, 0x7f02027e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 207
    const v2, 0x7f0c0152

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 208
    const v2, 0x7f02027f

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 209
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 212
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarIndent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 213
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 214
    const v2, 0x7f0a033b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 215
    const v2, 0x7f020270

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 216
    const v2, 0x7f0c0153

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 217
    const v2, 0x7f020271

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 218
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 221
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarLineSpacing:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 222
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 223
    const v2, 0x7f0a033f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 224
    const v2, 0x7f020276

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 225
    const v2, 0x7f0c0154

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 226
    const v2, 0x7f020277

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 227
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 230
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarReflowText:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 231
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 232
    const v2, 0x7f0a0343

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 233
    const v2, 0x7f020282

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 234
    const v2, 0x7f0c0155

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 235
    const v2, 0x7f020283

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 236
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 239
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarInsert:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 240
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 241
    const v2, 0x7f0a033c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 242
    const v2, 0x7f020272

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 243
    const v2, 0x7f0c0156

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 244
    const v2, 0x7f020273

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 245
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 248
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarShape:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 249
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 250
    const v2, 0x7f0a0345

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 251
    const v2, 0x7f020266

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 252
    const v2, 0x7f0c0157

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 253
    const v2, 0x7f020267

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 254
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 257
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarBackgroundColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 258
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 259
    const v2, 0x7f0a032e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 260
    const v2, 0x7f020256

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 261
    const v2, 0x7f0c0158

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 262
    const v2, 0x7f020257

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 263
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 266
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarBorder:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 267
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 268
    const v2, 0x7f0a032f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 269
    const v2, 0x7f020258

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 270
    const v2, 0x7f0c0159

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 271
    const v2, 0x7f020259

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 272
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;

    .end local v0           #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;-><init>(Landroid/app/Activity;I)V

    .line 275
    .restart local v0       #oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarCell:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 276
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 277
    const v2, 0x7f0a0333

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setUserData(Ljava/lang/Object;)V

    .line 278
    const v2, 0x7f02025e

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setImage(I)V

    .line 279
    const v2, 0x7f0c015a

    invoke-virtual {v1, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 280
    const v2, 0x7f02025f

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;->setCanDisable(I)V

    .line 281
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    return-object v1
.end method


# virtual methods
.method public createDialog(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    .locals 9
    .parameter "a_eStyle"
    .parameter "a_nContentLayoutId"

    .prologue
    const v8, 0x7f0a0304

    const/4 v7, -0x2

    const v6, 0x7f0a02ac

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitStyle()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 75
    :goto_0
    if-eqz p2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, oView:Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setNativeView(Landroid/view/View;)V

    .line 81
    .end local v1           #oView:Landroid/view/View;
    :cond_0
    return-object v0

    .line 49
    :pswitch_0
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .end local v0           #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;-><init>(Landroid/app/Activity;ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 50
    .restart local v0       #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    goto :goto_0

    .line 52
    :pswitch_1
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .end local v0           #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;-><init>(Landroid/app/Activity;ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 54
    .restart local v0       #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v5, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButton(ILjava/lang/CharSequence;)V

    .line 55
    const/4 v2, -0x3

    .line 56
    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButton(ILjava/lang/CharSequence;)V

    .line 58
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v7, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButton(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :pswitch_2
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .end local v0           #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;-><init>(Landroid/app/Activity;ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 62
    .restart local v0       #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButton(ILjava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButton(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :pswitch_3
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .end local v0           #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;-><init>(Landroid/app/Activity;ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 67
    .restart local v0       #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButton(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :pswitch_4
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .end local v0           #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v4, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;-><init>(Landroid/app/Activity;ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 71
    .restart local v0       #oUnitDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setButton(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public createSpinner(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;ILjava/util/List;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;
    .locals 3
    .parameter "a_eStyle"
    .parameter "a_nItemLayoutResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;",
            "I",
            "Ljava/util/List",
            "<*>;)",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;"
        }
    .end annotation

    .prologue
    .line 671
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 673
    .local v0, oUnitSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitStyle()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 681
    :goto_0
    return-object v0

    .line 675
    :pswitch_0
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    .end local v0           #oUnitSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;-><init>(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;ILjava/util/List;)V

    .line 676
    .restart local v0       #oUnitSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;
    goto :goto_0

    .line 678
    :pswitch_1
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    .end local v0           #oUnitSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerGrid:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;-><init>(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;ILjava/util/List;)V

    .restart local v0       #oUnitSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;
    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createSpinner(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;
    .locals 3
    .parameter "a_eStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;",
            "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
            "<*>;)",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;"
        }
    .end annotation

    .prologue
    .line 685
    .local p2, a_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;,"Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter<*>;"
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerListButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    if-eq p1, v1, :cond_0

    .line 686
    const/4 v1, 0x0

    .line 690
    :goto_0
    return-object v1

    .line 688
    :cond_0
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerListButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, v1, v2, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;-><init>(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)V

    .local v0, oUnitSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;
    move-object v1, v0

    .line 690
    goto :goto_0
.end method

.method public createToggleButtonGroup(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I[Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;)Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;
    .locals 9
    .parameter "a_eStyle"
    .parameter "a_nLayoutId"
    .parameter "a_aoItems"

    .prologue
    .line 644
    const/4 v3, 0x0

    .line 645
    .local v3, oUnitToggleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;
    const/4 v0, 0x0

    .line 647
    .local v0, bIsMultiple:Z
    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToggleButtonGroupCheckBox:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    if-ne p1, v4, :cond_0

    .line 648
    const/4 v0, 0x1

    .line 651
    :cond_0
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    .end local v3           #oUnitToggleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, p2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;-><init>(Landroid/app/Activity;IZ)V

    .line 653
    .restart local v3       #oUnitToggleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    .line 659
    return-object v3

    .line 653
    :cond_1
    aget-object v2, p3, v5

    .line 654
    .local v2, oItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    iget-object v6, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oActivity:Landroid/app/Activity;

    iget v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_nButtonDrawableId:I

    iget v8, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_nBackgroundDrawableId:I

    invoke-direct {v1, v6, v7, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;-><init>(Landroid/app/Activity;II)V

    .line 655
    .local v1, oButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    iget-object v6, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_eEvent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    iget-object v7, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_eCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1, v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 656
    iget v6, v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;->m_nHolderLayoutId:I

    invoke-virtual {v3, v6, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 653
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public createToolbar(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;
    .locals 3
    .parameter "a_eStyle"

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, oUnitToolbar:Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitStyle()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createWordToolbar()Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;

    move-result-object v0

    .line 96
    goto :goto_0

    .line 98
    :pswitch_1
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createSheetToolbar()Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;

    move-result-object v0

    .line 99
    goto :goto_0

    .line 101
    :pswitch_2
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createSlideToolbar()Lcom/infraware/uxcontrol/uiunit/UiUnit_Toolbar;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getSheetToolbar()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSheetToolbarButton:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSlideToolbar()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oSlideToolbarButton:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWordToolbar()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ImageButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->m_oWordToolbarButton:Ljava/util/ArrayList;

    return-object v0
.end method
