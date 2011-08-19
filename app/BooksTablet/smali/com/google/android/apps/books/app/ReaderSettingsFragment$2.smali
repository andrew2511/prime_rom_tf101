.class Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;
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
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v1, p1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$100(Lcom/google/android/apps/books/app/ReaderSettingsFragment;Landroid/content/SharedPreferences;)V

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$300(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)I

    move-result v0

    .line 134
    .local v0, readingMode:I
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment$2;->this$0:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->access$200(Lcom/google/android/apps/books/app/ReaderSettingsFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onReadingModeChanged(I)V

    .line 136
    .end local v0           #readingMode:I
    :cond_0
    return-void
.end method
