.class public Lcom/google/googlenav/appwidget/hotpot/widget/i;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0f01c2

    invoke-static {p0, v0, v1, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030068

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/widget/RemoteViews;I)V

    const v1, 0x7f0201dd

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(Landroid/widget/RemoteViews;I)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    if-eqz p3, :cond_1

    const v1, 0x7f0f01d7

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;)Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030068

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p2, v0, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;I)Landroid/widget/RemoteViews;
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f03006e

    if-ne p4, v1, :cond_0

    invoke-static {p0, p2, v0, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    invoke-static {p0, p2, v0, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p2, v0, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    invoke-static {p0, p2, v0, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/g;)Landroid/widget/RemoteViews;
    .locals 3

    const v0, 0x7f0f01cd

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static a(II)Ljava/lang/String;
    .locals 3

    if-gtz p0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V
    .locals 9

    const v8, 0x7f0f01ce

    const v6, 0x7f0f01b9

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v7, 0x7f0f01d6

    const v0, 0x7f0f01d7

    invoke-interface {p4}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {p2, v8}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/widget/RemoteViews;I)V

    invoke-virtual {p3}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->b()I

    move-result v0

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->g()Lcom/google/googlenav/appwidget/hotpot/widget/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/googlenav/appwidget/hotpot/widget/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/google/googlenav/appwidget/hotpot/widget/d;->b:I

    :cond_0
    const v1, 0x7f0201bc

    invoke-static {p2, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(Landroid/widget/RemoteViews;I)V

    const v1, 0x7f0f01b1

    iget-object v2, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-interface {p4, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v8, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0f01c5

    sget-object v2, Lcom/google/googlenav/appwidget/hotpot/widget/e;->c:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    invoke-interface {p4, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(Lcom/google/googlenav/appwidget/hotpot/widget/e;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->h()I

    move-result v1

    invoke-static {p2, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->c(Landroid/widget/RemoteViews;I)V

    invoke-static {p2, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->d(Landroid/widget/RemoteViews;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v0

    invoke-virtual {v0}, Lab/d;->b()J

    move-result-wide v0

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1d2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(Landroid/widget/RemoteViews;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    move v1, v4

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 0x4
        0xcet 0x1t 0xft 0x7ft
        0xcct 0x1t 0xft 0x7ft
        0xc2t 0x1t 0xft 0x7ft
        0xcdt 0x1t 0xft 0x7ft
    .end array-data
.end method

.method private static b(II)I
    .locals 1

    if-lt p1, p0, :cond_0

    const v0, 0x7f0201d3

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201d2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/h;Lcom/google/googlenav/appwidget/hotpot/widget/g;)Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03006b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, p2, v0, p1, p3}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/g;)Landroid/widget/RemoteViews;
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x1c6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->b(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0f01cc

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(Landroid/content/Context;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/widget/h;Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/hotpot/persistence/b;Lcom/google/googlenav/appwidget/hotpot/widget/g;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->h()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->c(Landroid/widget/RemoteViews;I)V

    const v0, 0x7f0201bd

    invoke-static {p2, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(Landroid/widget/RemoteViews;I)V

    const v0, 0x7f0f01c5

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/widget/e;->d:Lcom/google/googlenav/appwidget/hotpot/widget/e;

    invoke-interface {p4, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(Lcom/google/googlenav/appwidget/hotpot/widget/e;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0f01df

    iget-object v1, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-interface {p4, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/google/googlenav/az;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0f01d9

    const/16 v2, 0x1d0

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p3}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->b()I

    move-result v0

    invoke-interface {p1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->g()Lcom/google/googlenav/appwidget/hotpot/widget/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/googlenav/appwidget/hotpot/widget/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/google/googlenav/appwidget/hotpot/widget/d;->b:I

    :cond_0
    const v1, 0x7f0f01d8

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0f01da

    invoke-static {v4, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->c(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0f01db

    invoke-static {v5, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->c(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0f01dc

    invoke-static {v6, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->c(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0f01dd

    invoke-static {v7, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->c(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0f01de

    invoke-static {v8, v0}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->c(II)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v1, 0x7f0f01da

    iget-object v2, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-interface {p4, v4, v0, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0f01db

    iget-object v2, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-interface {p4, v5, v0, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0f01dc

    iget-object v2, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-interface {p4, v6, v0, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0f01dd

    iget-object v2, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-interface {p4, v7, v0, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f0f01de

    iget-object v2, p3, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->c:Ljava/lang/String;

    invoke-interface {p4, v8, v0, v2}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :cond_1
    const v0, 0x7f0f01d9

    const/16 v1, 0x309

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static b(Landroid/widget/RemoteViews;I)V
    .locals 1

    const v0, 0x7f0f01c6

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-void
.end method

.method private static c(II)I
    .locals 1

    if-lt p1, p0, :cond_0

    const v0, 0x7f0201d5

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201d4

    goto :goto_0
.end method

.method private static c(Landroid/widget/RemoteViews;I)V
    .locals 2

    const v0, 0x7f0f01c9

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0f01c8

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0f01c7

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private static d(Landroid/widget/RemoteViews;I)Z
    .locals 5

    const v4, 0x7f0f01d0

    const v1, 0x7f0f01cf

    const/16 v0, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f01d1

    invoke-static {v3, p1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f01d2

    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f01d3

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f01d4

    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f01d5

    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcom/google/googlenav/appwidget/hotpot/widget/i;->b(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    if-lez p1, :cond_1

    move v0, v3

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
