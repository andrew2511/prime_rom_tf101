.class Lcom/google/android/apps/books/preference/BrightnessPreference$2;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/preference/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/preference/BrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-static {v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$000(Lcom/google/android/apps/books/preference/BrightnessPreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-static {v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$300(Lcom/google/android/apps/books/preference/BrightnessPreference;)Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-static {v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$400(Lcom/google/android/apps/books/preference/BrightnessPreference;)I

    move-result v0

    .line 149
    .local v0, brightnessValue:I
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-static {v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$300(Lcom/google/android/apps/books/preference/BrightnessPreference;)Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/WindowUtils;->setBrightness(ILandroid/view/Window;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-static {v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$200(Lcom/google/android/apps/books/preference/BrightnessPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->persistPreference()V

    .line 135
    return-void
.end method
