.class public final Lae/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lae/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Lae/i;->a(Ljava/lang/String;)Lae/i;

    move-result-object v0

    sput-object v0, Lae/g;->a:Lae/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lae/f;Lae/f;)Lae/f;
    .locals 3

    new-instance v1, Lae/l;

    invoke-static {p0}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lae/f;

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/f;

    invoke-static {p0, v0}, Lae/g;->b(Lae/f;Lae/f;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lae/l;-><init>(Ljava/util/List;Lae/e;)V

    return-object v1
.end method

.method static synthetic a()Lae/i;
    .locals 1

    sget-object v0, Lae/g;->a:Lae/i;

    return-object v0
.end method

.method private static b(Lae/f;Lae/f;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lae/f;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
