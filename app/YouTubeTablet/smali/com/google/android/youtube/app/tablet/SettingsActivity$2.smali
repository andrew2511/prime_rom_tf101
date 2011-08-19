.class Lcom/google/android/youtube/app/tablet/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/SettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity$2;->this$0:Lcom/google/android/youtube/app/tablet/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    invoke-static {}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->values()[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v1

    aget-object v0, v1, p2

    .line 79
    .local v0, mode:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity$2;->this$0:Lcom/google/android/youtube/app/tablet/SettingsActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/SettingsActivity;->access$000(Lcom/google/android/youtube/app/tablet/SettingsActivity;)Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->getSafeSearch()Lcom/google/android/youtube/core/utils/SafeSearch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/utils/SafeSearch;->setMode(Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;)V

    .line 80
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 81
    return-void
.end method
