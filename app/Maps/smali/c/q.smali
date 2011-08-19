.class public Lc/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lc/q;->a:Z

    const/4 v0, -0x1

    sput v0, Lc/q;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lc/q;->b:I

    return v0
.end method

.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lc/q;->b(I)V

    return-void
.end method

.method public static a(LaU/a;Lh/eY;Li/C;)V
    .locals 1

    sget-boolean v0, Lc/q;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lc/q;->a:Z

    new-instance v0, Lc/n;

    invoke-direct {v0, p0, p2, p1}, Lc/n;-><init>(LaU/a;Li/C;Lh/eY;)V

    invoke-static {v0}, Lc/q;->a(Lo/cf;)V

    :cond_0
    return-void
.end method

.method public static a(Lo/cf;)V
    .locals 2

    const-string v0, "WHATS_NEW_POPUP_VERSION"

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, Lo/as;->a(Ljava/lang/String;ILo/cf;)V

    return-void
.end method

.method private static b(I)V
    .locals 2

    const-string v0, "WHATS_NEW_POPUP_VERSION"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lo/as;->a(Ljava/lang/String;ILo/Z;)V

    return-void
.end method
