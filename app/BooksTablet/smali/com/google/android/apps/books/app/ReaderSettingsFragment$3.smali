.class Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;
.super Ljava/lang/Object;
.source "ReaderSettingsFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/preference/LightweightPreference$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$400(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/preference/BrightnessPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/preference/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/apps/books/preference/LocalPreferences;->getBrightness()I

    move-result v0

    .line 144
    .local v0, brightness:I
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onBrightnessChanged(I)V

    .line 146
    .end local v0           #brightness:I
    :cond_0
    return-void
.end method
