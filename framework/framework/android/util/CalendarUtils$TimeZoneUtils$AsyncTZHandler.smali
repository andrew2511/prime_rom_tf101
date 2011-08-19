.class Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/CalendarUtils$TimeZoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method public constructor <init>(Landroid/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 84
    iput-object p1, p0, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Landroid/util/CalendarUtils$TimeZoneUtils;

    .line 85
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 16
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 90
    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    .line 91
    if-nez p3, :cond_11

    .line 92
    const/4 v10, 0x0

    :try_start_8
    invoke-static {v10}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    .line 93
    const/4 v10, 0x1

    invoke-static {v10}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$202(Z)Z

    .line 94
    monitor-exit v9

    .line 135
    .end local p2
    :goto_10
    return-void

    .line 97
    .restart local p2
    :cond_11
    const/4 v8, 0x0

    .line 99
    .local v8, writePrefs:Z
    const-string v10, "key"

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 100
    .local v3, keyColumn:I
    const-string/jumbo v10, "value"

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 101
    .local v7, valueColumn:I
    :cond_1f
    :goto_1f
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 102
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, key:Ljava/lang/String;
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, value:Ljava/lang/String;
    const-string/jumbo v10, "timezoneType"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 105
    const-string v10, "auto"

    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4e

    const/4 v10, 0x1

    move v5, v10

    .line 107
    .local v5, useHomeTZ:Z
    :goto_40
    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$300()Z

    move-result v10

    if-eq v5, v10, :cond_1f

    .line 108
    const/4 v8, 0x1

    .line 109
    invoke-static {v5}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$302(Z)Z

    goto :goto_1f

    .line 134
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyColumn:I
    .end local v5           #useHomeTZ:Z
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #valueColumn:I
    .end local v8           #writePrefs:Z
    .end local p2
    :catchall_4b
    move-exception v10

    monitor-exit v9
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4b

    throw v10

    .line 105
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #keyColumn:I
    .restart local v6       #value:Ljava/lang/String;
    .restart local v7       #valueColumn:I
    .restart local v8       #writePrefs:Z
    .restart local p2
    :cond_4e
    const/4 v10, 0x0

    move v5, v10

    goto :goto_40

    .line 111
    :cond_51
    :try_start_51
    const-string/jumbo v10, "timezoneInstancesPrevious"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 113
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f

    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$400()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f

    .line 114
    const/4 v8, 0x1

    .line 115
    invoke-static {v6}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$402(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1f

    .line 119
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_6f
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 120
    if-eqz v8, :cond_94

    .line 121
    check-cast p2, Landroid/content/Context;

    .end local p2
    iget-object v10, p0, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->this$0:Landroid/util/CalendarUtils$TimeZoneUtils;

    #getter for: Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;
    invoke-static {v10}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$500(Landroid/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p2, v10}, Landroid/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 123
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string/jumbo v10, "preferences_home_tz_enabled"

    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$300()Z

    move-result v11

    invoke-static {v4, v10, v11}, Landroid/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 124
    const-string/jumbo v10, "preferences_home_tz"

    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$400()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v10, v11}, Landroid/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_94
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$102(Z)Z

    .line 128
    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a0
    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 129
    .local v0, callback:Ljava/lang/Runnable;
    if-eqz v0, :cond_a0

    .line 130
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_a0

    .line 133
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_b2
    invoke-static {}, Landroid/util/CalendarUtils$TimeZoneUtils;->access$000()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    .line 134
    monitor-exit v9
    :try_end_ba
    .catchall {:try_start_51 .. :try_end_ba} :catchall_4b

    goto/16 :goto_10
.end method
