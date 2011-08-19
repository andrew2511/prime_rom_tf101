.class public Lh/dW;
.super Lh/eR;


# instance fields
.field private final a:Lcom/google/googlenav/bL;

.field private final b:Lcom/google/googlenav/android/BaseMapsActivity;

.field private c:Lcom/google/googlenav/c;

.field private d:Lh/eE;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;Lcom/google/googlenav/bL;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    iput-object p3, p0, Lh/dW;->a:Lcom/google/googlenav/bL;

    iput-object p4, p0, Lh/dW;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    new-instance v0, Lh/am;

    invoke-direct {v0, p0}, Lh/am;-><init>(Lh/dW;)V

    iput-object v0, p0, Lh/dW;->d:Lh/eE;

    return-void
.end method

.method static synthetic a(Lh/dW;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/dW;->a:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method static synthetic a(Lh/dW;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lh/dW;->b(Z)V

    return-void
.end method

.method static synthetic b(Lh/dW;)Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Lh/dW;->c:Lcom/google/googlenav/c;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    const/16 v0, 0x2bc

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/dW;->c:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/dW;->c:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->ag()Lcom/google/googlenav/bH;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bH;->a()V

    if-nez p1, :cond_0

    iget-object v1, p0, Lh/dW;->d:Lh/eE;

    invoke-interface {v1, v0}, Lh/eE;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lh/dW;)V
    .locals 0

    invoke-direct {p0}, Lh/dW;->o()V

    return-void
.end method

.method static synthetic d(Lh/dW;)V
    .locals 0

    invoke-direct {p0}, Lh/dW;->m()V

    return-void
.end method

.method public static h()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, LA/a;->a(I)[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "PHOTO_UPLOAD_LEGAL_INFO_DISMISS"

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method

.method private static j()Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "PHOTO_UPLOAD_LEGAL_INFO_DISMISS"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LA/a;->a([B)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "picasa.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/intl/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lh/dW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/privacy.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :try_start_0
    iget-object v1, p0, Lh/dW;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private n()LI/n;
    .locals 1

    new-instance v0, Lh/ao;

    invoke-direct {v0, p0}, Lh/ao;-><init>(Lh/dW;)V

    return-object v0
.end method

.method private o()V
    .locals 3

    new-instance v0, Lh/an;

    invoke-direct {v0, p0}, Lh/an;-><init>(Lh/dW;)V

    new-instance v1, Lcom/google/googlenav/bi;

    iget-object v2, p0, Lh/dW;->c:Lcom/google/googlenav/c;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/bi;-><init>(Lcom/google/googlenav/c;Lcom/google/googlenav/aL;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lh/dW;->d:Lh/eE;

    const/16 v1, 0x2bb

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lh/eE;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lh/dW;->v()V

    return-void
.end method

.method private p()V
    .locals 6

    const/16 v0, 0x2be

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2bf

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a1

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x334

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lh/dW;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lh/aj;

    invoke-direct {v1, p0}, Lh/aj;-><init>(Lh/dW;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lh/ak;

    invoke-direct {v1, p0}, Lh/ak;-><init>(Lh/dW;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lax/c;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lh/dW;->j:Lx/J;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/dW;->n()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/dW;->j:Lx/J;

    :cond_0
    iget-object v0, p0, Lh/dW;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    invoke-static {}, Lh/dW;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lh/dW;->p()V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/googlenav/c;)V
    .locals 1

    iput-object p1, p0, Lh/dW;->c:Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lh/dW;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh/dW;->v()V

    :cond_0
    invoke-virtual {p0}, Lh/dW;->u()V

    return-void
.end method
