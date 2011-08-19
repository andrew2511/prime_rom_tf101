.class Lcom/layar/FilterSettingsActivity$SearchBoxControl;
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
    name = "SearchBoxControl"
.end annotation


# instance fields
.field private container:Landroid/view/ViewGroup;

.field private searchBox:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 3
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
    .line 456
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$SearchBoxControl;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const-string v1, "type"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, type:Ljava/lang/String;
    const-string v1, "SEARCHBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    :cond_0
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/layar/FilterSettingsActivity$SearchBoxControl;->container:Landroid/view/ViewGroup;

    .line 451
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$SearchBoxControl;->container:Landroid/view/ViewGroup;

    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/layar/FilterSettingsActivity$SearchBoxControl;->searchBox:Landroid/widget/EditText;

    .line 452
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$SearchBoxControl;->searchBox:Landroid/widget/EditText;

    const-string v2, "label"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 453
    const-string v1, "value"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$SearchBoxControl;->searchBox:Landroid/widget/EditText;

    const-string v2, "value"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    const-string v0, "SEARCHBOX"

    return-object v0
.end method

.method public getUI()Landroid/view/View;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$SearchBoxControl;->container:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public saveValue(Lorg/json/JSONObject;)Z
    .locals 3
    .parameter "filterDetails"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 470
    const-string v1, ""

    .line 471
    .local v1, oldSearch:Ljava/lang/String;
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/layar/FilterSettingsActivity$SearchBoxControl;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, newSearch:Ljava/lang/String;
    const-string v2, "value"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
