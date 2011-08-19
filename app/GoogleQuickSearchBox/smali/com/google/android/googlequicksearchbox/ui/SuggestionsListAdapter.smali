.class public Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsListAdapter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;


# instance fields
.field private mAllDisabled:Z

.field private mCurrentNumSlots:I

.field private mCurrentNumSuggestions:I

.field private mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private final mListEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNumListEntries:I

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeparatorFirst:Z

.field private mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

.field private final mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

.field private final mViewTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V
    .locals 1
    .parameter "viewFactory"

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSeparatorFirst:Z

    .line 82
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    .line 84
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    .line 85
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getViewTypes()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->addViewTypes(Ljava/util/Collection;)V

    .line 86
    return-void
.end method

.method private addViewTypes(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, viewTypes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, viewType:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    .end local v1           #viewType:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getSeparator(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 2
    .parameter "suggestion"
    .parameter "prevSuggestion"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getSuggestionGrouping(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v0

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    if-ne v0, v1, :cond_0

    .line 220
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 222
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_NORMAL:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    goto :goto_0
.end method

.method private getSuggestionGrouping(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
    .locals 2
    .parameter "suggestion"
    .parameter "prevSuggestion"

    .prologue
    .line 201
    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    .line 203
    .local v0, source:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->shouldGroupResults()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 205
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    .line 211
    .end local v0           #source:Lcom/google/android/googlequicksearchbox/Source;
    :goto_0
    return-object v1

    .line 207
    .restart local v0       #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_0
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    goto :goto_0

    .line 211
    .end local v0           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_1
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->NONE:Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    goto :goto_0
.end method

.method private populateListEntries(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V
    .locals 10
    .parameter "suggestionList"
    .parameter "numSuggestions"
    .parameter "numSlots"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 153
    iget-boolean v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSeparatorFirst:Z

    if-eqz v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    sget-object v6, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_FIRST:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, prevSuggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 161
    const/4 v4, 0x0

    .line 162
    .local v4, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-ge v0, p2, :cond_1

    .line 163
    invoke-interface {p1, v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v4

    .line 165
    :cond_1
    if-lez v0, :cond_2

    .line 166
    invoke-direct {p0, v4, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getSeparator(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v2

    .line 167
    .local v2, separator:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-eqz v2, :cond_2

    .line 168
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v2           #separator:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    :cond_2
    if-eqz v4, :cond_3

    .line 172
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    new-instance v6, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {p0, v4, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getSuggestionGrouping(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v7

    invoke-direct {v6, p1, v0, v7}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionList;ILcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    move-object v1, v4

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_3
    if-nez v0, :cond_6

    move v3, v9

    .line 179
    .local v3, showSpinner:Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    new-instance v6, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    sub-int v7, p3, v0

    invoke-direct {v6, v7, v3}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;-><init>(IZ)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v3           #showSpinner:Z
    .end local v4           #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_4
    iget-boolean v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSeparatorFirst:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 187
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    :cond_5
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    .line 193
    return-void

    .restart local v4       #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_6
    move v3, v8

    .line 178
    goto :goto_1
.end method

.method private showSuggestionsInternal(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V
    .locals 1
    .parameter "newList"
    .parameter "numSuggestions"
    .parameter "numSlots"
    .parameter "disabled"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSuggestions:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSlots:I

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    if-ne v0, p4, :cond_0

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSuggestions:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSlots:I

    if-eq p3, v0, :cond_2

    .line 139
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->populateListEntries(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V

    .line 141
    :cond_2
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentSuggestionList:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 142
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSuggestions:I

    .line 143
    iput p3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mCurrentNumSlots:I

    .line 144
    iput-boolean p4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    .line 145
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 285
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 290
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 295
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    .line 296
    .local v0, entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v2, v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, viewType:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown viewType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 3
    .parameter "position"

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    .line 111
    const-string v0, "QSB.SuggestionsListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning dummy suggestion view for stale position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->DUMMY:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 114
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mListEntries:Ljava/util/List;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-object v0, p0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 264
    int-to-long v6, p1

    invoke-virtual {p0, v6, v7}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v1

    .line 265
    .local v1, entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v6, v1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 266
    .local v4, v:Landroid/view/View;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    .line 268
    .local v2, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, userQuery:Ljava/lang/String;
    move-object v0, v4

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;

    move-object v5, v0

    .line 270
    .local v5, view:Lcom/google/android/googlequicksearchbox/ui/SuggestionView;
    invoke-interface {v5, p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->bindAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;I)V

    .line 271
    invoke-interface {v5, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->bindAsSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 272
    iget-boolean v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    invoke-interface {v5, v6}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->setFadedOut(Z)V

    .line 273
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v6, :cond_0

    .line 274
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    :cond_0
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v6, :cond_1

    .line 277
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 280
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    .end local v3           #userQuery:Ljava/lang/String;
    .end local v5           #view:Lcom/google/android/googlequicksearchbox/ui/SuggestionView;
    :cond_1
    return-object v4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mViewTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mNumListEntries:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 315
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mAllDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSuggestionClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;->onSuggestionClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V

    .line 230
    :cond_0
    return-void
.end method

.method public onSuggestionQueryRefineClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;->onSuggestionQueryRefineClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V

    .line 242
    :cond_0
    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;->onSuggestionRemoveFromHistoryClicked(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)V

    .line 236
    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t reset key listener"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 259
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 260
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSeparatorFirst(Z)V
    .locals 0
    .parameter "separatorFirst"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSeparatorFirst:Z

    .line 90
    return-void
.end method

.method public setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->mSuggestionClickListener:Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;

    .line 100
    return-void
.end method

.method public showSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V
    .locals 1
    .parameter "newList"
    .parameter "numSuggestions"
    .parameter "numSlots"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->showSuggestionsInternal(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V

    .line 119
    return-void
.end method

.method public showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V
    .locals 1
    .parameter "newList"
    .parameter "numSuggestions"
    .parameter "numSlots"

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;->showSuggestionsInternal(Lcom/google/android/googlequicksearchbox/SuggestionList;IIZ)V

    .line 124
    return-void
.end method
