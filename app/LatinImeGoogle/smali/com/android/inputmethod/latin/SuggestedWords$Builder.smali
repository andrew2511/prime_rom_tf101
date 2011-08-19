.class public Lcom/android/inputmethod/latin/SuggestedWords$Builder;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHasMinimalSuggestion:Z

.field private mSuggestedWordInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedWordValid:Z

.field private mWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    .line 71
    return-void
.end method

.method private addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 1
    .parameter "word"
    .parameter "suggestedWordInfo"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-object p0
.end method


# virtual methods
.method public addTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 7
    .parameter "typedWord"
    .parameter "previousSuggestions"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 125
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 126
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    .local v0, alreadySeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    .line 131
    .local v3, previousSize:I
    const/4 v1, 0x1

    .local v1, pos:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 132
    invoke-virtual {p2, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, prevWord:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v6, v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v2           #prevWord:Ljava/lang/String;
    :cond_1
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    .line 140
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    .line 141
    return-object p0
.end method

.method public addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 2
    .parameter "word"

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 2
    .parameter "word"
    .parameter "debugString"
    .parameter "isPreviousSuggestedWord"

    .prologue
    .line 95
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    .line 96
    .local v0, info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)",
            "Lcom/android/inputmethod/latin/SuggestedWords$Builder;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, suggestedWordInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 76
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    if-eqz p2, :cond_0

    .line 79
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    check-cast v2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 81
    .restart local v2       #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_0
    if-nez v2, :cond_1

    .line 82
    new-instance v2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .end local v2           #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    invoke-direct {v2}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>()V

    .line 84
    .restart local v2       #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v2           #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_2
    return-object p0
.end method

.method public build()Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 6

    .prologue
    .line 145
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZLjava/util/List;Lcom/android/inputmethod/latin/SuggestedWords$1;)V

    return-object v0
.end method

.method public setApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 5
    .parameter "infos"

    .prologue
    .line 106
    move-object v0, p1

    .local v0, arr$:[Landroid/view/inputmethod/CompletionInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 107
    .local v2, info:Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v2           #info:Landroid/view/inputmethod/CompletionInfo;
    :cond_0
    return-object p0
.end method

.method public setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 0
    .parameter "hasMinamlSuggestion"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    .line 118
    return-object p0
.end method

.method public setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 0
    .parameter "typedWordValid"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    .line 113
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
