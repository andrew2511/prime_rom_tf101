.class public final Lcom/android/gallery3d/picasa/PicasaContentProvider$Database;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PicasaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasa/PicasaContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Database"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 119
    const/4 v0, 0x0

    const/16 v1, 0x5e

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 120
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 124
    sget-object v0, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/picasa/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    sget-object v0, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/picasa/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    sget-object v0, Lcom/android/gallery3d/picasa/UserEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/picasa/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 127
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 133
    sget-object v0, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/picasa/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    sget-object v0, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/picasa/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    sget-object v0, Lcom/android/gallery3d/picasa/UserEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/picasa/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$Database;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    return-void
.end method
