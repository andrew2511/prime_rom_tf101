.class Lcom/google/android/talk/AnimatedAdapter2$ViewCache;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    }
.end annotation


# instance fields
.field private mTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mViewMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/AnimatedAdapter2;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AnimatedAdapter2;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->this$0:Lcom/google/android/talk/AnimatedAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mTemp:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public containsView(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getView(J)Landroid/view/View;
    .locals 3
    .parameter "rowId"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;

    .line 204
    .local v0, cacheItem:Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mView:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(JILandroid/view/View;)V
    .locals 8
    .parameter "itemId"
    .parameter "translatedPosition"
    .parameter "v"

    .prologue
    .line 164
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;

    move-object v1, p0

    move-object v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;-><init>(Lcom/google/android/talk/AnimatedAdapter2$ViewCache;Landroid/view/View;IJ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public setWindow(I)V
    .locals 9
    .parameter "translatedPosition"

    .prologue
    .line 177
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/16 v7, 0x32

    if-ge v6, v7, :cond_1

    .line 200
    :cond_0
    return-void

    .line 180
    :cond_1
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mTemp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 182
    .local v2, id:J
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;

    .line 183
    .local v4, item:Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    const/4 v5, 0x0

    .line 184
    .local v5, remove:Z
    iget v6, v4, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mPosition:I

    const/16 v7, 0x14

    sub-int v7, p1, v7

    if-ge v6, v7, :cond_4

    .line 185
    const/4 v5, 0x1

    .line 191
    :cond_3
    :goto_1
    if-eqz v5, :cond_2

    .line 192
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mTemp:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_4
    iget v6, v4, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mPosition:I

    add-int/lit8 v7, p1, 0x14

    if-le v6, v7, :cond_5

    .line 187
    const/4 v5, 0x1

    goto :goto_1

    .line 188
    :cond_5
    iget-wide v6, v4, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mId:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 189
    const/4 v5, 0x1

    goto :goto_1

    .line 195
    .end local v2           #id:J
    .end local v4           #item:Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    .end local v5           #remove:Z
    :cond_6
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mTemp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v0, v6, v7

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_0

    .line 196
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mTemp:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;

    .line 197
    .restart local v4       #item:Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    iget-wide v7, v4, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
