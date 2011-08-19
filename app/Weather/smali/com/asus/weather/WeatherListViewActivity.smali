.class public Lcom/asus/weather/WeatherListViewActivity;
.super Landroid/app/Activity;
.source "WeatherListViewActivity.java"


# instance fields
.field private listCity:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getCityFindStringList(Landroid/widget/ListView;)Z
    .locals 10
    .parameter "listCity"

    .prologue
    const/4 v3, 0x0

    .line 50
    const-string v2, "content://com.asus.weather.provider/cityfind"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/asus/weather/WeatherListViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, content:Landroid/content/ContentResolver;
    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS2:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 55
    .local v9, weatherCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 57
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 58
    .local v7, iColnum:I
    new-array v8, v7, [Ljava/lang/String;

    .line 59
    .local v8, strCityList:[Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 62
    if-eqz v9, :cond_0

    .line 64
    const-string v2, "country"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    .line 65
    aget-object v2, v8, v6

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    .line 66
    aget-object v2, v8, v6

    const-string v3, "adminArea"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    .line 67
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 60
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 72
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    .end local v6           #i:I
    .end local v7           #iColnum:I
    .end local v8           #strCityList:[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherListViewActivity;->setContentView(I)V

    .line 26
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/asus/weather/WeatherListViewActivity;->listCity:Landroid/widget/ListView;

    .line 28
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, titleView:Landroid/widget/TextView;
    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object v1, p0, Lcom/asus/weather/WeatherListViewActivity;->listCity:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 32
    iget-object v1, p0, Lcom/asus/weather/WeatherListViewActivity;->listCity:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/asus/weather/WeatherListViewActivity;->getCityFindStringList(Landroid/widget/ListView;)Z

    .line 34
    iget-object v1, p0, Lcom/asus/weather/WeatherListViewActivity;->listCity:Landroid/widget/ListView;

    new-instance v2, Lcom/asus/weather/WeatherListViewActivity$1;

    invoke-direct {v2, p0}, Lcom/asus/weather/WeatherListViewActivity$1;-><init>(Lcom/asus/weather/WeatherListViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    return-void
.end method
