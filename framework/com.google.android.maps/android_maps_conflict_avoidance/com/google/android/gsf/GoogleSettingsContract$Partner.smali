.class public final Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;
.super Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$NameValueTable;
.source "GoogleSettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Partner"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 184
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$NameValueTable;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 84
    const/4 v8, 0x0

    .line 85
    .local v8, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 87
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

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

    move-result-object v6

    .line 89
    if-eqz v6, :cond_27

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_59
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_26} :catch_2d

    move-result-object v8

    .line 94
    :cond_27
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_2c
    :goto_2c
    return-object v8

    .line 90
    :catch_2d
    move-exception v0

    move-object v7, v0

    .line 92
    .local v7, e:Landroid/database/SQLException;
    :try_start_2f
    const-string v0, "GoogleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_59

    .line 94
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    .end local v7           #e:Landroid/database/SQLException;
    :catchall_59
    move-exception v0

    if-eqz v6, :cond_5f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "resolver"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 107
    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 109
    move-object v0, p2

    .line 112
    :cond_7
    return-object v0
.end method
