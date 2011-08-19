.class Lcom/google/googlenav/q;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/googlenav/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/googlenav/ag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ag;-><init>(Lcom/google/googlenav/bb;)V

    sput-object v0, Lcom/google/googlenav/q;->a:Lcom/google/googlenav/ag;

    sget-object v0, Lcom/google/googlenav/q;->a:Lcom/google/googlenav/ag;

    invoke-static {v0}, Lac/i;->a(Lac/h;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
