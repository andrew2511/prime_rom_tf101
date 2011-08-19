.class Lcom/google/googlenav/as;
.super Ljava/lang/Object;


# static fields
.field private static a:LT/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LT/c;

    new-instance v1, LaJ/a;

    new-instance v2, LaJ/d;

    invoke-direct {v2}, LaJ/d;-><init>()V

    invoke-direct {v1, v2}, LaJ/a;-><init>(LaJ/c;)V

    invoke-direct {v0, v1}, LT/c;-><init>(LaJ/c;)V

    sput-object v0, Lcom/google/googlenav/as;->a:LT/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()LT/c;
    .locals 1

    sget-object v0, Lcom/google/googlenav/as;->a:LT/c;

    return-object v0
.end method
