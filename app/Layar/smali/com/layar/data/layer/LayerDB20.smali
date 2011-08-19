.class public Lcom/layar/data/layer/LayerDB20;
.super Ljava/lang/Object;
.source "LayerDB20.java"

# interfaces
.implements Lcom/layar/data/layer/LayerSections;
.implements Lcom/layar/data/layer/LayersType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/layer/LayerDB20$DatabaseHelper;,
        Lcom/layar/data/layer/LayerDB20$Favorites;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "layar.db"

.field private static final DATABASE_VERSION:I = 0x6

.field private static final FAVORITES_TABLE_NAME:Ljava/lang/String; = "favorites"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FEATURED_TABLE_NAME:Ljava/lang/String; = "featured"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LAYERS_TABLE_NAME:Ljava/lang/String; = "layers"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static db:Lcom/layar/data/layer/LayerDB20;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mOpenHelper:Lcom/layar/data/layer/LayerDB20$DatabaseHelper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/layar/data/layer/LayerDB20;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayerDB20;->TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/data/layer/LayerDB20;->db:Lcom/layar/data/layer/LayerDB20;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/layar/data/layer/LayerDB20$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/layar/data/layer/LayerDB20$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/data/layer/LayerDB20;->mOpenHelper:Lcom/layar/data/layer/LayerDB20$DatabaseHelper;

    .line 90
    iget-object v0, p0, Lcom/layar/data/layer/LayerDB20;->mOpenHelper:Lcom/layar/data/layer/LayerDB20$DatabaseHelper;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerDB20$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerDB20;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    iget-object v0, p0, Lcom/layar/data/layer/LayerDB20;->mOpenHelper:Lcom/layar/data/layer/LayerDB20$DatabaseHelper;

    iget-boolean v0, v0, Lcom/layar/data/layer/LayerDB20$DatabaseHelper;->needMigrate:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerDB20;->migrateDatabase()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerDB20;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/layer/LayerDB20;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/layar/data/layer/LayerDB20;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private generateLayer(Lcom/layar/data/layer/LayersSelector;Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;
    .locals 2
    .parameter "selector"
    .parameter "c"

    .prologue
    .line 594
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 598
    :goto_0
    return-object v0

    .line 596
    :cond_0
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "recent"

    if-ne v0, v1, :cond_1

    .line 597
    invoke-static {p2}, Lcom/layar/provider/RecentLayerAlias;->createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    goto :goto_0

    .line 598
    :cond_1
    invoke-static {p2}, Lcom/layar/provider/LayerAlias;->createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    goto :goto_0
.end method

.method private generateValues(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)Landroid/content/ContentValues;
    .locals 3
    .parameter "selector"
    .parameter "layer"

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 554
    :goto_0
    return-object v0

    .line 538
    :cond_0
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "featured"

    if-ne v0, v1, :cond_1

    .line 539
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/FeaturedLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "local"

    if-ne v0, v1, :cond_2

    .line 541
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/LocalLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 542
    :cond_2
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "popular"

    if-ne v0, v1, :cond_3

    .line 543
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/PopularLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_3
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "new"

    if-ne v0, v1, :cond_4

    .line 545
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/NewLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_4
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "category"

    if-ne v0, v1, :cond_5

    .line 547
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/layar/provider/CategoryLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_5
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "group"

    if-ne v0, v1, :cond_6

    .line 549
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/GroupLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_6
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "recent"

    if-ne v0, v1, :cond_7

    .line 551
    invoke-static {p2}, Lcom/layar/provider/RecentLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_7
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "my"

    if-ne v0, v1, :cond_8

    .line 553
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    iget v1, p1, Lcom/layar/data/layer/LayersSelector;->order:I

    invoke-static {p2, v0, v1}, Lcom/layar/provider/FavoriteLayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, v2

    .line 554
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/layar/data/layer/LayerDB20;
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    sget-object v0, Lcom/layar/data/layer/LayerDB20;->db:Lcom/layar/data/layer/LayerDB20;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/layar/data/layer/LayerDB20;

    invoke-direct {v0, p0}, Lcom/layar/data/layer/LayerDB20;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/layar/data/layer/LayerDB20;->db:Lcom/layar/data/layer/LayerDB20;

    .line 100
    :cond_0
    sget-object v0, Lcom/layar/data/layer/LayerDB20;->db:Lcom/layar/data/layer/LayerDB20;

    return-object v0
.end method

.method private getMaxOrder(Lcom/layar/data/layer/LayersSelector;)I
    .locals 9
    .parameter "selector"

    .prologue
    const/4 v3, 0x0

    .line 606
    const/4 v7, 0x0

    .line 607
    .local v7, maxOrderNo:I
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v2, "my"

    if-ne v1, v2, :cond_1

    .line 608
    iget-object v1, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 610
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/provider/LayarProvider;->getMaxUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 611
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 612
    sget-object v5, Lcom/layar/provider/FavoriteLayerAlias;->ORDER:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v5, v5, Lcom/layar/provider/FavoriteLayerAlias;->fullColumn:Ljava/lang/String;

    .line 613
    sget-object v8, Lcom/layar/provider/FavoriteLayerAlias;->ORDER:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v8, v8, Lcom/layar/provider/FavoriteLayerAlias;->column:Ljava/lang/String;

    .line 612
    invoke-static {v5, v8}, Lcom/layar/provider/LayarProvider;->getMaxProjection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 609
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 616
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    sget-object v1, Lcom/layar/provider/FavoriteLayerAlias;->ORDER:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/FavoriteLayerAlias;->column:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 619
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 622
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    return v7
.end method

.method private getOrder(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)I
    .locals 8
    .parameter "selector"
    .parameter "layerName"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 204
    if-nez p2, :cond_0

    .line 205
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerDB20;->getMaxOrder(Lcom/layar/data/layer/LayersSelector;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 218
    :goto_0
    return v1

    .line 206
    :cond_0
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v2, "my"

    if-ne v1, v2, :cond_2

    .line 207
    iget-object v1, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 208
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/layar/provider/FavoriteLayerAlias;->ORDER:Lcom/layar/provider/FavoriteLayerAlias;

    invoke-virtual {v3}, Lcom/layar/provider/FavoriteLayerAlias;->alias()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/layar/data/layer/LayerDB20;->getSelectionByName(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 208
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 211
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 212
    .local v7, orderNo:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    sget-object v1, Lcom/layar/provider/FavoriteLayerAlias;->ORDER:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/FavoriteLayerAlias;->column:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/layar/provider/ResolverHelper;->getColumnInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 215
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v7

    .line 216
    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #orderNo:I
    :cond_2
    move v1, v5

    .line 218
    goto :goto_0
.end method

.method private getOrder(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;
    .locals 3
    .parameter "selector"

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 571
    :goto_0
    return-object v0

    .line 565
    :cond_0
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    const-string v1, "favorites"

    if-ne v0, v1, :cond_1

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/FavoriteLayerAlias;->ORDER:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/FavoriteLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_1
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "recent"

    if-ne v0, v1, :cond_2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->RECENT_DATE:Lcom/layar/provider/RecentLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 569
    sget-object v1, Lcom/layar/provider/RecentLayerAlias;->_ID:Lcom/layar/provider/RecentLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 571
    goto :goto_0
.end method

.method private getProjection(Lcom/layar/data/layer/LayersSelector;)[Ljava/lang/String;
    .locals 2
    .parameter "selector"

    .prologue
    .line 580
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 584
    :goto_0
    return-object v0

    .line 582
    :cond_0
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "recent"

    if-ne v0, v1, :cond_1

    .line 583
    invoke-static {}, Lcom/layar/provider/RecentLayerAlias;->aliases()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_1
    invoke-static {}, Lcom/layar/provider/LayerAlias;->aliases()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectionByName(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "selector"
    .parameter "layerName"

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 526
    :goto_0
    return-object v0

    .line 510
    :cond_0
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "featured"

    if-ne v0, v1, :cond_1

    .line 511
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/FeaturedLayerAlias;->selection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "local"

    if-ne v0, v1, :cond_2

    .line 513
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/LocalLayerAlias;->selection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "popular"

    if-ne v0, v1, :cond_3

    .line 515
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/PopularLayerAlias;->selection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_3
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "new"

    if-ne v0, v1, :cond_4

    .line 517
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/NewLayerAlias;->selection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 518
    :cond_4
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "category"

    if-ne v0, v1, :cond_5

    .line 519
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/layar/provider/CategoryLayerAlias;->selection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 520
    :cond_5
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "group"

    if-ne v0, v1, :cond_6

    .line 521
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/GroupLayerAlias;->selection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 522
    :cond_6
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "recent"

    if-ne v0, v1, :cond_7

    .line 523
    invoke-static {p2}, Lcom/layar/provider/RecentLayerAlias;->selection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_7
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "my"

    if-ne v0, v1, :cond_8

    .line 525
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/layar/provider/FavoriteLayerAlias;->selection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, v2

    .line 526
    goto :goto_0
.end method

.method private getSelectionBySubsection(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;
    .locals 3
    .parameter "selector"

    .prologue
    const/4 v2, 0x0

    .line 479
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 498
    :goto_0
    return-object v0

    .line 481
    :cond_0
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "featured"

    if-ne v0, v1, :cond_1

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/FeaturedLayerAlias;->SUBSECTION:Lcom/layar/provider/FeaturedLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/FeaturedLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "local"

    if-ne v0, v1, :cond_2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/LocalLayerAlias;->SUBSECTION:Lcom/layar/provider/LocalLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/LocalLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_2
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "popular"

    if-ne v0, v1, :cond_3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/PopularLayerAlias;->SUBSECTION:Lcom/layar/provider/PopularLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/PopularLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_3
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "new"

    if-ne v0, v1, :cond_4

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/NewLayerAlias;->SUBSECTION:Lcom/layar/provider/NewLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/NewLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 489
    :cond_4
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "category"

    if-ne v0, v1, :cond_5

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/CategoryLayerAlias;->SUBSECTION:Lcom/layar/provider/CategoryLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/CategoryLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    sget-object v1, Lcom/layar/provider/CategoryLayerAlias;->CATEGORY:Lcom/layar/provider/CategoryLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/CategoryLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 492
    :cond_5
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "group"

    if-ne v0, v1, :cond_6

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/GroupLayerAlias;->GROUP:Lcom/layar/provider/GroupLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/GroupLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 494
    :cond_6
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "recent"

    if-ne v0, v1, :cond_7

    .line 495
    const-string v0, ""

    goto/16 :goto_0

    .line 496
    :cond_7
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v1, "my"

    if-ne v0, v1, :cond_8

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/layar/provider/FavoriteLayerAlias;->SUBSECTION:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v1, v1, Lcom/layar/provider/FavoriteLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    .line 498
    goto/16 :goto_0
.end method

.method private getUriByType(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 452
    if-nez p1, :cond_0

    move-object v0, v1

    .line 470
    :goto_0
    return-object v0

    .line 454
    :cond_0
    const-string v0, "featured"

    if-ne p1, v0, :cond_1

    .line 455
    sget-object v0, Lcom/layar/provider/LayarProvider;->FEATURED_LAYER_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 456
    :cond_1
    const-string v0, "local"

    if-ne p1, v0, :cond_2

    .line 457
    sget-object v0, Lcom/layar/provider/LayarProvider;->LOCAL_LAYER_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 458
    :cond_2
    const-string v0, "popular"

    if-ne p1, v0, :cond_3

    .line 459
    sget-object v0, Lcom/layar/provider/LayarProvider;->POPULAR_LAYER_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 460
    :cond_3
    const-string v0, "new"

    if-ne p1, v0, :cond_4

    .line 461
    sget-object v0, Lcom/layar/provider/LayarProvider;->NEW_LAYER_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 462
    :cond_4
    const-string v0, "category"

    if-ne p1, v0, :cond_5

    .line 463
    sget-object v0, Lcom/layar/provider/LayarProvider;->CATEGORY_LAYER_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 464
    :cond_5
    const-string v0, "group"

    if-ne p1, v0, :cond_6

    .line 465
    sget-object v0, Lcom/layar/provider/LayarProvider;->GROUP_LAYER_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 466
    :cond_6
    const-string v0, "my"

    if-ne p1, v0, :cond_7

    .line 467
    sget-object v0, Lcom/layar/provider/LayarProvider;->FAVORITE_LAYER_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 468
    :cond_7
    const-string v0, "recent"

    if-ne p1, v0, :cond_8

    .line 469
    sget-object v0, Lcom/layar/provider/LayarProvider;->RECENT_LAYER_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_8
    move-object v0, v1

    .line 470
    goto :goto_0
.end method

.method private setOrder(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;II)V
    .locals 11
    .parameter "selector"
    .parameter "layerName"
    .parameter "from"
    .parameter "before"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 227
    if-nez p2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v2, "my"

    if-ne v1, v2, :cond_0

    .line 233
    iget-object v1, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    .local v0, resolver:Landroid/content/ContentResolver;
    if-le p4, p3, :cond_2

    move v6, v9

    .line 236
    .local v6, movingDown:Z
    :goto_1
    sget-object v1, Lcom/layar/provider/FavoriteLayerAlias;->ORDER:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v7, v1, Lcom/layar/provider/FavoriteLayerAlias;->column:Ljava/lang/String;

    .line 238
    .local v7, orderColumn:Ljava/lang/String;
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/provider/LayarProvider;->addUpdateToUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 239
    new-array v2, v9, [Ljava/lang/String;

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v6, :cond_3

    const-string v5, "-1"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 242
    if-eqz v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object v5, v4

    .line 237
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 246
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v8, values:Landroid/content/ContentValues;
    if-eqz v6, :cond_5

    sub-int v1, p4, v9

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/layar/data/layer/LayerDB20;->getSelectionByName(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6           #movingDown:Z
    .end local v7           #orderColumn:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    move v6, v10

    .line 235
    goto/16 :goto_1

    .line 240
    .restart local v6       #movingDown:Z
    .restart local v7       #orderColumn:Ljava/lang/String;
    :cond_3
    const-string v5, "+1"

    goto :goto_2

    .line 243
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ">="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_5
    move v1, p4

    .line 247
    goto :goto_4
.end method


# virtual methods
.method public addLayer(Lcom/layar/data/layer/Layer20;)V
    .locals 5
    .parameter "layer"

    .prologue
    .line 382
    iget-object v2, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/layar/provider/LayerAlias;->generateValues(Lcom/layar/data/layer/Layer20;)Landroid/content/ContentValues;

    move-result-object v1

    .line 384
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/layar/provider/LayarProvider;->LAYER_CONTENT_URI:Landroid/net/Uri;

    .line 385
    invoke-static {p1}, Lcom/layar/provider/LayerAlias;->selection(Lcom/layar/data/layer/Layer20;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 384
    invoke-static {v0, v2, v1, v3, v4}, Lcom/layar/provider/ResolverHelper;->insertOrUpdate(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public addLayer(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)V
    .locals 11
    .parameter "selector"
    .parameter "layer"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    invoke-virtual {p0, p2}, Lcom/layar/data/layer/LayerDB20;->addLayer(Lcom/layar/data/layer/Layer20;)V

    .line 319
    iget-object v1, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 322
    .local v6, contentUri:Landroid/net/Uri;
    iget-boolean v1, p1, Lcom/layar/data/layer/LayersSelector;->useOrder:Z

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v2, "my"

    if-ne v1, v2, :cond_0

    .line 328
    iput v4, p1, Lcom/layar/data/layer/LayersSelector;->order:I

    .line 329
    sget-object v1, Lcom/layar/provider/FavoriteLayerAlias;->ORDER:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v7, v1, Lcom/layar/provider/FavoriteLayerAlias;->column:Ljava/lang/String;

    .line 331
    .local v7, orderColumn:Ljava/lang/String;
    invoke-static {v6}, Lcom/layar/provider/LayarProvider;->addUpdateToUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 332
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "+1"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 330
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 336
    .end local v7           #orderColumn:Ljava/lang/String;
    :cond_0
    iget-object v1, p2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/layar/data/layer/LayerDB20;->getSelectionByName(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, selection:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/layar/data/layer/LayerDB20;->generateValues(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)Landroid/content/ContentValues;

    move-result-object v9

    .line 338
    .local v9, values:Landroid/content/ContentValues;
    invoke-static {v0, v6, v9, v8, v3}, Lcom/layar/provider/ResolverHelper;->insertOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public addLayers(Lcom/layar/data/layer/LayersSelector;Ljava/util/List;)V
    .locals 7
    .parameter "selector"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/layer/LayersSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p2, layers:Ljava/util/List;,"Ljava/util/List<Lcom/layar/data/layer/Layer20;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 351
    .local v1, count:I
    const/4 v0, 0x0

    .local v0, begin:I
    const/4 v4, 0x1

    .line 352
    .local v4, step:I
    iget-boolean v5, p1, Lcom/layar/data/layer/LayersSelector;->useOrder:Z

    if-eqz v5, :cond_0

    .line 353
    iget-object v5, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v6, "my"

    if-ne v5, v6, :cond_0

    .line 354
    const/4 v5, 0x1

    sub-int v0, v1, v5

    .line 355
    const/4 v4, -0x1

    .line 359
    :cond_0
    move v2, v0

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    if-lt v2, v1, :cond_2

    .line 363
    :cond_1
    return-void

    .line 360
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layar/data/layer/Layer20;

    .line 361
    .local v3, layer:Lcom/layar/data/layer/Layer20;
    invoke-virtual {p0, p1, v3}, Lcom/layar/data/layer/LayerDB20;->addLayer(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)V

    .line 359
    add-int/2addr v2, v4

    goto :goto_0
.end method

.method public cleanDatabase()V
    .locals 4

    .prologue
    .line 420
    iget-object v1, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 421
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->LAYER_CONTENT_URI:Landroid/net/Uri;

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/layar/provider/LayerAlias;->NAME:Lcom/layar/provider/LayerAlias;

    iget-object v3, v3, Lcom/layar/provider/LayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " NOT IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    const-string v3, "(SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/layar/provider/FeaturedLayerAlias;->NAME:Lcom/layar/provider/FeaturedLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/FeaturedLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "featured_layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 425
    const-string v3, " SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/layar/provider/FavoriteLayerAlias;->NAME:Lcom/layar/provider/FavoriteLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/FavoriteLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "favorite_layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 427
    const-string v3, " SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/layar/provider/LocalLayerAlias;->NAME:Lcom/layar/provider/LocalLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/LocalLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "local_layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 428
    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 429
    const-string v3, " SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/layar/provider/PopularLayerAlias;->NAME:Lcom/layar/provider/PopularLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/PopularLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "popular_layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 430
    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 431
    const-string v3, " SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/layar/provider/NewLayerAlias;->NAME:Lcom/layar/provider/NewLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/NewLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "new_layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 432
    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 433
    const-string v3, " SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/layar/provider/CategoryLayerAlias;->NAME:Lcom/layar/provider/CategoryLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/CategoryLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "category_layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 435
    const-string v3, " SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/layar/provider/GroupLayerAlias;->NAME:Lcom/layar/provider/GroupLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/GroupLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "group_layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 436
    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 437
    const-string v3, " SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/layar/provider/RecentLayerAlias;->NAME:Lcom/layar/provider/RecentLayerAlias;

    iget-object v3, v3, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recent_layers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 438
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    const/4 v3, 0x0

    .line 421
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method public clear(Lcom/layar/data/layer/LayersSelector;)V
    .locals 4
    .parameter "selector"

    .prologue
    .line 268
    iget-object v3, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 269
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 270
    .local v0, contentUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerDB20;->getSelectionBySubsection(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, selection:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v2, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 259
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 260
    .local v0, contentUri:Landroid/net/Uri;
    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public clearPurchased()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v2, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/layar/provider/LayerAlias;->PREMIUM_PURCHASED:Lcom/layar/provider/LayerAlias;

    iget-object v2, v2, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    sget-object v2, Lcom/layar/provider/LayerAlias;->MODIFIED:Lcom/layar/provider/LayerAlias;

    iget-object v2, v2, Lcom/layar/provider/LayerAlias;->column:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    sget-object v2, Lcom/layar/provider/LayarProvider;->LAYER_CONTENT_URI:Landroid/net/Uri;

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/layar/provider/LayerAlias;->PREMIUM_PRICE:Lcom/layar/provider/LayerAlias;

    iget-object v4, v4, Lcom/layar/provider/LayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " IS NOT NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 156
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public declared-synchronized getFavoriteLayerNames()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    new-instance v12, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v12}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 134
    .local v12, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v0, "favorites"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/layar/data/layer/LayerDB20;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 137
    const-string v4, "favorites.name"

    aput-object v4, v2, v3

    .line 138
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "seq"

    const/4 v8, 0x0

    .line 136
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 140
    .local v9, c:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-object v11

    .line 142
    :cond_1
    :try_start_1
    const-string v0, "name"

    invoke-static {v9, v0}, Lcom/layar/provider/ResolverHelper;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, layer:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 144
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #layer:Ljava/lang/String;
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLayer(Ljava/lang/String;)Lcom/layar/data/layer/Layer20;
    .locals 8
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 404
    iget-object v1, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 405
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->LAYER_CONTENT_URI:Landroid/net/Uri;

    .line 406
    invoke-static {}, Lcom/layar/provider/LayerAlias;->aliases()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/layar/provider/LayerAlias;->selection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 405
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 408
    .local v7, layer:Lcom/layar/data/layer/Layer20;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-static {v6}, Lcom/layar/provider/LayerAlias;->createObject(Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;

    move-result-object v7

    .line 411
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    return-object v7
.end method

.method public declared-synchronized getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;
    .locals 9
    .parameter "selector"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/layer/LayersSelector;",
            "Lcom/layar/data/layer/LayerManager$LayerFoundListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v4, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, contentUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerDB20;->getProjection(Lcom/layar/data/layer/LayersSelector;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, projection:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerDB20;->getSelectionBySubsection(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, selection:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerDB20;->getOrder(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, order:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    .local v6, c:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-object v8

    .line 178
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, v6}, Lcom/layar/data/layer/LayerDB20;->generateLayer(Lcom/layar/data/layer/LayersSelector;Landroid/database/Cursor;)Lcom/layar/data/layer/Layer20;

    move-result-object v7

    .line 179
    .local v7, layer:Lcom/layar/data/layer/Layer20;
    if-eqz v7, :cond_0

    .line 180
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    if-eqz p2, :cond_0

    .line 182
    invoke-interface {p2, v7, v8}, Lcom/layar/data/layer/LayerManager$LayerFoundListener;->onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 169
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v5           #order:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #layer:Lcom/layar/data/layer/Layer20;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public isExists(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Z
    .locals 5
    .parameter "selector"
    .parameter "layername"

    .prologue
    .line 280
    iget-object v3, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 281
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 282
    .local v0, contentUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerDB20;->getSelectionBySubsection(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, selection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/layar/provider/LayerAlias;->selection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 283
    invoke-static {v1, v0, v3, v4}, Lcom/layar/provider/ResolverHelper;->hasRecord(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public declared-synchronized migrateDatabase()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 104
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerDB20;->getFavoriteLayerNames()Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    .local v1, favoriteNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v4

    .line 106
    .local v4, layerManager:Lcom/layar/data/layer/LayerManager;
    const-string v8, "my"

    const-string v9, "favorites"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;Z)Lcom/layar/data/layer/LayersSelector;

    move-result-object v7

    .line 107
    .local v7, selector:Lcom/layar/data/layer/LayersSelector;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    .local v0, count:I
    sub-int v2, v0, v11

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_0

    .line 120
    iget-object v8, p0, Lcom/layar/data/layer/LayerDB20;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "DROP TABLE IF EXISTS layers"

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    iget-object v8, p0, Lcom/layar/data/layer/LayerDB20;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "DROP TABLE IF EXISTS featured"

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    iget-object v8, p0, Lcom/layar/data/layer/LayerDB20;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 109
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 110
    .local v5, name:Ljava/lang/String;
    sget-object v8, Lcom/layar/data/layer/LayerDB20;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Restoring layer to new database: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v4, v5}, Lcom/layar/data/layer/LayerManager;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v6

    .line 112
    .local v6, response:Lcom/layar/data/layer/LayerManager$LayerResponse;
    invoke-virtual {v6}, Lcom/layar/data/layer/LayerManager$LayerResponse;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    invoke-virtual {v4, v5}, Lcom/layar/data/layer/LayerManager;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v8

    iget-object v3, v8, Lcom/layar/data/layer/LayerManager$LayerResponse;->layer:Lcom/layar/data/layer/Layer20;

    .line 114
    .local v3, layer:Lcom/layar/data/layer/Layer20;
    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {p0, v7, v3}, Lcom/layar/data/layer/LayerDB20;->addLayer(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v3           #layer:Lcom/layar/data/layer/Layer20;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 104
    .end local v0           #count:I
    .end local v1           #favoriteNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v4           #layerManager:Lcom/layar/data/layer/LayerManager;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #response:Lcom/layar/data/layer/LayerManager$LayerResponse;
    .end local v7           #selector:Lcom/layar/data/layer/LayersSelector;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public removeLayer(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)V
    .locals 1
    .parameter "selector"
    .parameter "layer"

    .prologue
    .line 293
    iget-object v0, p2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/layar/data/layer/LayerDB20;->removeLayer(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public removeLayer(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)V
    .locals 4
    .parameter "selector"
    .parameter "layerName"

    .prologue
    .line 302
    iget-object v3, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 303
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/layar/data/layer/LayerDB20;->getUriByType(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    .local v0, contentUri:Landroid/net/Uri;
    invoke-direct {p0, p1, p2}, Lcom/layar/data/layer/LayerDB20;->getSelectionByName(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, selection:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/layar/data/layer/LayerDB20;->isExists(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/layar/data/layer/LayerDB20;->cleanDatabase()V

    .line 309
    :cond_0
    return-void
.end method

.method public removeLayer(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 393
    iget-object v1, p0, Lcom/layar/data/layer/LayerDB20;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 394
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->LAYER_CONTENT_URI:Landroid/net/Uri;

    .line 395
    invoke-static {p1}, Lcom/layar/provider/LayerAlias;->selection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 394
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method public reorderBefore(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "selector"
    .parameter "moveableName"
    .parameter "anchorName"

    .prologue
    .line 192
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/layar/data/layer/LayerDB20;->getOrder(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, from:I
    invoke-direct {p0, p1, p3}, Lcom/layar/data/layer/LayerDB20;->getOrder(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)I

    move-result v1

    .line 196
    .local v1, to:I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/layar/data/layer/LayerDB20;->setOrder(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public replaceLayers(Lcom/layar/data/layer/LayersSelector;Ljava/util/List;)V
    .locals 0
    .parameter "selector"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/layer/LayersSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, layers:Ljava/util/List;,"Ljava/util/List<Lcom/layar/data/layer/Layer20;>;"
    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerDB20;->clear(Lcom/layar/data/layer/LayersSelector;)V

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/layar/data/layer/LayerDB20;->addLayers(Lcom/layar/data/layer/LayersSelector;Ljava/util/List;)V

    .line 374
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerDB20;->cleanDatabase()V

    .line 375
    return-void
.end method
