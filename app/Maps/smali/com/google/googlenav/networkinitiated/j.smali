.class public Lcom/google/googlenav/networkinitiated/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/networkinitiated/c;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregistered"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/networkinitiated/b;

    const/4 v3, 0x4

    new-instance v4, Lcom/google/googlenav/networkinitiated/l;

    iget-object v5, p0, Lcom/google/googlenav/networkinitiated/j;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/googlenav/networkinitiated/l;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/google/googlenav/networkinitiated/b;-><init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/a;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    :cond_1
    return-void
.end method
