.class Lcom/google/googlenav/appwidget/traffic/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/appwidget/AppWidgetManager;

.field private final d:Lcom/google/googlenav/appwidget/traffic/l;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/k;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/appwidget/traffic/l;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/l;

    return-void
.end method

.method private static a(Lf/h;Lf/h;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    const v4, 0x3f99999a

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v0

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v1

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v2

    invoke-static {v1, v2}, Lf/I;->a(II)I

    move-result v1

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v2

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Lf/I;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const-string v4, "http://maps.google.com/maps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "ll"

    invoke-static {v0, v1}, Lf/h;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "spn"

    invoke-static {v2, v3}, Lf/h;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "layer"

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 5

    const v2, 0x15180

    const/4 v4, 0x0

    if-gez p0, :cond_2

    move v0, v4

    :goto_0
    div-int v1, v0, v2

    if-lez v1, :cond_0

    const/16 v0, 0xbc

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    rem-int/2addr v0, v2

    div-int/lit16 v1, v0, 0xe10

    rem-int/lit16 v0, v0, 0xe10

    div-int/lit8 v0, v0, 0x3c

    if-lez v1, :cond_1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbd

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xbe

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, p0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 4

    const v3, 0x7f0f035e

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->b:Ljava/lang/String;

    const v2, 0x7f030140

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/g;->a()I

    move-result v1

    const v2, 0x7f0f035d

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    if-eqz p4, :cond_0

    const v1, 0x7f0f0359

    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v3, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method a(IJLf/h;Lf/h;)V
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/appwidget/traffic/k;->b(IJLf/h;Lf/h;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method a(ILandroid/app/PendingIntent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/l;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->e:Lcom/google/googlenav/appwidget/traffic/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/k;->a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method a(ILandroid/widget/RemoteViews;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method b(IJLf/h;Lf/h;)Landroid/widget/RemoteViews;
    .locals 10

    const/4 v9, 0x0

    const-wide/high16 v7, 0x3ff0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/l;->b(I)Lcom/google/googlenav/appwidget/traffic/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p4, p5}, Lf/h;->b(Lf/h;)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/googlenav/appwidget/traffic/d;->j:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move-wide v1, v7

    :goto_1
    iget-wide v3, v0, Lcom/google/googlenav/appwidget/traffic/d;->f:J

    iget-wide v5, v0, Lcom/google/googlenav/appwidget/traffic/d;->i:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/appwidget/traffic/g;->a:Lcom/google/googlenav/appwidget/traffic/g;

    if-lez v1, :cond_4

    iget v1, v0, Lcom/google/googlenav/appwidget/traffic/d;->g:I

    const/16 v4, 0x28

    if-le v1, v4, :cond_3

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->c:Lcom/google/googlenav/appwidget/traffic/g;

    :goto_2
    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/k;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-static {p4, p5, v4}, Lcom/google/googlenav/appwidget/traffic/k;->a(Lf/h;Lf/h;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v9, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/googlenav/appwidget/traffic/k;->a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-wide v3, v0, Lcom/google/googlenav/appwidget/traffic/d;->j:J

    long-to-double v3, v3

    div-double v3, v7, v3

    mul-double/2addr v1, v3

    goto :goto_1

    :cond_3
    iget v1, v0, Lcom/google/googlenav/appwidget/traffic/d;->g:I

    const/16 v4, 0x14

    if-le v1, v4, :cond_4

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->b:Lcom/google/googlenav/appwidget/traffic/g;

    goto :goto_2

    :cond_4
    move-object v1, v3

    goto :goto_2
.end method

.method b(ILandroid/app/PendingIntent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/l;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->d:Lcom/google/googlenav/appwidget/traffic/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/k;->a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method c(ILandroid/app/PendingIntent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/appwidget/traffic/l;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/traffic/g;->f:Lcom/google/googlenav/appwidget/traffic/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/google/googlenav/appwidget/traffic/k;->a(Lcom/google/googlenav/appwidget/traffic/g;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(ILandroid/widget/RemoteViews;)V

    return-void
.end method
