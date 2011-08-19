.class Lcom/layar/FilterSettingsActivity$SliderControl$1;
.super Ljava/lang/Object;
.source "FilterSettingsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/FilterSettingsActivity$SliderControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/FilterSettingsActivity$SliderControl;


# direct methods
.method constructor <init>(Lcom/layar/FilterSettingsActivity$SliderControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/FilterSettingsActivity$SliderControl$1;->this$1:Lcom/layar/FilterSettingsActivity$SliderControl;

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 681
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$SliderControl$1;->this$1:Lcom/layar/FilterSettingsActivity$SliderControl;

    invoke-static {v1}, Lcom/layar/FilterSettingsActivity$SliderControl;->access$1(Lcom/layar/FilterSettingsActivity$SliderControl;)I

    move-result v1

    add-int v0, v1, p2

    .line 682
    .local v0, val:I
    iget-object v1, p0, Lcom/layar/FilterSettingsActivity$SliderControl$1;->this$1:Lcom/layar/FilterSettingsActivity$SliderControl;

    invoke-static {v1}, Lcom/layar/FilterSettingsActivity$SliderControl;->access$2(Lcom/layar/FilterSettingsActivity$SliderControl;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/FilterSettingsActivity$SliderControl$1;->this$1:Lcom/layar/FilterSettingsActivity$SliderControl;

    invoke-static {v2}, Lcom/layar/FilterSettingsActivity$SliderControl;->access$3(Lcom/layar/FilterSettingsActivity$SliderControl;)Ljava/lang/String;

    move-result-object v2

    .line 683
    const-string v3, "%value%"

    iget-object v4, p0, Lcom/layar/FilterSettingsActivity$SliderControl$1;->this$1:Lcom/layar/FilterSettingsActivity$SliderControl;

    invoke-static {v4}, Lcom/layar/FilterSettingsActivity$SliderControl;->access$4(Lcom/layar/FilterSettingsActivity$SliderControl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RANGE_SLIDER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 684
    invoke-static {v0}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v4

    .line 682
    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    return-void

    .line 685
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 688
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 690
    return-void
.end method
