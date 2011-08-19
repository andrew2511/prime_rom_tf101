.class Lcom/layar/FilterSettingsActivity$SliderControl;
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
    name = "SliderControl"
.end annotation


# instance fields
.field protected container:Landroid/view/ViewGroup;

.field protected sliderBar:Landroid/widget/SeekBar;

.field private sliderChanged:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private sliderLabel:Landroid/widget/TextView;

.field private sliderText:Landroid/widget/TextView;

.field private sliderTextTemplate:Ljava/lang/String;

.field private slider_max:I

.field private slider_min:I

.field final synthetic this$0:Lcom/layar/FilterSettingsActivity;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layar/FilterSettingsActivity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 9
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
    const/4 v7, 0x0

    .line 732
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->this$0:Lcom/layar/FilterSettingsActivity;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    const-string v4, "%value%"

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderTextTemplate:Ljava/lang/String;

    .line 678
    new-instance v4, Lcom/layar/FilterSettingsActivity$SliderControl$1;

    invoke-direct {v4, p0}, Lcom/layar/FilterSettingsActivity$SliderControl$1;-><init>(Lcom/layar/FilterSettingsActivity$SliderControl;)V

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderChanged:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 695
    const-string v4, "type"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->type:Ljava/lang/String;

    .line 696
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->type:Ljava/lang/String;

    const-string v5, "RANGE_SLIDER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 699
    .local v0, isRangeFilter:Z
    if-eqz v0, :cond_3

    const v4, 0x7f030021

    .line 698
    :goto_0
    invoke-virtual {p2, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->container:Landroid/view/ViewGroup;

    .line 702
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->container:Landroid/view/ViewGroup;

    const v5, 0x7f07005f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderLabel:Landroid/widget/TextView;

    .line 703
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderLabel:Landroid/widget/TextView;

    const-string v5, "label"

    invoke-virtual {p4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :cond_0
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->container:Landroid/view/ViewGroup;

    const v5, 0x7f070061

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderText:Landroid/widget/TextView;

    .line 707
    if-eqz v0, :cond_4

    .line 708
    const v4, 0x7f0901ae

    invoke-virtual {p1, v4}, Lcom/layar/FilterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderTextTemplate:Ljava/lang/String;

    .line 712
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->container:Landroid/view/ViewGroup;

    const v5, 0x7f070060

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderBar:Landroid/widget/SeekBar;

    .line 713
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderChanged:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 714
    const-string v4, "maxvalue"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_max:I

    .line 715
    const-string v4, "minvalue"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    .line 716
    const-string v4, "value"

    invoke-virtual {p4, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 717
    .local v3, value:I
    const/4 v1, 0x0

    .line 718
    .local v1, progress:I
    iget v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_max:I

    iget v5, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    if-ge v4, v5, :cond_2

    .line 719
    iget v2, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    .line 720
    .local v2, temp:I
    iget v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_max:I

    iput v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    .line 721
    iput v2, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_max:I

    .line 723
    .end local v2           #temp:I
    :cond_2
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_max:I

    iget v6, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 724
    iget v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    if-lt v3, v4, :cond_5

    iget v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    sub-int v4, v3, v4

    move v1, v4

    .line 725
    :goto_2
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 728
    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderTextTemplate:Ljava/lang/String;

    .line 729
    const-string v6, "%value%"

    iget-object v7, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->type:Ljava/lang/String;

    const-string v8, "RANGE_SLIDER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 730
    invoke-static {v3}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v7

    .line 728
    :goto_3
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 699
    .end local v1           #progress:I
    .end local v3           #value:I
    :cond_3
    const v4, 0x7f030023

    goto/16 :goto_0

    .line 709
    :cond_4
    const-string v4, "labelUnit"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%value% "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "labelUnit"

    invoke-virtual {p4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderTextTemplate:Ljava/lang/String;

    goto/16 :goto_1

    .restart local v1       #progress:I
    .restart local v3       #value:I
    :cond_5
    move v1, v7

    .line 724
    goto :goto_2

    .line 731
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method

.method static synthetic access$1(Lcom/layar/FilterSettingsActivity$SliderControl;)I
    .locals 1
    .parameter

    .prologue
    .line 675
    iget v0, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    return v0
.end method

.method static synthetic access$2(Lcom/layar/FilterSettingsActivity$SliderControl;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 673
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/FilterSettingsActivity$SliderControl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderTextTemplate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/FilterSettingsActivity$SliderControl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->type:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUI()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/layar/FilterSettingsActivity$SliderControl;->getUI()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getUI()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->container:Landroid/view/ViewGroup;

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
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, filterChanged:Z
    iget v2, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->slider_min:I

    iget-object v3, p0, Lcom/layar/FilterSettingsActivity$SliderControl;->sliderBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int v1, v2, v3

    .line 749
    .local v1, value:I
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 750
    const/4 v0, 0x1

    .line 751
    :cond_0
    const-string v2, "value"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 753
    return v0
.end method
