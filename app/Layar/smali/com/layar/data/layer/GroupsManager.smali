.class public Lcom/layar/data/layer/GroupsManager;
.super Ljava/lang/Object;
.source "GroupsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/layar/data/layer/GroupsManager;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/GroupsManager;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupsList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/LayersGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v7, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/LayersGroup;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->GROUPS_CONTENT_URI:Landroid/net/Uri;

    .line 29
    invoke-static {}, Lcom/layar/provider/GroupsAlias;->projection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    .line 28
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 31
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 34
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 35
    return-object v7

    .line 32
    :cond_1
    invoke-static {v6}, Lcom/layar/provider/GroupsAlias;->createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/LayersGroup;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static saveGroups(Landroid/content/Context;Ljava/util/ArrayList;Lcom/layar/data/layer/LayerDB20;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "layerDb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/LayersGroup;",
            ">;",
            "Lcom/layar/data/layer/LayerDB20;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/LayersGroup;>;"
    const/4 v8, 0x0

    .line 43
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 48
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/layar/provider/LayarProvider;->GROUPS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v6

    const-string v7, "group"

    invoke-virtual {v6, v7}, Lcom/layar/data/layer/LayerManager;->resetCache(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 54
    .local v0, count:I
    const-string v6, "group"

    invoke-static {v6, v8}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v4

    .line 55
    .local v4, selector:Lcom/layar/data/layer/LayersSelector;
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 56
    .local v5, values:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 63
    sget-object v6, Lcom/layar/provider/LayarProvider;->GROUPS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/data/layer/LayersGroup;

    .line 58
    .local v1, group:Lcom/layar/data/layer/LayersGroup;
    invoke-static {v1}, Lcom/layar/provider/GroupsAlias;->generateValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v6

    aput-object v6, v5, v2

    .line 60
    iget v6, v1, Lcom/layar/data/layer/LayersGroup;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    .line 61
    iget-object v6, v1, Lcom/layar/data/layer/LayersGroup;->layers:Ljava/util/ArrayList;

    invoke-virtual {p2, v4, v6}, Lcom/layar/data/layer/LayerDB20;->addLayers(Lcom/layar/data/layer/LayersSelector;Ljava/util/List;)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
