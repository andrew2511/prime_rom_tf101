.class public interface abstract Lcom/google/android/apps/books/sync/Synchronizable;
.super Ljava/lang/Object;
.source "Synchronizable.java"


# virtual methods
.method public abstract delete(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
.end method

.method public abstract getRowKey()Ljava/lang/String;
.end method

.method public abstract getWritableColumnToClass()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract insert(Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract query(Landroid/content/ContentValues;)Landroid/database/Cursor;
.end method

.method public abstract queryAll()Landroid/database/Cursor;
.end method

.method public abstract update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
.end method
