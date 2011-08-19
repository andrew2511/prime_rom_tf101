.class Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/SearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onImeSuggestionClicked(ILcom/google/android/googlequicksearchbox/SuggestionList;Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 8
    .parameter "clickPosition"
    .parameter "displayedSuggestions"
    .parameter "allSuggestions"

    .prologue
    .line 777
    invoke-interface {p2, p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v7

    .line 778
    .local v7, clicked:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-eqz p3, :cond_0

    .line 779
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1300(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/Suggestions;->getIncludedSourceNames()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p3}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/Logger;->logSuggestionClick(JLcom/google/android/googlequicksearchbox/SuggestionList;Ljava/util/Set;Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public onSuggestionClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 4
    .parameter "adapter"
    .parameter "id"

    .prologue
    .line 749
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, p3, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1100(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 751
    .local v0, suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-eqz v0, :cond_0

    .line 752
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$300(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    .line 756
    :cond_0
    return-void
.end method

.method public onSuggestionQueryRefineClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 3
    .parameter "adapter"
    .parameter "id"

    .prologue
    .line 767
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, p3, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1100(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 769
    .local v0, suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedRefineSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 772
    :cond_0
    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 3
    .parameter "adapter"
    .parameter "id"

    .prologue
    .line 759
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    const/4 v2, 0x3

    invoke-static {v1, p1, p2, p3, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1100(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 761
    .local v0, suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-eqz v0, :cond_0

    .line 762
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->clickedRemoveFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 764
    :cond_0
    return-void
.end method
