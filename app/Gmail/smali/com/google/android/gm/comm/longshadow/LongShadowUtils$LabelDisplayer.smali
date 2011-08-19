.class public Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;
.super Ljava/lang/Object;
.source "LongShadowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/comm/longshadow/LongShadowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LabelDisplayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;
    }
.end annotation


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mLabelValuesSortedSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "account"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;->mAccount:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public loadConversationLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v10

    .line 96
    .local v10, labelValuesSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;>;"
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gm/provider/Label;

    .line 97
    .local v9, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v9}, Lcom/google/android/gm/provider/Label;->getId()J

    move-result-wide v1

    .line 98
    .local v1, labelId:J
    invoke-virtual {v9}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, canonicalName:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/gm/provider/Label;->getColor()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, colorId:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "^t"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "^io_im"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :cond_1
    const-string v0, "^iim"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "^i"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :cond_2
    const/4 v4, 0x0

    .line 118
    .local v4, stringToDisplay:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7}, Lcom/google/android/gm/provider/Gmail;->isDisplayableSystemLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    :cond_3
    invoke-virtual {v9}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v4

    .line 122
    :cond_4
    if-eqz v4, :cond_0

    .line 123
    new-instance v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Label;->getBackgroundColor()I

    move-result v5

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Label;->getTextColor()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer$LabelValues;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v10, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v1           #labelId:J
    .end local v3           #colorId:Ljava/lang/String;
    .end local v4           #stringToDisplay:Ljava/lang/String;
    .end local v7           #canonicalName:Ljava/lang/String;
    .end local v9           #label:Lcom/google/android/gm/provider/Label;
    :cond_5
    iput-object v10, p0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils$LabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    .line 130
    return-void
.end method
