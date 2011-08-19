.class LF/I;
.super Lad/f;


# instance fields
.field final synthetic a:LF/L;


# direct methods
.method constructor <init>(LF/L;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LF/I;->a:LF/L;

    invoke-direct {p0, p2}, Lad/f;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LF/I;->a:LF/L;

    invoke-static {v0}, LF/L;->a(LF/L;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LF/I;->a:LF/L;

    invoke-static {v0}, LF/L;->c(LF/L;)LF/x;

    move-result-object v0

    iget-object v1, p0, LF/I;->a:LF/L;

    invoke-static {v1}, LF/L;->b(LF/L;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, LF/x;->a(Landroid/location/Location;)V

    iget-object v0, p0, LF/I;->a:LF/L;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LF/L;->a(LF/L;Landroid/location/Location;)Landroid/location/Location;

    :cond_0
    iget-object v0, p0, LF/I;->a:LF/L;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LF/L;->a(LF/L;Z)Z

    return-void
.end method
