.class Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;
.super Ljava/lang/Object;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusStateBackup"
.end annotation


# instance fields
.field private final mFocusedId:I

.field private final mFocusedIndex:I

.field private final mFocusedItem:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;Lcom/google/android/googlequicksearchbox/ui/SuggestionView;)V
    .locals 1
    .parameter
    .parameter "suggestionView"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->getListItem()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedItem:Ljava/lang/Object;

    .line 168
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedIndex:I

    .line 169
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedId:I

    .line 170
    return-void
.end method


# virtual methods
.method public restore()V
    .locals 6

    .prologue
    .line 173
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 174
    .local v2, toFocus:Landroid/view/View;
    if-nez v2, :cond_0

    .line 176
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedIndex:I

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 180
    :cond_0
    instance-of v3, v2, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;

    if-eqz v3, :cond_2

    .line 181
    move-object v0, v2

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;

    move-object v1, v0

    .line 182
    .local v1, suggestionView:Lcom/google/android/googlequicksearchbox/ui/SuggestionView;
    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->getListItem()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedItem:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    iget v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedId:I

    if-ltz v3, :cond_1

    .line 185
    iget v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 187
    :cond_1
    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 192
    .end local v1           #suggestionView:Lcom/google/android/googlequicksearchbox/ui/SuggestionView;
    :cond_2
    return-void
.end method
