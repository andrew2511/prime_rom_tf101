.class public final Lcom/google/android/youtube/core/model/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Category$Builder;
    }
.end annotation


# instance fields
.field public final deprecated:Z

.field public final label:Ljava/lang/String;

.field public final regions:Ljava/lang/String;

.field public final term:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "term"
    .parameter "label"
    .parameter "regions"
    .parameter "deprecated"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 36
    instance-of v2, p1, Lcom/google/android/youtube/core/model/Category;

    if-eqz v2, :cond_5

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    move-object v1, v0

    .line 38
    .local v1, c:Lcom/google/android/youtube/core/model/Category;
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_0
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_1
    iget-boolean v2, v1, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    iget-boolean v3, p0, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    .line 43
    .end local v1           #c:Lcom/google/android/youtube/core/model/Category;
    :goto_2
    return v2

    .line 38
    .restart local v1       #c:Lcom/google/android/youtube/core/model/Category;
    :cond_1
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Category;->term:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .end local v1           #c:Lcom/google/android/youtube/core/model/Category;
    :cond_5
    move v2, v4

    .line 43
    goto :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    return-object v0
.end method
