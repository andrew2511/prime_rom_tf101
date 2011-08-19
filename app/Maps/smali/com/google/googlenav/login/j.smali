.class public abstract Lcom/google/googlenav/login/j;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/google/googlenav/login/j;

.field private static final k:Landroid/net/Uri;


# instance fields
.field protected volatile a:Z

.field protected final b:LaU/a;

.field private final d:Lcom/google/googlenav/login/l;

.field private e:Lcom/google/googlenav/login/k;

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private h:Ljava/util/Vector;

.field private i:Ljava/lang/String;

.field private j:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://www.google.com/accounts/TokenAuth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/login/j;->k:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(LaU/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/login/l;

    invoke-direct {v0}, Lcom/google/googlenav/login/l;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/login/j;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/login/j;->h:Ljava/util/Vector;

    const-string v0, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/j;->j:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/googlenav/login/j;->b:LaU/a;

    return-void
.end method

.method public static a(Lcom/google/googlenav/login/j;)V
    .locals 0

    sput-object p0, Lcom/google/googlenav/login/j;->c:Lcom/google/googlenav/login/j;

    return-void
.end method

.method public static k()Lcom/google/googlenav/login/j;
    .locals 1

    sget-object v0, Lcom/google/googlenav/login/j;->c:Lcom/google/googlenav/login/j;

    return-object v0
.end method


# virtual methods
.method protected U_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->o()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/login/j;->j:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "SID"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "LSID"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/login/j;->k:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "source"

    const-string v4, "android-browser"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "auth"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "continue"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->x()V

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->o()V

    return-void
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/googlenav/login/j;->b:LaU/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/login/j;->b:LaU/a;

    new-instance v1, Lcom/google/googlenav/login/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/login/c;-><init>(Lcom/google/googlenav/login/j;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->q()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/googlenav/login/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/j;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/login/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/login/l;->d(Lcom/google/googlenav/login/h;)V

    iget-object v1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    invoke-interface {v1}, Lcom/google/googlenav/login/k;->an_()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/google/googlenav/login/k;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    if-nez p1, :cond_1

    iput-object v2, p0, Lcom/google/googlenav/login/j;->i:Ljava/lang/String;

    const-string v1, "CurrentAccountName"

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Ln/a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/login/j;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/googlenav/login/j;->i:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v2, "CurrentAccountName"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Ln/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LOGIN - setting current account name failed."

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "POST_TO_TWITTER_NAME"

    invoke-static {v0, p1}, Lac/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST_TO_TWITTER_TOKENID"

    invoke-static {v0, p2}, Lac/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V
.end method

.method public b(Lcom/google/googlenav/login/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/j;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lcom/google/googlenav/login/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/login/l;->b(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/login/j;->g:Z

    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public c(Lcom/google/googlenav/login/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/login/l;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method protected abstract c()Z
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method protected abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->v()V

    return-void
.end method

.method public final l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->c()Z

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final n()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->g()V

    return-void
.end method

.method public o()V
    .locals 2

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lak/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/login/j;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v1}, Lcom/google/googlenav/login/l;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/google/googlenav/login/j;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/login/j;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/googlenav/login/j;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/login/j;->g:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/login/j;->a:Z

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->n()V

    iget-object v0, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v1}, Lcom/google/googlenav/login/l;->d()V

    iget-object v1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    invoke-interface {v1}, Lcom/google/googlenav/login/k;->an_()V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v1}, Lcom/google/googlenav/login/l;->e()V

    iget-object v1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    invoke-interface {v1}, Lcom/google/googlenav/login/k;->S_()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v1}, Lcom/google/googlenav/login/l;->f()V

    iget-object v1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    invoke-interface {v1}, Lcom/google/googlenav/login/k;->g()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/login/j;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/googlenav/login/j;->g:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/login/j;->g:Z

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->n()V

    iget-object v1, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v2}, Lcom/google/googlenav/login/l;->c()V

    iget-object v2, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    invoke-interface {v2}, Lcom/google/googlenav/login/k;->ao_()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/google/googlenav/login/j;->a:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_1
    :try_start_5
    iget-object v1, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->o()V

    iget-object v2, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v2}, Lcom/google/googlenav/login/l;->a()V

    iget-object v2, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    invoke-interface {v2}, Lcom/google/googlenav/login/k;->R_()V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :try_start_8
    iget-object v2, p0, Lcom/google/googlenav/login/j;->d:Lcom/google/googlenav/login/l;

    invoke-virtual {v2}, Lcom/google/googlenav/login/l;->c()V

    iget-object v2, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/googlenav/login/j;->e:Lcom/google/googlenav/login/k;

    invoke-interface {v2}, Lcom/google/googlenav/login/k;->ao_()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1
.end method

.method protected u()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/login/j;->h:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/login/j;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/login/a;

    invoke-interface {p0}, Lcom/google/googlenav/login/a;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected v()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/login/j;->h:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/login/j;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/login/a;

    invoke-interface {p0}, Lcom/google/googlenav/login/a;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/j;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "CurrentAccountName"

    invoke-static {v0}, Lac/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/j;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/login/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/login/j;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/login/j;->w()Ljava/lang/String;

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    const-string v0, "POST_TO_TWITTER_TOKENID"

    invoke-static {v0}, Lac/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    const-string v0, "POST_TO_TWITTER_NAME"

    invoke-static {v0}, Lac/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
