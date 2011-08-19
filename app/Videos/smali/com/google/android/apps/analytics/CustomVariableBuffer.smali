.class Lcom/google/android/apps/analytics/CustomVariableBuffer;
.super Ljava/lang/Object;


# instance fields
.field private customVariables:[Lcom/google/android/apps/analytics/CustomVariable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/analytics/CustomVariable;

    iput-object v0, p0, Lcom/google/android/apps/analytics/CustomVariableBuffer;->customVariables:[Lcom/google/android/apps/analytics/CustomVariable;

    return-void
.end method

.method private throwOnInvalidIndex(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 5 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCustomVariableArray()[Lcom/google/android/apps/analytics/CustomVariable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/CustomVariableBuffer;->customVariables:[Lcom/google/android/apps/analytics/CustomVariable;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/CustomVariable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/apps/analytics/CustomVariable;

    return-object p0
.end method

.method public getCustomVariableAt(I)Lcom/google/android/apps/analytics/CustomVariable;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->throwOnInvalidIndex(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/CustomVariableBuffer;->customVariables:[Lcom/google/android/apps/analytics/CustomVariable;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasCustomVariables()Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/analytics/CustomVariableBuffer;->customVariables:[Lcom/google/android/apps/analytics/CustomVariable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/analytics/CustomVariableBuffer;->customVariables:[Lcom/google/android/apps/analytics/CustomVariable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public isIndexAvailable(I)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->throwOnInvalidIndex(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/CustomVariableBuffer;->customVariables:[Lcom/google/android/apps/analytics/CustomVariable;

    sub-int v1, p1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCustomVariable(Lcom/google/android/apps/analytics/CustomVariable;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/CustomVariable;->getIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->throwOnInvalidIndex(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/CustomVariableBuffer;->customVariables:[Lcom/google/android/apps/analytics/CustomVariable;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/CustomVariable;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-object p1, v0, v1

    return-void
.end method
