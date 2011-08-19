.class public Lcom/asus/vibe/favorite/VibeFavoriteDatabase;
.super Ljava/lang/Object;
.source "VibeFavoriteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/asus/vibe/favorite/VibeFavoriteDatabase;


# instance fields
.field private mDbHelper:Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;

.field private mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mDbHelper:Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;

    .line 50
    iput-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    new-instance v0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;

    invoke-direct {v0, p1}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mDbHelper:Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;

    .line 71
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mDbHelper:Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;

    invoke-virtual {v0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    return-void
.end method

.method private _delete(Lcom/asus/vibe/item/VibeParam;)Z
    .locals 5
    .parameter "param"

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    .line 85
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPContentId=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private _insert(Lcom/asus/vibe/item/VibeParam;)J
    .locals 4
    .parameter "param"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->_isFavorite(Lcom/asus/vibe/item/VibeParam;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-wide/16 v1, -0x1

    .line 173
    :goto_0
    return-wide v1

    .line 156
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "vibeAction"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "tabType"

    iget v2, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v1, "MainCategoryCmsId"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "MainCategoryPremiumId"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "MainCategoryName"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "SubCategoryId"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "SubCategoryName"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "SPName"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "ContentUrl"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "ContentDetailUrl"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mContentDetailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "PackageUrl"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "SPContentId"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "ContentName"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "ImageUrl"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "ImageBuffer"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 173
    iget-object v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorite"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto/16 :goto_0
.end method

.method private _isFavorite(Lcom/asus/vibe/item/VibeParam;)Z
    .locals 12
    .parameter "param"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 93
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v10

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorite"

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPContentId=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 97
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v9, v11

    .line 98
    .local v9, result:Z
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 99
    goto :goto_0

    .end local v9           #result:Z
    :cond_2
    move v9, v10

    .line 97
    goto :goto_1
.end method

.method private _queryFavorite(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeParam;
    .locals 10
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPContentId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorite"

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "vibeAction"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "tabType"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "MainCategoryCmsId"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "MainCategoryPremiumId"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "MainCategoryName"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "SubCategoryId"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "SubCategoryName"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    const-string v6, "SPName"

    aput-object v6, v2, v5

    const/16 v5, 0x8

    const-string v6, "ContentUrl"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    const-string v6, "ContentDetailUrl"

    aput-object v6, v2, v5

    const/16 v5, 0xa

    const-string v6, "PackageUrl"

    aput-object v6, v2, v5

    const/16 v5, 0xb

    const-string v6, "SPContentId"

    aput-object v6, v2, v5

    const/16 v5, 0xc

    const-string v6, "ContentName"

    aput-object v6, v2, v5

    const/16 v5, 0xd

    const-string v6, "ImageUrl"

    aput-object v6, v2, v5

    const/16 v5, 0xe

    const-string v6, "ImageBuffer"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 147
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {v8, p2}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->genParamFromCursor(Landroid/database/Cursor;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v9

    .line 148
    .local v9, newParam:Lcom/asus/vibe/item/VibeParam;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 149
    return-object v9
.end method

.method private _queryFavoriteList(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 10
    .parameter "param"
    .parameter "interrupter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/asus/vibe/item/VibeParam;",
            "Lcom/asus/vibe/api/Interrupter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Cont;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibeAction=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 124
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorite"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "SPContentId"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "ContentName"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "ImageUrl"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "ImageBuffer"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 121
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {v9, p2}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->genContListFromCursor(Landroid/database/Cursor;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v8

    .line 123
    .local v8, contList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 124
    goto :goto_0
.end method

.method private _update(Lcom/asus/vibe/item/VibeParam;)J
    .locals 5
    .parameter "param"

    .prologue
    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v0, updateValues:Landroid/content/ContentValues;
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vibeAction"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iget v1, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-lez v1, :cond_1

    const-string v1, "tabType"

    iget v2, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    :cond_1
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-eqz v1, :cond_4

    .line 181
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MainCategoryCmsId"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_2
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "MainCategoryPremiumId"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_3
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "MainCategoryName"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_4
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-eqz v1, :cond_a

    .line 186
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "SubCategoryId"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_5
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "SubCategoryName"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_6
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "SPName"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_7
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mContentUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ContentUrl"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_8
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mContentDetailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ContentDetailUrl"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mContentDetailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_9
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "PackageUrl"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_a
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v1, :cond_d

    .line 195
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "ContentName"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_b
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "ImageUrl"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_c
    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    array-length v1, v1

    if-lez v1, :cond_d

    .line 198
    const-string v1, "ImageBuffer"

    iget-object v2, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 200
    :cond_d
    iget-object v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPContentId=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v4, v4, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public static delete(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z
    .locals 1
    .parameter "context"
    .parameter "param"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->getInstance(Landroid/content/Context;)Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->_delete(Lcom/asus/vibe/item/VibeParam;)Z

    move-result v0

    return v0
.end method

.method private static genContListFromCursor(Landroid/database/Cursor;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 5
    .parameter "cursor"
    .parameter "interrupter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/asus/vibe/api/Interrupter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Cont;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    move-object v2, v4

    .line 250
    :goto_0
    return-object v2

    .line 236
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, contList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 239
    :cond_1
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 240
    :cond_2
    new-instance v0, Lcom/asus/vibe/item/VibeItem_Cont;

    invoke-direct {v0}, Lcom/asus/vibe/item/VibeItem_Cont;-><init>()V

    .line 241
    .local v0, cont:Lcom/asus/vibe/item/VibeItem_Cont;
    const-string v2, "SPContentId"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    .line 242
    const-string v2, "ContentName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    .line 243
    const-string v2, "ImageUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    .line 244
    const-string v2, "ImageBuffer"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    .line 245
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    move-object v2, v1

    .line 248
    goto :goto_0

    :cond_3
    move-object v2, v4

    .line 250
    goto :goto_0
.end method

.method private static genParamFromCursor(Landroid/database/Cursor;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeParam;
    .locals 4
    .parameter "cursor"
    .parameter "interrupter"

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    move-object v1, v3

    .line 281
    :goto_0
    return-object v1

    .line 256
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v0}, Lcom/asus/vibe/item/VibeParam;-><init>()V

    .line 259
    .local v0, param:Lcom/asus/vibe/item/VibeParam;
    const-string v1, "vibeAction"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    .line 260
    const-string v1, "tabType"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/asus/vibe/item/VibeParam;->tabType:I

    .line 261
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 262
    :cond_2
    new-instance v1, Lcom/asus/vibe/item/VibeItem_Main;

    invoke-direct {v1}, Lcom/asus/vibe/item/VibeItem_Main;-><init>()V

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    .line 263
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    const-string v2, "MainCategoryCmsId"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    .line 264
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    const-string v2, "MainCategoryPremiumId"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    .line 265
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    const-string v2, "MainCategoryName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_0

    .line 267
    :cond_3
    new-instance v1, Lcom/asus/vibe/item/VibeItem_Sub;

    invoke-direct {v1}, Lcom/asus/vibe/item/VibeItem_Sub;-><init>()V

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    .line 268
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    const-string v2, "SubCategoryId"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    .line 269
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    const-string v2, "SubCategoryName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    .line 270
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    const-string v2, "SPName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSPName:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v3

    goto/16 :goto_0

    .line 272
    :cond_4
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    const-string v2, "ContentUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mContentUrl:Ljava/lang/String;

    .line 273
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    const-string v2, "ContentDetailUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mContentDetailUrl:Ljava/lang/String;

    .line 274
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    const-string v2, "PackageUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v3

    goto/16 :goto_0

    .line 276
    :cond_5
    new-instance v1, Lcom/asus/vibe/item/VibeItem_Cont;

    invoke-direct {v1}, Lcom/asus/vibe/item/VibeItem_Cont;-><init>()V

    iput-object v1, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    .line 277
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    const-string v2, "SPContentId"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    .line 278
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    const-string v2, "ContentName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    .line 279
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    const-string v2, "ImageUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageUrl:Ljava/lang/String;

    .line 280
    iget-object v1, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    const-string v2, "ImageBuffer"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mImageBuffer:[B

    move-object v1, v0

    .line 281
    goto/16 :goto_0
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/asus/vibe/favorite/VibeFavoriteDatabase;
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    sget-object v0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mInstance:Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    invoke-direct {v0, p0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mInstance:Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    .line 66
    :cond_0
    sget-object v0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mInstance:Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    return-object v0
.end method

.method public static insert(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)J
    .locals 2
    .parameter "context"
    .parameter "param"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->getInstance(Landroid/content/Context;)Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->_insert(Lcom/asus/vibe/item/VibeParam;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isFavorite(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)Z
    .locals 1
    .parameter "context"
    .parameter "param"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->getInstance(Landroid/content/Context;)Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->_isFavorite(Lcom/asus/vibe/item/VibeParam;)Z

    move-result v0

    return v0
.end method

.method public static queryFavorite(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeParam;
    .locals 1
    .parameter "context"
    .parameter "param"
    .parameter "interrupter"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->getInstance(Landroid/content/Context;)Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->_queryFavorite(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v0

    return-object v0
.end method

.method public static queryFavoriteList(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .parameter "param"
    .parameter "interrupter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/asus/vibe/item/VibeParam;",
            "Lcom/asus/vibe/api/Interrupter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Cont;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->getInstance(Landroid/content/Context;)Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->_queryFavoriteList(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static update(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;)J
    .locals 2
    .parameter "context"
    .parameter "param"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->getInstance(Landroid/content/Context;)Lcom/asus/vibe/favorite/VibeFavoriteDatabase;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->_update(Lcom/asus/vibe/item/VibeParam;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mDbHelper:Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;

    invoke-virtual {v0}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;->close()V

    .line 78
    iput-object v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mDbHelper:Lcom/asus/vibe/favorite/VibeFavoriteDatabase$FavoriteDbHelper;

    .line 79
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    iput-object v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->mFavoriteDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    return-void
.end method
