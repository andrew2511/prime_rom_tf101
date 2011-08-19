.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;
.source "UiUnit_TableControl.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I


# instance fields
.field mToast:Landroid/widget/Toast;

.field m_nBeforeXCell:I

.field m_nBeforeYCell:I

.field m_nCellHeight:I

.field m_nCellWidth:I

.field m_nHeight:I

.field m_nWidth:I

.field m_oTables:[[Landroid/widget/LinearLayout;

.field str:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->values()[Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_DoubleClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_DragDone:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_DragMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_DragStarted:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_EditTextChanged:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Flick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemLongClicked:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_LongClick:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_TableSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_TouchDown:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_TouchMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_TouchUp:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 8
    .parameter "a_oActivity"
    .parameter "a_nResourceId"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitViewContainer;-><init>(Landroid/app/Activity;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->mToast:Landroid/widget/Toast;

    .line 17
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nWidth:I

    .line 18
    iput v7, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nHeight:I

    .line 19
    iput v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nBeforeXCell:I

    .line 20
    iput v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nBeforeYCell:I

    .line 25
    const/16 v0, 0x3e

    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nCellWidth:I

    .line 26
    const/16 v0, 0x2f

    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nCellHeight:I

    .line 32
    const/4 v0, 0x5

    filled-new-array {v7, v0}, [I

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    .line 34
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v3

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    .line 35
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v3

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    .line 36
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v3

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v5

    .line 37
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v3

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v6

    .line 38
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v3

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00d9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v7

    .line 40
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v4

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    .line 41
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v4

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00db

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    .line 42
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v4

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v5

    .line 43
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v4

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v6

    .line 44
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v4

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v7

    .line 46
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    .line 47
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    .line 48
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v5

    .line 49
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v6

    .line 50
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v7

    .line 52
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    .line 53
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    .line 54
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v5

    .line 55
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v6

    .line 56
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    const v2, 0x7f0c00e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    aput-object p0, v0, v7

    .line 58
    return-void
.end method


# virtual methods
.method protected constructEvent()V
    .locals 5

    .prologue
    .line 92
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oEventMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    return-void

    .line 92
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    .line 93
    .local v1, eUnitEvent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;
    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 94
    .local v0, eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oView:Landroid/view/View;

    new-instance v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;

    invoke-direct {v4, p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;-><init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method protected createNativeView(I)V
    .locals 3
    .parameter "a_nResourceId"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .local v0, oTableControlLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->setNativeView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public setCellColor(II)V
    .locals 4
    .parameter "a_nX"
    .parameter "a_nY"

    .prologue
    const/4 v3, 0x1

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, nXIndex:I
    const/4 v1, 0x0

    .line 72
    .local v1, nYIndex:I
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nWidth:I

    if-lt p1, v2, :cond_0

    .line 73
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nWidth:I

    sub-int p1, v2, v3

    .line 74
    :cond_0
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nHeight:I

    if-lt p2, v2, :cond_1

    .line 75
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nHeight:I

    sub-int p2, v2, v3

    .line 77
    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nHeight:I

    if-lt v1, v2, :cond_2

    .line 88
    return-void

    .line 79
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nWidth:I

    if-lt v0, v2, :cond_3

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_3
    if-lt p1, v0, :cond_4

    if-lt p2, v1, :cond_4

    .line 82
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    const v3, 0x7f0202df

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 79
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_oTables:[[Landroid/widget/LinearLayout;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    const v3, 0x7f0202de

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method
