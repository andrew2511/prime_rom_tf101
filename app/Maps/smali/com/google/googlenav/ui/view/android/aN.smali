.class public Lcom/google/googlenav/ui/view/android/aN;
.super Lcom/google/googlenav/ui/view/android/ae;


# static fields
.field private static final f:Ljava/io/File;


# instance fields
.field private final g:Lcom/google/googlenav/android/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x2c3

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/aN;->f:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ae;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aN;->g:Lcom/google/googlenav/android/ad;

    return-void
.end method

.method private n()V
    .locals 7

    const/16 v6, 0x2c2

    const/16 v5, 0xc

    const/4 v4, -0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    sget-object v1, Lcom/google/googlenav/ui/view/android/aN;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/googlenav/ui/view/android/aN;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v1, "gmm"

    const-string v2, ".jpg"

    sget-object v3, Lcom/google/googlenav/ui/view/android/aN;->f:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v2, Lcom/google/googlenav/ui/view/android/bm;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/bm;-><init>(Lcom/google/googlenav/ui/view/android/aN;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aN;->g:Lcom/google/googlenav/android/ad;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aN;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v4, v1}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aN;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v4, v1}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method

.method private o()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aN;->g:Lcom/google/googlenav/android/ad;

    new-instance v2, Lcom/google/googlenav/ui/view/android/by;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aN;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/by;-><init>(Lcom/google/googlenav/ui/view/android/aN;Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/ae;->dismiss()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aN;->n()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aN;->g()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aN;->o()V

    goto :goto_0
.end method
