.class Lcom/layar/FilterSettingsActivity$CheckboxListControl;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Lcom/layar/FilterSettingsActivity$FilterUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FilterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckboxListControl"
.end annotation


# instance fields
.field private checkboxLabel:Landroid/widget/TextView;

.field private container:Landroid/view/ViewGroup;

.field private selectedId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 16
    .parameter
    .parameter "inflater"
    .parameter "root"
    .parameter "filterDetails"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 622
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 567
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 565
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->selectedId:Ljava/util/HashSet;

    .line 569
    const-string v4, "type"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->type:Ljava/lang/String;

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->type:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "CHECKBOXLIST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 573
    :cond_0
    const v4, 0x7f030020

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move-object/from16 v2, p3

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->container:Landroid/view/ViewGroup;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->container:Landroid/view/ViewGroup;

    move-object v4, v0

    const v5, 0x7f07005f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->checkboxLabel:Landroid/widget/TextView;

    .line 575
    const-string v4, "label"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 576
    .local v8, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->checkboxLabel:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const-string v4, "options"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 579
    .local v13, options:Lorg/json/JSONArray;
    const-string v4, "optionids"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 580
    .local v12, optionids:Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 582
    .local v6, optionsCount:I
    new-array v9, v6, [Ljava/lang/CharSequence;

    .line 583
    .local v9, items:[Ljava/lang/CharSequence;
    new-array v7, v6, [Ljava/lang/String;

    .line 585
    .local v7, ids:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->selectedId:Ljava/util/HashSet;

    move-object v4, v0

    if-nez v4, :cond_1

    const-string v4, "selectedvalues"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->selectedId:Ljava/util/HashSet;

    .line 587
    const-string v4, "selectedvalues"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 588
    .local v14, selectedValuesArray:Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 589
    .local v15, selectionCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v15, :cond_2

    .line 593
    .end local v10           #i:I
    .end local v14           #selectedValuesArray:Lorg/json/JSONArray;
    .end local v15           #selectionCount:I
    :cond_1
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    if-lt v11, v6, :cond_3

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->container:Landroid/view/ViewGroup;

    move-object v10, v0

    new-instance v4, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/layar/FilterSettingsActivity$CheckboxListControl$1;-><init>(Lcom/layar/FilterSettingsActivity$CheckboxListControl;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 590
    .end local v11           #j:I
    .restart local v10       #i:I
    .restart local v14       #selectedValuesArray:Lorg/json/JSONArray;
    .restart local v15       #selectionCount:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->selectedId:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 594
    .end local v10           #i:I
    .end local v14           #selectedValuesArray:Lorg/json/JSONArray;
    .end local v15           #selectionCount:I
    .restart local v11       #j:I
    :cond_3
    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v11

    .line 595
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v11

    .line 593
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method static synthetic access$1(Lcom/layar/FilterSettingsActivity$CheckboxListControl;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->selectedId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/FilterSettingsActivity$CheckboxListControl;)Lcom/layar/FilterSettingsActivity;
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->this$0:Lcom/layar/FilterSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    const-string v0, "CHECKBOXLIST"

    return-object v0
.end method

.method public bridge synthetic getUI()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->getUI()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getUI()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->container:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public saveValue(Lorg/json/JSONObject;)Z
    .locals 11
    .parameter "filterDetails"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 638
    const-string v6, "selectedvalues"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 639
    const-string v6, "selectedvalues"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 640
    .local v5, selectedValuesArray:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 641
    .local v4, oldSelections:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v4

    if-lt v0, v6, :cond_0

    .line 647
    .end local v0           #i:I
    .end local v5           #selectedValuesArray:Lorg/json/JSONArray;
    :goto_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 648
    .local v2, newSelections:Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->selectedId:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 652
    const-string v6, "selectedvalues"

    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    iget-object v6, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->selectedId:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    array-length v7, v4

    if-eq v6, v7, :cond_3

    move v6, v10

    .line 663
    :goto_3
    return v6

    .line 642
    .end local v2           #newSelections:Lorg/json/JSONArray;
    .restart local v0       #i:I
    .restart local v5       #selectedValuesArray:Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v0           #i:I
    .end local v4           #oldSelections:[Ljava/lang/String;
    .end local v5           #selectedValuesArray:Lorg/json/JSONArray;
    :cond_1
    new-array v4, v9, [Ljava/lang/String;

    .restart local v4       #oldSelections:[Ljava/lang/String;
    goto :goto_1

    .line 648
    .restart local v2       #newSelections:Lorg/json/JSONArray;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 649
    .local v1, newSelection:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 658
    .end local v1           #newSelection:Ljava/lang/String;
    :cond_3
    array-length v6, v4

    move v7, v9

    :goto_4
    if-lt v7, v6, :cond_4

    move v6, v9

    .line 663
    goto :goto_3

    .line 658
    :cond_4
    aget-object v3, v4, v7

    .line 659
    .local v3, oldSelection:Ljava/lang/String;
    iget-object v8, p0, Lcom/layar/FilterSettingsActivity$CheckboxListControl;->selectedId:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v6, v10

    .line 660
    goto :goto_3

    .line 658
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method
