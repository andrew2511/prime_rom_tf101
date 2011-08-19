.class public final Lcom/google/android/apps/books/util/GservicesHelper;
.super Ljava/lang/Object;
.source "GservicesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/GservicesHelper$Tester;
    }
.end annotation


# static fields
.field private static final BULK_UPGRADE_SESSION_KEYS:Ljava/lang/String; = "books_phone:bulk_upgrade_session_keys"

.field private static final GET_ACCESS_LOCK:Ljava/lang/String; = "books_phone:get_access_lock"

.field private static final MAX_SESSION_KEY_UPGRADES:Ljava/lang/String; = "books:max_session_key_upgrades"

.field private static final RELEASE_ACCESS_LOCK:Ljava/lang/String; = "books_phone:release_access_lock"

.field private static final TAG:Ljava/lang/String; = "BooksGservicesHelper"

.field public static final sEclairContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "content://settings/gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/GservicesHelper;->sEclairContentUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "cr"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 143
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, valString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, p2

    .line 154
    :goto_0
    return v1

    .line 146
    :cond_1
    sget-object v1, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    const/4 v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    sget-object v1, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_3
    const-string v1, "BooksGservicesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to read gservices key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\") as boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 154
    goto :goto_0
.end method

.method private static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 4
    .parameter "resolver"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 128
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lcom/google/android/apps/books/util/GservicesHelper;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v2, v3

    .line 135
    .local v2, value:I
    :goto_0
    return v2

    .end local v2           #value:I
    :cond_0
    move v2, p2

    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, ignored:Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2       #value:I
    goto :goto_0
.end method

.method private static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, newGservices:Z
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 86
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->getStringEclair(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    :goto_0
    return-object v2

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 90
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 92
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BooksGservicesHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getString(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, p2

    .line 93
    goto :goto_0
.end method

.method private static getStringEclair(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    const-string v8, "value"

    .line 105
    const/4 v6, 0x0

    .line 107
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/android/apps/books/util/GservicesHelper;->sEclairContentUri:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 112
    if-eqz v6, :cond_0

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "value"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 110
    .local v7, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v0, "BooksGservicesHelper"

    const-string v1, "Query of gservices failed."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-eqz v6, :cond_0

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 112
    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    move-object v0, p2

    .line 120
    goto :goto_1
.end method

.method public static maxSessionKeyUpgradesPerRequest(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "resolver"

    .prologue
    .line 68
    const-string v0, "books:max_session_key_upgrades"

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shouldBulkUpgradeSessionKeys(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "resolver"

    .prologue
    .line 60
    const-string v0, "books_phone:bulk_upgrade_session_keys"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldGetAccessLock(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "resolver"

    .prologue
    .line 44
    const-string v0, "books_phone:get_access_lock"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldReleaseAccessLock(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "resolver"

    .prologue
    .line 52
    const-string v0, "books_phone:release_access_lock"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
