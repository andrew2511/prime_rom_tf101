.class public Lcom/google/android/googlequicksearchbox/SuggestionListImpl;
.super Ljava/lang/Object;
.source "SuggestionListImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionList;


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mExtraColumns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLatency:I

.field protected mRequestFailed:Z

.field private final mSourceName:Ljava/lang/String;

.field protected final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceName"
    .parameter "userQuery"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mLatency:I

    .line 73
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSourceName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mUserQuery:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSuggestions:Ljava/util/List;

    .line 76
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "sourceName"
    .parameter "userQuery"
    .parameter "capacity"

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "sourceName"
    .parameter "userQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, suggestions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mLatency:I

    .line 67
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSourceName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mUserQuery:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSuggestions:Ljava/util/List;

    .line 70
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 1
    .parameter "sourceName"
    .parameter "userQuery"
    .parameter "suggestions"

    .prologue
    .line 85
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 86
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 1
    .parameter "pos"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/googlequicksearchbox/Suggestion;

    return-object p0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtraColumns()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 108
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mExtraColumns:Ljava/util/HashSet;

    if-nez v6, :cond_2

    .line 109
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mExtraColumns:Ljava/util/HashSet;

    .line 110
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 111
    .local v1, e:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v3

    .line 112
    .local v3, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    if-nez v3, :cond_1

    move-object v2, v7

    .line 114
    .local v2, extraColumns:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 115
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, column:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mExtraColumns:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    .end local v0           #column:Ljava/lang/String;
    .end local v2           #extraColumns:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v6

    move-object v2, v6

    goto :goto_0

    .line 121
    .end local v1           #e:Lcom/google/android/googlequicksearchbox/Suggestion;
    .end local v3           #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :cond_2
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mExtraColumns:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v7

    :goto_2
    return-object v6

    :cond_3
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mExtraColumns:Ljava/util/HashSet;

    goto :goto_2
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mLatency:I

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mUserQuery:Ljava/lang/String;

    return-object v0
.end method

.method public isRequestFailed()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mRequestFailed:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 102
    return-void
.end method

.method public setLatency(I)V
    .locals 0
    .parameter "latency"

    .prologue
    .line 134
    iput p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mLatency:I

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;->mSuggestions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
