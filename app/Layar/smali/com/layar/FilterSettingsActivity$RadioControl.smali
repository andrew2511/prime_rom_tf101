.class Lcom/layar/FilterSettingsActivity$RadioControl;
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
    name = "RadioControl"
.end annotation


# instance fields
.field private container:Landroid/view/ViewGroup;

.field private radioLabel:Landroid/widget/TextView;

.field private selectedId:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 10
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
    .line 534
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->selectedId:Ljava/lang/String;

    .line 490
    const-string v0, "type"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->type:Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->type:Ljava/lang/String;

    const-string v1, "RADIOLIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    :cond_0
    const v0, 0x7f030020

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->container:Landroid/view/ViewGroup;

    .line 495
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->container:Landroid/view/ViewGroup;

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->radioLabel:Landroid/widget/TextView;

    .line 496
    const-string v0, "label"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->radioLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const-string v0, "options"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 500
    .local v8, options:Lorg/json/JSONArray;
    const-string v0, "optionids"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 501
    .local v7, optionids:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 503
    .local v2, optionsCount:I
    new-array v5, v2, [Ljava/lang/CharSequence;

    .line 504
    .local v5, items:[Ljava/lang/CharSequence;
    new-array v3, v2, [Ljava/lang/String;

    .line 506
    .local v3, ids:[Ljava/lang/String;
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->selectedId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "selectedvalue"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    const-string v0, "selectedvalue"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->selectedId:Ljava/lang/String;

    .line 508
    :cond_1
    const/4 v6, 0x0

    .local v6, j:I
    :goto_0
    if-lt v6, v2, :cond_2

    .line 513
    iget-object v9, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->container:Landroid/view/ViewGroup;

    new-instance v0, Lcom/layar/FilterSettingsActivity$RadioControl$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/layar/FilterSettingsActivity$RadioControl$1;-><init>(Lcom/layar/FilterSettingsActivity$RadioControl;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 509
    :cond_2
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 510
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 508
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method static synthetic access$1(Lcom/layar/FilterSettingsActivity$RadioControl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->selectedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/FilterSettingsActivity$RadioControl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->selectedId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/layar/FilterSettingsActivity$RadioControl;)Lcom/layar/FilterSettingsActivity;
    .locals 1
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->this$0:Lcom/layar/FilterSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const-string v0, "RADIOLIST"

    return-object v0
.end method

.method public bridge synthetic getUI()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/layar/FilterSettingsActivity$RadioControl;->getUI()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getUI()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->container:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public saveValue(Lorg/json/JSONObject;)Z
    .locals 4
    .parameter "filterDetails"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, filterChanged:Z
    const-string v2, "selectedvalue"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, selection:Ljava/lang/String;
    iget-object v2, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->selectedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    const/4 v0, 0x1

    .line 553
    :cond_0
    const-string v2, "selectedvalue"

    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$RadioControl;->selectedId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    return v0
.end method
