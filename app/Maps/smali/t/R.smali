.class Lt/R;
.super Lad/g;


# instance fields
.field final synthetic b:Lt/ai;


# direct methods
.method constructor <init>(Lt/ai;I)V
    .locals 0

    iput-object p1, p0, Lt/R;->b:Lt/ai;

    invoke-direct {p0, p2}, Lad/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(LG/w;Lt/q;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lt/q;->a(ILG/u;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LG/w;

    check-cast p2, Lt/q;

    invoke-virtual {p0, p1, p2}, Lt/R;->a(LG/w;Lt/q;)V

    return-void
.end method
