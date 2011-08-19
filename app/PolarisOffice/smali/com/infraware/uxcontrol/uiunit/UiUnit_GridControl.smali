.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitView;
.source "UiUnit_GridControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;,
        Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I


# instance fields
.field private m_nItemLayoutResourceId:I

.field private m_nNormalBackgroundResourceId:I

.field private m_nSelectedBackgroundResourceId:I

.field private m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

.field private m_oItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I

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
    sput-object v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I

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

.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_nResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;-><init>(Landroid/app/Activity;I)V

    .line 39
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_nItemLayoutResourceId:I

    .line 41
    iget v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_nItemLayoutResourceId:I

    invoke-direct {p0, v0, p3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->createAdapter(ILjava/util/List;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;II)V
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_nResourceId"
    .parameter
    .parameter "a_nNormalBackgroundResourceId"
    .parameter "a_nSelectedBackroundResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;-><init>(Landroid/app/Activity;I)V

    .line 47
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_nItemLayoutResourceId:I

    .line 49
    iput p4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_nNormalBackgroundResourceId:I

    .line 50
    iput p5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_nSelectedBackgroundResourceId:I

    .line 52
    iget v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_nItemLayoutResourceId:I

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->createAdapter(ILjava/util/List;II)V

    .line 53
    return-void
.end method

.method private createAdapter(ILjava/util/List;)V
    .locals 3
    .parameter "a_nItemResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    iput-object p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    .line 120
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    .line 121
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void
.end method

.method private createAdapter(ILjava/util/List;II)V
    .locals 6
    .parameter "a_nItemResourceId"
    .parameter
    .parameter "a_nNormalBackgroundResourceId"
    .parameter "a_nSelectedBackroundResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    iput-object p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    .line 126
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    move v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    .line 127
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    return-void
.end method

.method private getMeasuredWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/GridView;->measure(II)V

    .line 105
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected constructEvent()V
    .locals 5

    .prologue
    .line 146
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oEventMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    return-void

    .line 146
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    .line 147
    .local v1, eUnitEvent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;
    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 148
    .local v0, eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v3

    new-instance v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$1;

    invoke-direct {v4, p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$1;-><init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected createNativeView(I)V
    .locals 2
    .parameter "a_nResourceId"

    .prologue
    .line 110
    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->setNativeView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 112
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 113
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 114
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 115
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 116
    return-void
.end method

.method public getAdapter()Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    return-object v0
.end method

.method public bridge synthetic getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method public getNativeView()Landroid/widget/GridView;
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->getNativeView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/GridView;

    return-object p0
.end method

.method public resetGridItemSelected()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->notifyDataSetChanged()V

    .line 73
    :cond_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->setItemSelected(Z)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_nItemLayoutResourceId:I

    invoke-direct {p0, v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->createAdapter(ILjava/util/List;)V

    .line 142
    return-void
.end method

.method public setGridItemSelected(I)V
    .locals 3
    .parameter "a_nIndex"

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->setItemSelected(Z)V

    .line 62
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Adapter;->notifyDataSetChanged()V

    .line 64
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->m_oItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->setItemSelected(Z)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMinimumWidth(I)I
    .locals 2
    .parameter "a_nWidth"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getMeasuredWidth()I

    move-result v0

    .line 85
    .local v0, nMeasuredWidth:I
    if-ge p1, v0, :cond_1

    .line 86
    move p1, v0

    .line 89
    :cond_1
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->setWidth(I)V

    move v1, p1

    .line 91
    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "a_nWidth"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v0, oLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;->getNativeView()Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
