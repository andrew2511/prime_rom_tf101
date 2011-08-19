.class public Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView$Factory;
.super Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;
.source "LocalSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    const-string v0, "local"

    const v1, 0x7f040002

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public canCreateView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->isBusinessListing(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
