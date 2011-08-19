.class public Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;
.super Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;
.source "StatesLocalSynchronizable.java"


# static fields
.field private static final UPDATE_SELECTION:Ljava/lang/String; = "last_access=?"


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 0
    .parameter "resolver"
    .parameter "accountName"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "oldValues"
    .parameter "newValues"

    .prologue
    .line 48
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;->checkValues(Landroid/content/ContentValues;)V

    .line 49
    invoke-static {p1, p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 5
    .parameter "oldValues"
    .parameter "updateValues"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 41
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "last_access"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, oldTime:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 43
    .local v1, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "last_access=?"

    invoke-virtual {v3, v2, p2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method
