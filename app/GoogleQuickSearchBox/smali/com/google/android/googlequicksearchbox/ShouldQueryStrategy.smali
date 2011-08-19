.class Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;
.super Ljava/lang/Object;
.source "ShouldQueryStrategy.java"


# instance fields
.field private final mEmptySources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastQuery:Ljava/lang/String;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;)V
    .locals 1
    .parameter "sources"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    .line 51
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 52
    return-void
.end method

.method private updateQuery(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    .line 107
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/Integer;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 104
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/Integer;>;>;"
    :cond_3
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public onZeroResults(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "sourceName"
    .parameter "query"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    .line 83
    .local v0, source:Lcom/google/android/googlequicksearchbox/Source;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->queryAfterZeroResults()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    return-void
.end method

.method public shouldQuerySource(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)Z
    .locals 3
    .parameter "source"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->updateQuery(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 73
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getQueryThreshold()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 65
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->queryAfterZeroResults()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShouldQueryStrategy;->mEmptySources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 73
    goto :goto_0
.end method
