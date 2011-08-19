.class Lcom/google/googlenav/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/googlenav/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/googlenav/bg;

    new-instance v1, Lcom/google/googlenav/aS;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/googlenav/aS;-><init>(Lcom/google/googlenav/aU;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/bg;-><init>(Lcom/google/googlenav/aa;)V

    sput-object v0, Lcom/google/googlenav/t;->a:Lcom/google/googlenav/bg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/googlenav/bg;
    .locals 1

    sget-object v0, Lcom/google/googlenav/t;->a:Lcom/google/googlenav/bg;

    return-object v0
.end method
