.class public abstract Lcom/google/android/finsky/api/model/DfeModel;
.super Ljava/lang/Object;
.source "DfeModel.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field private mErrorCode:Lcom/android/volley/Response$ErrorCode;

.field private mErrorListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/volley/Response$ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/String;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    .line 22
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public addErrorListener(Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method protected clearErrors()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorCode:Lcom/android/volley/Response$ErrorCode;

    .line 100
    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorMessage:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public getErrorCode()Lcom/android/volley/Response$ErrorCode;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorCode:Lcom/android/volley/Response$ErrorCode;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public inErrorState()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorCode:Lcom/android/volley/Response$ErrorCode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/finsky/api/model/OnDataChangedListener;

    .line 110
    .local v1, listeners:[Lcom/google/android/finsky/api/model/OnDataChangedListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 111
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/google/android/finsky/api/model/OnDataChangedListener;->onDataChanged()V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method protected notifyErrorOccured(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 4
    .parameter "error"
    .parameter "message"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/volley/Response$ErrorListener;

    .line 117
    .local v1, listeners:[Lcom/android/volley/Response$ErrorListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 118
    aget-object v2, v1, v0

    invoke-interface {v2, p1, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorCode:Lcom/android/volley/Response$ErrorCode;

    .line 75
    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorMessage:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/api/model/DfeModel;->notifyErrorOccured(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method protected unregisterAll()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 106
    return-void
.end method
