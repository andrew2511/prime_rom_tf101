.class public Lcom/asus/weather/WeatherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;
    }
.end annotation


# static fields
.field static isDuringUpdate:Z


# instance fields
.field receiverContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 226
    return-void
.end method

.method private checkIsOverLastUpdateTime(Landroid/content/Context;)Z
    .locals 21
    .parameter "context"

    .prologue
    .line 274
    const-string v18, ""

    .line 275
    .local v18, strlastupdate:Ljava/lang/String;
    const-string v15, ""

    .line 277
    .local v15, strCurrent:Ljava/lang/String;
    const-string v5, "content://com.asus.weather.provider/weather/1"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 279
    .local v4, CONTENT_URI:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 280
    .local v3, content:Landroid/content/ContentResolver;
    sget-object v5, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 281
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 283
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 284
    const-string v5, "lastupdate"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 285
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 287
    if-nez v18, :cond_1

    .line 289
    const/4 v5, 0x1

    .line 332
    :goto_0
    return v5

    .line 294
    :cond_0
    const-string v5, "[WeatherReceiver]"

    const-string v6, "checkIsOverLastUpdateTime: weatherCursor is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v5, 0x1

    goto :goto_0

    .line 298
    :cond_1
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 299
    .local v13, mTime:Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 300
    const-string v5, "%H"

    invoke-virtual {v13, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 301
    .local v10, hour:I
    const-string v14, ""

    .line 302
    .local v14, strAMPM:Ljava/lang/String;
    const/16 v5, 0xc

    if-lt v10, v5, :cond_2

    .line 304
    add-int/lit8 v10, v10, -0xc

    .line 305
    const-string v14, "PM"

    .line 311
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%Y/%m/%d "

    invoke-virtual {v13, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":%M:%S"

    invoke-virtual {v13, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 313
    const/4 v5, 0x0

    const-string v6, ":"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 314
    .local v19, strlastupdate_DateHour:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, ":"

    invoke-virtual {v15, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 315
    .local v16, strCurrent_DateHour:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 317
    const-string v5, ":"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, ":"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 318
    .local v20, strlastupdate_Min:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, ":"

    invoke-virtual {v15, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 319
    .local v17, strCurrent_Min:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 320
    .local v12, intlastupdate_Min:I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 321
    .local v11, intCurrent_Min:I
    sub-int v5, v11, v12

    const/16 v6, 0xa

    if-lt v5, v6, :cond_3

    .line 323
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 309
    .end local v11           #intCurrent_Min:I
    .end local v12           #intlastupdate_Min:I
    .end local v16           #strCurrent_DateHour:Ljava/lang/String;
    .end local v17           #strCurrent_Min:Ljava/lang/String;
    .end local v19           #strlastupdate_DateHour:Ljava/lang/String;
    .end local v20           #strlastupdate_Min:Ljava/lang/String;
    :cond_2
    const-string v14, "AM"

    goto/16 :goto_1

    .line 327
    .restart local v11       #intCurrent_Min:I
    .restart local v12       #intlastupdate_Min:I
    .restart local v16       #strCurrent_DateHour:Ljava/lang/String;
    .restart local v17       #strCurrent_Min:Ljava/lang/String;
    .restart local v19       #strlastupdate_DateHour:Ljava/lang/String;
    .restart local v20       #strlastupdate_Min:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 332
    .end local v11           #intCurrent_Min:I
    .end local v12           #intlastupdate_Min:I
    .end local v17           #strCurrent_Min:Ljava/lang/String;
    .end local v20           #strlastupdate_Min:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private haveInternet(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, result:Z
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 196
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 197
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    :cond_0
    const/4 v2, 0x0

    .line 213
    :goto_0
    const-string v3, "[WeatherSettingsAdapter]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnyNetwork:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v2

    .line 203
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 205
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public observeSetupWizard(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/asus/weather/WeatherReceiver;->receiverContext:Landroid/content/Context;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;

    invoke-direct {v3, p0}, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;-><init>(Lcom/asus/weather/WeatherReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 224
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    const-string v2, "PREF_WEATHER"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 35
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 37
    const-string v4, "FreqSpinner"

    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 38
    if-eq v2, v9, :cond_3

    .line 41
    sget-object v3, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-eq v2, v3, :cond_0

    .line 43
    const-string v3, "[WeatherReceiver]"

    const-string v4, "Register alarm manager using pref value:Success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    .line 45
    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/asus/weather/WeatherReceiver;->register(Landroid/content/Context;J)V

    .line 82
    :cond_0
    :goto_0
    const-string v2, "[WeatherReceiver]"

    const-string v3, "bootcomplete_out:Success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "CONTENT"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 90
    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_2
    :goto_1
    return-void

    .line 51
    :cond_3
    invoke-static {}, Lcom/asus/weather/WeatherFragmentSettings;->isChinaSku()Z

    move-result v2

    if-nez v2, :cond_4

    .line 53
    const-string v2, "Radiochoice"

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    :goto_2
    const-string v2, "FreqSpinner"

    sget-object v4, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v2, "UnitSpinner"

    sget-object v4, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    const-string v2, "[WeatherReceiver]"

    const-string v3, "Register alarm manager using default value:Success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v2, 0xdbba00

    .line 77
    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/asus/weather/WeatherReceiver;->register(Landroid/content/Context;J)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/asus/weather/WeatherReceiver;->observeSetupWizard(Landroid/content/Context;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v2, "Radiochoice"

    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    const v2, 0x7f05002d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    const v4, 0x7f05002e

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    const v5, 0x7f05002f

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 62
    const v6, 0x7f050030

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 64
    const-string v7, "Manual_city"

    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    const-string v2, "Manual_country"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string v2, "Manual_adminarea"

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string v2, "Manual_location"

    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 94
    :pswitch_0
    const-string v0, "[WeatherReceiver]"

    const-string v2, "Alarmmanager"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v2, "CONTENT"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v2, "CHECKNETWORK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 100
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 101
    if-eqz p0, :cond_5

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 107
    :cond_5
    const-string v0, "PERIOD"

    const-wide/16 v2, 0x3e8

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 110
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 111
    if-eqz v0, :cond_6

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.asus.weather.weatherIntentAction"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v3, "CONTENT"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v3, "CHECKNETWORK"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    invoke-static {p1, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 117
    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 121
    :cond_6
    const-string v0, "[WeatherReceiver]"

    const-string v1, "ALARMMANAGER_REGISTER_REQUEST:Alarm manager has error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 128
    :pswitch_1
    const-string v0, "CHECKNETWORK"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 130
    const-string v1, "[WeatherReceiver]"

    const-string v2, "P.UPDATE_REQUEST:Receive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-nez v0, :cond_7

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherReceiver;->haveInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 134
    :cond_7
    const-string v0, "[WeatherReceiver]"

    const-string v1, "Request weather update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-boolean v0, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherReceiver;->checkIsOverLastUpdateTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 137
    :cond_8
    sput-boolean v8, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const-string v1, "QUERYTYPE"

    const-string v2, "QUERYWEATHER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 145
    :cond_9
    const-string v0, "[WeatherReceiver]"

    const-string v1, "P.UPDATE_REQUEST:Receive isDuringUpdate=false -> SKIP query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 150
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v1, "CONTENT"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 159
    :pswitch_2
    sput-boolean v1, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    .line 160
    const-string v0, "[WeatherReceiver]"

    const-string v1, "P.UPDATE_REPLY_SUCCESS:Receive stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 168
    :pswitch_3
    sput-boolean v1, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    .line 169
    const-string v0, "[WeatherReceiver]"

    const-string v1, "P.UPDATE_REPLY_FAIL:Receive stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 178
    :pswitch_4
    const-string v0, "[WeatherReceiver]"

    const-string v1, "P.SEARCH_CITY_REQUEST:Receive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const-string v1, "QUERYTYPE"

    const-string v2, "CITYFIND"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "CITYFIND"

    const-string v2, "CITYNAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public register(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "period"

    .prologue
    const/4 v1, 0x0

    .line 254
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 256
    .local v0, alarm2:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 258
    const-string v2, "[WeatherReceiver]"

    const-string v3, "bootcomplete:Success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v7, intent2:Landroid/content/Intent;
    const-string v2, "CONTENT"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v2, "CHECKNETWORK"

    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    invoke-static {p1, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 264
    .local v6, pendingIntent2:Landroid/app/PendingIntent;
    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 270
    .end local v6           #pendingIntent2:Landroid/app/PendingIntent;
    .end local v7           #intent2:Landroid/content/Intent;
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v1, "[WeatherReceiver]"

    const-string v2, "Alarm manager has error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
