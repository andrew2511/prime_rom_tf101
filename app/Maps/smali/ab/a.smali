.class public Lab/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Law/e;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "google.businessratings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "intent-source"

    const-string v2, "rw"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "insitu"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v2}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    const-string v2, "placemark-proto"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Ljava/lang/String;)V
    .locals 1

    const-string v0, "google.businessdetails"

    invoke-static {p0, p1, p2, p3, v0}, Lab/a;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p3}, Lcom/google/googlenav/appwidget/hotpot/persistence/i;->a(Ljava/lang/String;)Lcom/google/googlenav/appwidget/hotpot/persistence/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a()Law/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0, p3, p4}, Lab/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->g()Lcom/google/googlenav/appwidget/hotpot/widget/d;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->g()Lcom/google/googlenav/appwidget/hotpot/widget/d;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/appwidget/hotpot/widget/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->g()Lcom/google/googlenav/appwidget/hotpot/widget/d;

    move-result-object v1

    iget v1, v1, Lcom/google/googlenav/appwidget/hotpot/widget/d;->b:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->e(I)V

    invoke-virtual {v0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lab/a;->a(Landroid/content/Context;Law/e;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/hotpot/persistence/b;->a()Law/e;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lab/a;->a(Landroid/content/Context;Law/e;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "google.businessratings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "intent-source"

    const-string v2, "rw"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "insitu"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "placemark-url"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Ljava/lang/String;)V
    .locals 1

    const-string v0, "google.businessratings"

    invoke-static {p0, p1, p2, p3, v0}, Lab/a;->a(Landroid/content/Context;Lcom/google/googlenav/appwidget/hotpot/persistence/i;Lcom/google/googlenav/appwidget/hotpot/widget/h;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
