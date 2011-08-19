.class public Landroid/util/CalendarUtils$TimeZoneUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    }
.end annotation


# static fields
.field public static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field public static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled"

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static volatile mFirstTZRequest:Z

.field private static mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

.field private static volatile mHomeTZ:Ljava/lang/String;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static mTZCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mTZQueryInProgress:Z

.field private static mToken:I

.field private static volatile mUseHomeTZ:Z


# instance fields
.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "timezoneType"

    aput-object v1, v0, v3

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "timezoneInstances"

    aput-object v1, v0, v3

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    .line 53
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    .line 54
    sput-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 55
    sput-boolean v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 57
    sput-boolean v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 58
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    .line 61
    sput v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "prefsName"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroid/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public forceDBRequery(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 303
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v0

    .line 304
    :try_start_3
    sget-boolean v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v1, :cond_e

    .line 305
    sget-object v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v0

    .line 311
    :goto_d
    return-void

    .line 308
    :cond_e
    const/4 v1, 0x1

    sput-boolean v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 309
    invoke-virtual {p0, p1, p2}, Landroid/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 310
    monitor-exit v0

    goto :goto_d

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 18
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 169
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move v1, v0

    if-eqz v1, :cond_23

    .line 170
    const-string v8, "UTC"

    .line 174
    .local v8, tz:Ljava/lang/String;
    :goto_9
    sget-object v10, Landroid/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v10

    .line 175
    :try_start_c
    sget-object v1, Landroid/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 176
    sget-object v2, Landroid/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, date:Ljava/lang/String;
    monitor-exit v10
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_29

    .line 179
    return-object v9

    .line 172
    .end local v8           #tz:Ljava/lang/String;
    .end local v9           #date:Ljava/lang/String;
    :cond_23
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #tz:Ljava/lang/String;
    goto :goto_9

    .line 178
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 266
    sget-object v9, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v9

    .line 267
    :try_start_3
    sget-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v0, :cond_47

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 269
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 271
    iget-object v0, p0, Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 272
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string/jumbo v0, "preferences_home_tz_enabled"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 273
    const-string/jumbo v0, "preferences_home_tz"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 279
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-nez v0, :cond_39

    .line 280
    new-instance v0, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Landroid/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 282
    :cond_39
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Calendar$CalendarCache;->POJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    :cond_47
    sget-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v0, :cond_50

    .line 286
    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_50
    monitor-exit v9
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_58

    .line 289
    sget-boolean v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_5b

    sget-object v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    :goto_57
    return-object v0

    .line 288
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v9
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0

    .line 289
    :cond_5b
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_57
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .registers 20
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 195
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 249
    :cond_6
    :goto_6
    return-void

    .line 201
    :cond_7
    const/16 v16, 0x0

    .line 202
    .local v16, updatePrefs:Z
    sget-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v3

    .line 203
    :try_start_c
    const-string v4, "auto"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 204
    sget-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v4, :cond_1d

    .line 205
    const/16 v16, 0x1

    .line 207
    :cond_1d
    const/4 v4, 0x0

    sput-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 215
    :goto_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_bc

    .line 216
    if-eqz v16, :cond_6

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 219
    .local v15, prefs:Landroid/content/SharedPreferences;
    const-string/jumbo v3, "preferences_home_tz_enabled"

    sget-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    invoke-static {v15, v3, v4}, Landroid/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 220
    const-string/jumbo v3, "preferences_home_tz"

    sget-object v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v15, v3, v4}, Landroid/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 224
    .local v7, values:Landroid/content/ContentValues;
    sget-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v3, :cond_4f

    .line 225
    sget-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v3, v4}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    .line 228
    :cond_4f
    new-instance v3, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Landroid/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 231
    sget v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v3, :cond_69

    .line 232
    const/4 v3, 0x1

    sput v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 236
    :cond_69
    const-string/jumbo v3, "value"

    sget-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v4, :cond_bf

    const-string v4, "home"

    :goto_72
    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    const-string v8, "key=?"

    sget-object v9, Landroid/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    sget-boolean v3, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v3, :cond_6

    .line 243
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v12, values2:Landroid/content/ContentValues;
    const-string/jumbo v3, "value"

    sget-object v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v8, Landroid/util/CalendarUtils$TimeZoneUtils;->mHandler:Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v9, Landroid/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v10, 0x0

    sget-object v11, Landroid/provider/Calendar$CalendarCache;->URI:Landroid/net/Uri;

    const-string v13, "key=?"

    sget-object v14, Landroid/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v8 .. v14}, Landroid/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 209
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v12           #values2:Landroid/content/ContentValues;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    :cond_a4
    :try_start_a4
    sget-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v4, :cond_b3

    sget-object v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b5

    .line 210
    :cond_b3
    const/16 v16, 0x1

    .line 212
    :cond_b5
    const/4 v4, 0x1

    sput-boolean v4, Landroid/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 213
    sput-object p2, Landroid/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    goto/16 :goto_20

    .line 215
    :catchall_bc
    move-exception v4

    monitor-exit v3
    :try_end_be
    .catchall {:try_start_a4 .. :try_end_be} :catchall_bc

    throw v4

    .line 236
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v15       #prefs:Landroid/content/SharedPreferences;
    :cond_bf
    const-string v4, "auto"

    goto :goto_72
.end method
