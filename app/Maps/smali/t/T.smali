.class Lt/T;
.super Ljava/lang/Object;

# interfaces
.implements Lt/A;


# instance fields
.field final synthetic a:Lt/ai;


# direct methods
.method constructor <init>(Lt/ai;)V
    .locals 0

    iput-object p1, p0, Lt/T;->a:Lt/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG/w;ILG/u;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lt/T;->a:Lt/ai;

    invoke-static {v0, p1}, Lt/ai;->a(Lt/ai;LG/w;)V

    :cond_0
    return-void
.end method
