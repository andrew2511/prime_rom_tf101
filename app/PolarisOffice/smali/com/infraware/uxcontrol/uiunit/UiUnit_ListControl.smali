.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;
.super Lcom/infraware/uxcontrol/uiunit/UiUnitView;
.source "UiUnit_ListControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;,
        Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I


# instance fields
.field private m_bFooterEnabled:Z

.field private m_bFooterVisible:Z

.field private m_nItemLayoutId:I

.field private m_nMinimumWidth:I

.field private m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;

.field private m_oFooterItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

.field private m_oItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I

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
    sput-object v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent:[I

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
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_nItemLayoutId"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;-><init>(Landroid/app/Activity;I)V

    .line 35
    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterEnabled:Z

    .line 36
    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterVisible:Z

    .line 42
    iput p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_nItemLayoutId:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 3
    .parameter "a_oActivity"
    .parameter "a_nItemLayoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;-><init>(Landroid/app/Activity;I)V

    .line 48
    if-eqz p2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, strFooter:Ljava/lang/String;
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-direct {v1, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oFooterItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    .line 53
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setFooterItemName(Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterEnabled:Z

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterVisible:Z

    .line 58
    .end local v0           #strFooter:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_nItemLayoutId:I

    invoke-direct {p0, v1, p3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->createAdapter(ILjava/util/List;)V

    .line 59
    return-void
.end method

.method static synthetic access$1(Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterVisible:Z

    return v0
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
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    if-nez p2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oItemList:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oItemList:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;

    .line 103
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private getMeasuredWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->measure(II)V

    .line 153
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected constructEvent()V
    .locals 5

    .prologue
    .line 169
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oEventMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    return-void

    .line 169
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    .line 170
    .local v1, eUnitEvent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;
    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 171
    .local v0, eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitEvent()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$1;

    invoke-direct {v4, p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$1;-><init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$2;

    invoke-direct {v4, p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$2;-><init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected createNativeView(I)V
    .locals 3
    .parameter "a_nResourceId"

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setNativeView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 94
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 96
    return-void
.end method

.method public getAdapter()Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method public getCustomAdapter()Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;

    return-object p0
.end method

.method public bridge synthetic getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getNativeView()Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnitView;->getNativeView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    return-object p0
.end method

.method public setCustomAdapter(Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, a_oAdapter:Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;,"Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter<*>;"
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, a_oItemList:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_nItemLayoutId:I

    invoke-direct {p0, v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->createAdapter(ILjava/util/List;)V

    .line 118
    return-void
.end method

.method public setDivider(I)V
    .locals 2
    .parameter "a_nDrawableId"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    .local v0, oDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 149
    return-void
.end method

.method protected setFooterItemName(Ljava/lang/String;)V
    .locals 1
    .parameter "a_strName"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterEnabled:Z

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oFooterItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    iput-object p1, v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strName:Ljava/lang/String;

    .line 142
    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterVisible:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setMinimumWidth(I)I
    .locals 2
    .parameter "a_nWidth"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 78
    :goto_0
    return v1

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getMeasuredWidth()I

    move-result v0

    .line 72
    .local v0, nMeasuredWidth:I
    if-ge p1, v0, :cond_1

    .line 73
    move p1, v0

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setWidth(I)V

    move v1, p1

    .line 78
    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "a_nWidth"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v0, oLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected showFooter(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterEnabled:Z

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    iput-boolean p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterVisible:Z

    .line 126
    iget-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_bFooterVisible:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oFooterItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_1
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->m_oFooterItem:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
