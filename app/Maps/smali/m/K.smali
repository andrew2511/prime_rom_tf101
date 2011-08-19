.class public Lm/K;
.super Lm/w;


# instance fields
.field private a:Lm/w;

.field private b:Lm/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm/w;Lm/w;)V
    .locals 6

    invoke-virtual {p3}, Lm/w;->c()I

    move-result v0

    invoke-virtual {p3}, Lm/w;->d()LF/w;

    move-result-object v1

    const v2, 0x7f0b0089

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lm/w;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p3}, Lm/w;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lm/w;->b()Lm/R;

    move-result-object v3

    invoke-virtual {p3}, Lm/w;->b()Lm/R;

    move-result-object v4

    invoke-static {v3, v4}, Lm/R;->a(Lm/R;Lm/R;)Lm/R;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lm/w;-><init>(ILF/w;Ljava/lang/CharSequence;Lm/R;)V

    iput-object p2, p0, Lm/K;->a:Lm/w;

    iput-object p3, p0, Lm/K;->b:Lm/w;

    return-void
.end method


# virtual methods
.method public e()Lm/w;
    .locals 1

    iget-object v0, p0, Lm/K;->a:Lm/w;

    return-object v0
.end method

.method public f()Lm/w;
    .locals 1

    iget-object v0, p0, Lm/K;->b:Lm/w;

    return-object v0
.end method
