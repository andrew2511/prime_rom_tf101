.class public Lcom/google/android/finsky/providers/RecentSuggestionProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "RecentSuggestionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 17
    const-string v0, "com.google.android.finsky.RecentSuggestionProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 18
    return-void
.end method
