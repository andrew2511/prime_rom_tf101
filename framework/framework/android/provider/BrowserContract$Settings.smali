.class public final Landroid/provider/BrowserContract$Settings;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KEY_SYNC_ENABLED:Ljava/lang/String; = "sync_enabled"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 511
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSyncEnabled(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 532
    const/4 v6, 0x0

    .line 534
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "sync_enabled"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 536
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_41

    move-result v0

    if-nez v0, :cond_31

    .line 541
    :cond_2a
    if-eqz v6, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2f
    move v0, v8

    :cond_30
    :goto_30
    return v0

    .line 539
    :cond_31
    const/4 v0, 0x0

    :try_start_32
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_41

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v9

    .line 541
    :goto_39
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_30

    :cond_3f
    move v0, v8

    .line 539
    goto :goto_39

    .line 541
    :catchall_41
    move-exception v0

    if-eqz v6, :cond_47

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v0
.end method

.method public static setSyncEnabled(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 549
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 550
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    const-string/jumbo v2, "sync_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string/jumbo v1, "value"

    if-eqz p1, :cond_24

    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 553
    return-void

    .line 551
    :cond_24
    const/4 v2, 0x0

    goto :goto_13
.end method
