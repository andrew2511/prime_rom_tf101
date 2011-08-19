.class public Lcom/amazon/kcp/search/ReaderSearchProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "ReaderSearchProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "kindlereader"

.field private static final MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 32
    const-string v0, "kindlereader"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/search/ReaderSearchProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public static clearSearchHistory(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 42
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "kindlereader"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 43
    .local v0, suggestions:Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 44
    return-void
.end method

.method public static saveToSearchHistory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "query"

    .prologue
    .line 54
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "kindlereader"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    .local v0, suggestions:Landroid/provider/SearchRecentSuggestions;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
