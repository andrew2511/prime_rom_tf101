.class public Lcom/android/calendar/CalendarRecentSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "CalendarRecentSuggestionsProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 27
    const-string v0, "com.android.calendar.CalendarRecentSuggestionsProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/CalendarRecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 28
    return-void
.end method
