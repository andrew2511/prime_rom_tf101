.class public interface abstract Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# virtual methods
.method public abstract getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract onSuggestionClicked(J)V
.end method

.method public abstract onSuggestionQueryRefineClicked(J)V
.end method

.method public abstract onSuggestionRemoveFromHistoryClicked(J)V
.end method

.method public abstract setOnKeyListener(Landroid/view/View$OnKeyListener;)V
.end method

.method public abstract setSeparatorFirst(Z)V
.end method

.method public abstract setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V
.end method

.method public abstract showSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V
.end method

.method public abstract showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V
.end method
