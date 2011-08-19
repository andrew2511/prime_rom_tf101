.class Lcom/android/contacts/SplitAggregateView$RawContactInfo;
.super Ljava/lang/Object;
.source "SplitAggregateView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SplitAggregateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContactInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/SplitAggregateView$RawContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field accountType:Ljava/lang/String;

.field email:Ljava/lang/String;

.field name:Ljava/lang/String;

.field nickname:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field final rawContactId:J


# virtual methods
.method public compareTo(Lcom/android/contacts/SplitAggregateView$RawContactInfo;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    move-object v1, v2

    .line 146
    .local v1, thisAccount:Ljava/lang/String;
    :goto_0
    iget-object v2, p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    move-object v0, v2

    .line 147
    .local v0, thatAccount:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 145
    .end local v0           #thatAccount:Ljava/lang/String;
    .end local v1           #thisAccount:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    move-object v1, v2

    goto :goto_0

    .line 146
    .restart local v1       #thisAccount:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    move-object v0, v2

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    check-cast p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->compareTo(Lcom/android/contacts/SplitAggregateView$RawContactInfo;)I

    move-result v0

    return v0
.end method

.method public getAdditionalData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->nickname:Ljava/lang/String;

    .line 141
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->email:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->phone:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
