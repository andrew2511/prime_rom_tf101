.class final Lo;
.super LX;


# instance fields
.field a:Ln;


# direct methods
.method constructor <init>(LW;)V
    .locals 0

    invoke-direct {p0, p1}, LX;-><init>(LW;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lo;->a:Ln;

    invoke-virtual {v0}, Ln;->i()V

    return-void
.end method
