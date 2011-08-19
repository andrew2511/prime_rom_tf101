.class Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;
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
    .line 149
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onThemeChanged()V

    .line 154
    :cond_0
    return-void
.end method
