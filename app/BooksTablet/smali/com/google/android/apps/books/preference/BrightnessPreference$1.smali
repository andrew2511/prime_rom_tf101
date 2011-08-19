.class Lcom/google/android/apps/books/preference/BrightnessPreference$1;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 121
    iput-object p1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$1;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$1;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-static {v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$000(Lcom/google/android/apps/books/preference/BrightnessPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$1;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-static {v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$100(Lcom/google/android/apps/books/preference/BrightnessPreference;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$1;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->persistPreference()V

    goto :goto_0
.end method
