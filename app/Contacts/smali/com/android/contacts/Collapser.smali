.class public final Lcom/android/contacts/Collapser;
.super Ljava/lang/Object;
.source "Collapser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/Collapser$Collapsible;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseList(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/contacts/Collapser$Collapsible",
            "<TT;>;>(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 55
    .local v5, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 56
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/Collapser$Collapsible;

    .line 57
    .local v1, iItem:Lcom/android/contacts/Collapser$Collapsible;,"TT;"
    if-eqz v1, :cond_1

    .line 58
    add-int/lit8 v3, v0, 0x1

    .local v3, j:I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 59
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/Collapser$Collapsible;

    .line 60
    .local v4, jItem:Lcom/android/contacts/Collapser$Collapsible;,"TT;"
    if-eqz v4, :cond_0

    .line 61
    invoke-interface {v1, v4}, Lcom/android/contacts/Collapser$Collapsible;->shouldCollapseWith(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v1, v4}, Lcom/android/contacts/Collapser$Collapsible;->collapseWith(Ljava/lang/Object;)Z

    .line 63
    const/4 v6, 0x0

    invoke-interface {p0, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    .end local v3           #j:I
    .end local v4           #jItem:Lcom/android/contacts/Collapser$Collapsible;,"TT;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v1           #iItem:Lcom/android/contacts/Collapser$Collapsible;,"TT;"
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 78
    :cond_4
    return-void
.end method
