.class Lt/C;
.super Ljava/lang/Object;

# interfaces
.implements Lt/L;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG/w;[B)LG/u;
    .locals 1

    new-instance v0, Lad/e;

    invoke-direct {v0, p2}, Lad/e;-><init>([B)V

    invoke-static {p1, v0}, LG/G;->a(LG/w;Ljava/io/DataInput;)LG/G;

    move-result-object v0

    return-object v0
.end method
