.class public Lcom/asus/weather/WeatherManualActivity;
.super Landroid/app/Activity;
.source "WeatherManualActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/weather/WeatherManualActivity$Receiver;,
        Lcom/asus/weather/WeatherManualActivity$InfoDialog;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final CONTENT_URI_CITYFIND:Landroid/net/Uri;

.field static cityname:Ljava/lang/String;

.field public static strCityinfo:[Ljava/lang/String;


# instance fields
.field editText:Landroid/widget/EditText;

.field private editTextListener:Landroid/text/TextWatcher;

.field ibtn:Landroid/widget/ImageButton;

.field iv:Landroid/widget/ImageView;

.field public mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

.field preEdt:Landroid/content/SharedPreferences$Editor;

.field pref:Landroid/content/SharedPreferences;

.field rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

.field private searchClickListener:Landroid/view/View$OnClickListener;

.field showProgressDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, ""

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    .line 44
    const-string v0, "content://com.asus.weather.provider/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.asus.weather.provider/cityfind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->CONTENT_URI_CITYFIND:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherManualActivity;->showProgressDialog:Z

    .line 115
    new-instance v0, Lcom/asus/weather/WeatherManualActivity$1;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherManualActivity$1;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->searchClickListener:Landroid/view/View$OnClickListener;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 232
    new-instance v0, Lcom/asus/weather/WeatherManualActivity$2;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherManualActivity$2;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->editTextListener:Landroid/text/TextWatcher;

    .line 277
    return-void
.end method

.method private Trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/asus/weather/WeatherManualActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/asus/weather/WeatherManualActivity;->haveInternet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/asus/weather/WeatherManualActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherManualActivity;->Trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/weather/WeatherManualActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherManualActivity;->listWeatherCityFind(I)V

    return-void
.end method

.method private haveInternet()Z
    .locals 6

    .prologue
    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, result:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/asus/weather/WeatherManualActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 146
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 147
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    :cond_0
    const/4 v2, 0x0

    .line 163
    :goto_0
    const-string v3, "[WeatherManualActivity]"

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

    .line 165
    return v2

    .line 153
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    const/4 v2, 0x0

    goto :goto_0

    .line 159
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private listWeatherCityFind(I)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 343
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->CONTENT_URI_CITYFIND:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS2:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_6

    .line 347
    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 350
    const-string v2, "[WeatherSettingsAdapter]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-ne v1, v6, :cond_2

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 356
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 358
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "city"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 359
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "country"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 360
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "adminArea"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 361
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "location"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 362
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 370
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherManualActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->finish()V

    .line 412
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 418
    :goto_1
    return-void

    .line 375
    :cond_2
    if-nez v1, :cond_3

    .line 378
    const v1, 0x7f050005

    const/16 v2, 0x1770

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 380
    const-string v1, "[WeatherManualActivity]"

    const-string v2, "No cityfind"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_3
    if-le v1, v6, :cond_1

    .line 384
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 385
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/asus/weather/WeatherListViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherManualActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    :cond_4
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 394
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 396
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "city"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 397
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "country"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 398
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "adminArea"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 399
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "location"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 401
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 403
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherManualActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->finish()V

    goto/16 :goto_0

    .line 416
    :cond_6
    const-string v0, "[WeatherManualActivity]"

    const-string v1, "weatherCursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public SetInitialEditText()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->editTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    return-void
.end method

.method public SetInitialSearchBtn()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->disableSearchBtn()V

    .line 112
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->ibtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->searchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public cancelDialog()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherManualActivity;->showProgressDialog:Z

    .line 187
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->dismiss()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 192
    :cond_0
    return-void
.end method

.method public disableSearchBtn()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->ibtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->iv:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    return-void
.end method

.method public enableSearchBtn()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->ibtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->iv:Landroid/widget/ImageView;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherManualActivity;->setContentView(I)V

    .line 52
    const v1, 0x7f05001e

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherManualActivity;->setTitle(I)V

    .line 53
    const-string v1, "PREF_WEATHER"

    invoke-virtual {p0, v1, v2}, Lcom/asus/weather/WeatherManualActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->pref:Landroid/content/SharedPreferences;

    .line 54
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->preEdt:Landroid/content/SharedPreferences$Editor;

    .line 55
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    sput-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    .line 56
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->ibtn:Landroid/widget/ImageButton;

    .line 57
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->iv:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherManualActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    .line 60
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v1, v1, v2

    sput-object v1, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    .line 64
    :cond_0
    new-instance v1, Lcom/asus/weather/WeatherManualActivity$Receiver;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherManualActivity$Receiver;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

    invoke-virtual {p0, v1, v0}, Lcom/asus/weather/WeatherManualActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->SetInitialEditText()V

    .line 69
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->SetInitialSearchBtn()V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherManualActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 264
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->finish()V

    .line 268
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->dismiss()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 91
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    iget-boolean v0, p0, Lcom/asus/weather/WeatherManualActivity;->showProgressDialog:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->showDialog()V

    .line 80
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 173
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v1, "ProgressDialogTag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 175
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 179
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ProgressDialogTag"

    invoke-virtual {v1, v2, v3}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/weather/WeatherManualActivity;->showProgressDialog:Z

    .line 182
    :cond_0
    return-void
.end method
