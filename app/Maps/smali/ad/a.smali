.class public Lad/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lad/s;
    .locals 3

    new-instance v0, Lad/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lad/s;-><init>(Landroid/content/Context;Ljava/lang/String;ZLad/q;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lad/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lad/s;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lad/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lad/s;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lad/s;->a(Ljava/lang/String;Ljava/lang/Object;)Lad/s;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lad/s;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lad/s;
    .locals 3

    new-instance v0, Lad/s;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lad/s;-><init>(Landroid/content/Context;Ljava/lang/String;ZLad/q;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lad/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;)Lad/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lad/s;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
