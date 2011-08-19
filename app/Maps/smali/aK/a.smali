.class LaK/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/t;


# instance fields
.field final synthetic a:LaK/j;


# direct methods
.method constructor <init>(LaK/j;)V
    .locals 0

    iput-object p1, p0, LaK/a;->a:LaK/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG/Q;I)V
    .locals 3

    new-instance v0, Lf/h;

    invoke-virtual {p1}, LG/Q;->a()I

    move-result v1

    invoke-virtual {p1}, LG/Q;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-static {v0, p2, v1}, LH/a;->a(Lf/h;ILT/c;)V

    return-void
.end method
