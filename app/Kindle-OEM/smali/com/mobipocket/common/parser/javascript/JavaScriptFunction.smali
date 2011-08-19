.class public abstract Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;
.super Ljava/lang/Object;
.source "JavaScriptFunction.java"


# static fields
.field static final COND_INDEX_SEARCH:Ljava/lang/String; = "cond_index_search"

.field static final DIAL:Ljava/lang/String; = "dial"

.field static final FILTERED_INDEX_SEARCH:Ljava/lang/String; = "filtered_index_search"

.field static final HISTORY_BACK:Ljava/lang/String; = "history.back"

.field static final INDEX_SEARCH:Ljava/lang/String; = "index_search"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getFunctionName()Ljava/lang/String;
.end method

.method public isCondIndexSearchFunction()Z
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cond_index_search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDialFunction()Z
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFilteredIndexSearchFunction()Z
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filtered_index_search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHistoryBackFunction()Z
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "history.back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIndexSearchFunction()Z
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "index_search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
