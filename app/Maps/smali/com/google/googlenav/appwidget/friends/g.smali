.class public final Lcom/google/googlenav/appwidget/friends/g;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field private static final b:[[I


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/appwidget/friends/g;->b:[[I

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->b:[[I

    array-length v0, v0

    sput v0, Lcom/google/googlenav/appwidget/friends/g;->a:I

    return-void

    :array_0
    .array-data 0x4
        0x70t 0x1t 0xft 0x7ft
        0x71t 0x1t 0xft 0x7ft
        0x72t 0x1t 0xft 0x7ft
        0x73t 0x1t 0xft 0x7ft
        0x75t 0x1t 0xft 0x7ft
        0x74t 0x1t 0xft 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x76t 0x1t 0xft 0x7ft
        0x77t 0x1t 0xft 0x7ft
        0x78t 0x1t 0xft 0x7ft
        0x79t 0x1t 0xft 0x7ft
        0x7bt 0x1t 0xft 0x7ft
        0x7at 0x1t 0xft 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x7ct 0x1t 0xft 0x7ft
        0x7dt 0x1t 0xft 0x7ft
        0x7et 0x1t 0xft 0x7ft
        0x7ft 0x1t 0xft 0x7ft
        0x81t 0x1t 0xft 0x7ft
        0x80t 0x1t 0xft 0x7ft
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lo/U;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/friends/location"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lo/aH;)Ljava/util/ArrayList;
    .locals 7

    const/4 v3, 0x0

    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->b:[[I

    array-length v0, v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lo/aH;->i()Lac/s;

    move-result-object v1

    invoke-virtual {v1}, Lac/s;->b()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Lac/s;->a(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lo/aH;->a(I)Lo/U;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/appwidget/friends/g;->c(Lo/U;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v6, Lcom/google/googlenav/appwidget/friends/g;->b:[[I

    array-length v6, v6

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/appwidget/friends/g;->b:[[I

    array-length v2, v2

    :goto_1
    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 5

    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/friends/g;->b(Lo/U;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_SIGN_IN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_MANUAL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x7f0f0184

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0f0185

    const v1, 0x7f020190

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f0186

    const/16 v1, 0x205

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0f0188

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f0187

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f018c

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f018b

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f018a

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/g;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->b:[[I

    array-length v6, v1

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_2

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->c(Lcom/google/googlenav/appwidget/friends/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v4, v8

    :goto_1
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->d(Lcom/google/googlenav/appwidget/friends/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v5, v8

    :goto_2
    sget-object v0, Lcom/google/googlenav/appwidget/friends/g;->b:[[I

    aget-object v2, v0, v7

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->b(Lcom/google/googlenav/appwidget/friends/a;)Lo/U;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/appwidget/friends/g;->a(Landroid/widget/RemoteViews;[ILo/U;Lo/U;Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->c(Lcom/google/googlenav/appwidget/friends/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/U;

    move-object v4, v0

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->d(Lcom/google/googlenav/appwidget/friends/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v5, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;Z)V
    .locals 7

    const/4 v6, 0x1

    const v2, 0x7f0f0189

    const v5, 0x7f0f0188

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->b(Lcom/google/googlenav/appwidget/friends/a;)Lo/U;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->b(Lcom/google/googlenav/appwidget/friends/a;)Lo/U;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/g;->d(Lo/U;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0185

    const v1, 0x7f02018b

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f0186

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->b(Lcom/google/googlenav/appwidget/friends/a;)Lo/U;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Lo/U;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->b(Lcom/google/googlenav/appwidget/friends/a;)Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02018d

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->b(Lcom/google/googlenav/appwidget/friends/a;)Lo/U;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/appwidget/friends/g;->a(Lo/U;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0f0184

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/googlenav/android/W;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "source"

    const-string v2, "cw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f0187

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    const v0, 0x7f0f018c

    if-eqz p3, :cond_3

    move v1, v4

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f018b

    if-eqz p3, :cond_4

    move v1, v3

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f018a

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/friends/g;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const v0, 0x7f02018c

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0185

    const v1, 0x7f020190

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0f0186

    const/16 v1, 0x207

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f02018c

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0f0187

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_3
.end method

.method private a(Landroid/widget/RemoteViews;[ILo/U;Lo/U;Landroid/graphics/Bitmap;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    aget v0, p2, v7

    aget v1, p2, v8

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    aget v4, p2, v6

    const/4 v5, 0x5

    aget v5, p2, v5

    if-nez p4, :cond_1

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-nez p5, :cond_2

    const v6, 0x7f02000c

    invoke-virtual {p1, v1, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    if-nez p3, :cond_3

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p4}, Lo/U;->I()Lf/h;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p4}, Lo/U;->I()Lf/h;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/google/googlenav/ui/y;->a(Lf/h;Lf/h;)I

    move-result v1

    invoke-static {v1, v7}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p4}, Lo/U;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p4, v8, v8}, Lo/U;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p4}, Lo/U;->G()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_5
    invoke-virtual {p4}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/google/googlenav/appwidget/friends/g;->a(Lo/U;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    invoke-static {v2, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lo/U;->d()Lf/h;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lo/U;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5

    :cond_6
    move-object v1, v9

    goto :goto_3
.end method

.method private b(Lo/U;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/friends/profile"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/friends/g;->c(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/appwidget/friends/g;->d(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;Z)V

    return-void
.end method

.method private c(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->e(Lcom/google/googlenav/appwidget/friends/a;)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/16 v0, 0x206

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/googlenav/appwidget/friends/a;->e(Lcom/google/googlenav/appwidget/friends/a;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v1, 0x7f0f0183

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private static c(Lo/U;)Z
    .locals 1

    invoke-virtual {p0}, Lo/U;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/google/googlenav/appwidget/friends/g;->d(Lo/U;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/appwidget/friends/a;->c()Lo/U;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/appwidget/friends/a;->c()Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->u()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v1, 0x7f0f0182

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private static d(Lo/U;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/U;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lo/U;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v2}, Lo/U;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/google/googlenav/appwidget/friends/a;Z)Landroid/widget/RemoteViews;
    .locals 3

    invoke-static {p1}, Lcom/google/googlenav/appwidget/friends/a;->a(Lcom/google/googlenav/appwidget/friends/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030057

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/appwidget/friends/g;->a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;Z)V

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/appwidget/friends/g;->a(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/appwidget/friends/g;->b(Landroid/widget/RemoteViews;Lcom/google/googlenav/appwidget/friends/a;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03005a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/friends/g;->a(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method
