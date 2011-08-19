.class public final Li/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Li/i;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-boolean v0, Li/i;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Li/i;->a:Z

    const-string v0, "w"

    const-string v1, "d"

    invoke-static {v0, v1}, Li/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x5a

    invoke-static {v0, p0, p1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "c"

    const-string v1, "y"

    invoke-static {v0, v1}, Li/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "c"

    const-string v1, "n"

    invoke-static {v0, v1}, Li/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    const-string v0, "w"

    const-string v1, "s"

    invoke-static {v0, v1}, Li/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 2

    const-string v0, "wi"

    const-string v1, "s"

    invoke-static {v0, v1}, Li/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 2

    const-string v0, "wi"

    const-string v1, "d"

    invoke-static {v0, v1}, Li/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()V
    .locals 2

    const-string v0, "wi"

    const-string v1, "c"

    invoke-static {v0, v1}, Li/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Li/i;->a:Z

    return-void
.end method
