.class Lcom/google/googlenav/appwidget/hotpot/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ar;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/appwidget/hotpot/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;Z)V
    .locals 5

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->e()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/appwidget/hotpot/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "hotpot_rated_placemark"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    const-string v3, "placemark"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "placemark_cid"

    invoke-virtual {p1}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "placemark_is_new"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/d;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
