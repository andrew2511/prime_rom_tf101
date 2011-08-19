.class LX/a;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:LX/d;


# direct methods
.method private constructor <init>(LX/d;)V
    .locals 0

    iput-object p1, p0, LX/a;->a:LX/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LX/d;LX/f;)V
    .locals 0

    invoke-direct {p0, p1}, LX/a;-><init>(LX/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)LX/e;
    .locals 1

    iget-object v0, p0, LX/a;->a:LX/d;

    invoke-static {v0}, LX/d;->a(LX/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LX/c;->a(Landroid/content/Context;)LX/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(LX/e;)V
    .locals 3

    iget-object v0, p0, LX/a;->a:LX/d;

    iget-object v1, p0, LX/a;->a:LX/d;

    invoke-static {v1}, LX/d;->b(LX/d;)LX/b;

    move-result-object v1

    invoke-static {v0, v1}, LX/d;->a(LX/d;LX/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LX/a;->a:LX/d;

    invoke-static {v0}, LX/d;->c(LX/d;)Lao/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lao/d;->a(LX/e;)V

    :cond_0
    iget-object v0, p0, LX/a;->a:LX/d;

    invoke-static {v0, p1}, LX/d;->a(LX/d;LX/e;)LX/e;

    iget-object v0, p0, LX/a;->a:LX/d;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, LX/d;->a(LX/d;J)J

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LX/a;->a([Ljava/lang/Void;)LX/e;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LX/e;

    invoke-virtual {p0, p1}, LX/a;->a(LX/e;)V

    return-void
.end method
