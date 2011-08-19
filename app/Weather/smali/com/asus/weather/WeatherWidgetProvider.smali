.class public Lcom/asus/weather/WeatherWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WeatherWidgetProvider.java"


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final INDEX:[I

.field static final PICTURE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://com.asus.weather.provider/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/weather/WeatherWidgetProvider;->PICTURE:[I

    .line 53
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/asus/weather/WeatherWidgetProvider;->INDEX:[I

    return-void

    .line 23
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateWidgetInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 149
    move v0, v6

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 151
    aget v1, p3, v0

    .line 152
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/asus/weather/WeatherFragmentSettings;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "onUpdate1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p1, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 157
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030005

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 158
    const v4, 0x7f08000c

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/asus/weather/WeatherWidgetProvider;->setwidgetinfor(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V

    .line 162
    invoke-virtual {p2, v1, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public lastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 211
    .local v0, content:Landroid/content/ContentResolver;
    sget-object v1, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 215
    const-string v1, "[WeatherWidgetProvider]"

    const-string v2, "LastUpdateCursor is NOT null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const-string v1, "lastupdate"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, strlastupdate:Ljava/lang/String;
    if-eqz v7, :cond_0

    move-object v1, v7

    .line 231
    .end local v7           #strlastupdate:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 223
    .restart local v7       #strlastupdate:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    .line 231
    goto :goto_0

    .line 227
    .end local v7           #strlastupdate:Ljava/lang/String;
    :cond_1
    const-string v1, "[WeatherWidgetProvider]"

    const-string v2, "LastUpdateCursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 228
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 172
    const-string v0, ""

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "CONTENT"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 181
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 183
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 184
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/asus/weather/WeatherWidgetProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v3, "appWidgetIds"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 188
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 193
    const-string v0, "SHOWTOAST"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    if-eqz v0, :cond_0

    .line 197
    const v0, 0x7f05000b

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 201
    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 203
    const v0, 0x7f050024

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v8, 0x0

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 106
    .local v0, defaultLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, strLocaleLanguage:Ljava/lang/String;
    const-string v6, "PREF_WEATHER"

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 112
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 114
    .local v3, preEdt:Landroid/content/SharedPreferences$Editor;
    const-string v6, "language"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, lang:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    const-string v6, "language"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, intentUpdate:Landroid/content/Intent;
    const-string v6, "CONTENT"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v6, "CHECKNETWORK"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    .end local v1           #intentUpdate:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/asus/weather/WeatherWidgetProvider;->UpdateWidgetInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 140
    return-void

    .line 135
    :cond_1
    const-string v6, "language"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setwidgetinfor(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V
    .locals 26
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 236
    const-string v20, ""

    .line 237
    .local v20, tempunits:Ljava/lang/String;
    const-string v9, ""

    .line 238
    .local v9, cityname:Ljava/lang/String;
    const-string v23, ""

    .line 239
    .local v23, weathertext:Ljava/lang/String;
    const-string v18, ""

    .line 240
    .local v18, temperature:Ljava/lang/String;
    const-string v12, ""

    .line 241
    .local v12, icon:Ljava/lang/String;
    const-string v24, ""

    .line 242
    .local v24, winddirection:Ljava/lang/String;
    const-string v25, ""

    .line 243
    .local v25, windspeed:Ljava/lang/String;
    const-string v16, ""

    .line 244
    .local v16, speedunits:Ljava/lang/String;
    const-string v11, ""

    .line 246
    .local v11, humidity:Ljava/lang/String;
    const/4 v10, 0x0

    .line 248
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 249
    .local v3, content:Landroid/content/ContentResolver;
    sget-object v4, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 251
    if-eqz v10, :cond_7

    .line 253
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 255
    const-string v4, "tempunits"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 256
    const-string v4, "cityname"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 257
    const-string v4, "weathertext"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 258
    const-string v4, "temperature"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 259
    const-string v4, "weathericon"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 260
    const-string v4, "humidity"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 261
    const-string v4, "winddirection"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 262
    const-string v4, "windspeed"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 263
    const-string v4, "speedunits"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 264
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 267
    const-string v4, "null"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 269
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 270
    .local v13, icon_num:I
    sget-object v4, Lcom/asus/weather/WeatherWidgetProvider;->INDEX:[I

    const/4 v5, 0x1

    sub-int v5, v13, v5

    aget v14, v4, v5

    .line 271
    .local v14, index:I
    const v4, 0x7f08000d

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    const v4, 0x7f08000d

    sget-object v5, Lcom/asus/weather/WeatherWidgetProvider;->PICTURE:[I

    aget v5, v5, v14

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 276
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xd

    if-le v4, v5, :cond_1

    .line 278
    const v4, 0x7f08000f

    const/4 v5, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 279
    const v4, 0x7f080010

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 280
    const v4, 0x7f080010

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 289
    :goto_0
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_2

    .line 291
    const v4, 0x7f080011

    const/4 v5, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 292
    const v4, 0x7f080012

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 293
    const v4, 0x7f080012

    move-object/from16 v0, p4

    move v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 302
    :goto_1
    const-string v4, ""

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 305
    .local v17, strMoreinfo:Ljava/lang/String;
    const-string v4, " "

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 306
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 307
    const-string v4, ", "

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 309
    const-string v4, " "

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 310
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 311
    const-string v4, " "

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 312
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 313
    const-string v4, " "

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 314
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 316
    const v4, 0x7f080013

    move-object/from16 v0, p4

    move v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 318
    const-string v19, ""

    .line 319
    .local v19, tempunit:Ljava/lang/String;
    sget-object v4, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    const/16 v21, 0x2103

    .line 322
    .local v21, unit:C
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v22

    .line 323
    .local v22, unitStr:Ljava/lang/String;
    move-object/from16 v19, v22

    .line 336
    .end local v21           #unit:C
    .end local v22           #unitStr:Ljava/lang/String;
    :goto_2
    const v4, 0x7f080015

    move-object/from16 v0, p4

    move v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 337
    const v4, 0x7f080016

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 338
    const v4, 0x7f08000e

    const/4 v5, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 340
    invoke-virtual/range {p0 .. p1}, Lcom/asus/weather/WeatherWidgetProvider;->lastUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 342
    .local v15, lastupdate:Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f050029

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 345
    const v4, 0x7f080014

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 371
    .end local v13           #icon_num:I
    .end local v14           #index:I
    .end local v15           #lastupdate:Ljava/lang/String;
    .end local v17           #strMoreinfo:Ljava/lang/String;
    .end local v19           #tempunit:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 284
    .restart local v13       #icon_num:I
    .restart local v14       #index:I
    :cond_1
    const v4, 0x7f080010

    const/4 v5, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 285
    const v4, 0x7f08000f

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 286
    const v4, 0x7f08000f

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 297
    :cond_2
    const v4, 0x7f080012

    const/4 v5, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 298
    const v4, 0x7f080011

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 299
    const v4, 0x7f080011

    move-object/from16 v0, p4

    move v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 325
    .restart local v17       #strMoreinfo:Ljava/lang/String;
    .restart local v19       #tempunit:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 327
    const/16 v21, 0x2109

    .line 328
    .restart local v21       #unit:C
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v22

    .line 329
    .restart local v22       #unitStr:Ljava/lang/String;
    move-object/from16 v19, v22

    .line 330
    goto/16 :goto_2

    .line 333
    .end local v21           #unit:C
    .end local v22           #unitStr:Ljava/lang/String;
    :cond_4
    const-string v4, "[WeatherWidgetProvider]"

    const-string v5, "Temperature unit is wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 349
    .restart local v15       #lastupdate:Ljava/lang/String;
    :cond_5
    const v4, 0x7f080014

    const-string v5, ""

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 355
    .end local v13           #icon_num:I
    .end local v14           #index:I
    .end local v15           #lastupdate:Ljava/lang/String;
    .end local v17           #strMoreinfo:Ljava/lang/String;
    .end local v19           #tempunit:Ljava/lang/String;
    :cond_6
    const-string v4, "[WeatherWidgetProvider]"

    const-string v5, "No information in the contentprovider"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const v4, 0x7f08000f

    const v5, 0x7f050008

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 357
    const v4, 0x7f080011

    const-string v5, ""

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 358
    const v4, 0x7f080013

    const-string v5, ""

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 359
    const v4, 0x7f080015

    const-string v5, ""

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 360
    const v4, 0x7f080016

    const-string v5, ""

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 361
    const v4, 0x7f080014

    const-string v5, ""

    move-object/from16 v0, p4

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 362
    const v4, 0x7f08000e

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 363
    const v4, 0x7f08000e

    const v5, 0x7f020001

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 364
    const v4, 0x7f08000d

    const/4 v5, 0x4

    move-object/from16 v0, p4

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 369
    :cond_7
    const-string v4, "[WeatherWidgetProvider]"

    const-string v5, "weatherCursor is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
