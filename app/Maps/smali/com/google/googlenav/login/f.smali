.class public abstract Lcom/google/googlenav/login/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/login/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/login/LoginControllerSdk5;

    invoke-direct {v0}, Lcom/google/googlenav/login/LoginControllerSdk5;-><init>()V

    sput-object v0, Lcom/google/googlenav/login/f;->a:Lcom/google/googlenav/login/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/login/f;
    .locals 1

    sget-object v0, Lcom/google/googlenav/login/f;->a:Lcom/google/googlenav/login/f;

    return-object v0
.end method

.method protected static a(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "com.google.googlenav.login.DriveaboutLoginActivitySdk5"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.googlenav.login.AndroidLoginActivitySdk5"

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Landroid/content/Context;Z)V
.end method

.method public abstract a(ZLjava/lang/String;ZLandroid/content/Context;Z)V
.end method

.method protected b(ZLjava/lang/String;ZLandroid/content/Context;Z)Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p5}, Lcom/google/googlenav/login/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v1, "PROMPT_USER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "EXTRA_REFRESHING_AUTH_TOKEN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string v1, "EXTRA_TOKEN_TO_REFRESH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method
