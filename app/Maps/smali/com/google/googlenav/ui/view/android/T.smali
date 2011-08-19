.class public Lcom/google/googlenav/ui/view/android/T;
.super Lcom/google/googlenav/ui/view/android/ae;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private final g:Lcom/google/googlenav/android/ad;

.field private final h:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmpGmmPhoto.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/view/android/T;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ae;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->g:Lcom/google/googlenav/android/ad;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->g:Lcom/google/googlenav/android/ad;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/googlenav/ui/view/android/d;

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/d;-><init>(Lcom/google/googlenav/ui/view/android/T;Lcom/google/googlenav/ui/view/android/C;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/ad;->a(ILcom/google/googlenav/android/M;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->g:Lcom/google/googlenav/android/ad;

    const/4 v1, 0x2

    new-instance v2, Lcom/google/googlenav/ui/view/android/bh;

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/view/android/T;Lcom/google/googlenav/ui/view/android/C;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/ad;->a(ILcom/google/googlenav/android/M;)V

    invoke-virtual {p1}, Lcom/google/googlenav/android/BaseMapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->h:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/T;)Lcom/google/googlenav/android/ad;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->g:Lcom/google/googlenav/android/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/T;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->h:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/T;->f:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/T;->n()Lx/L;

    move-result-object v1

    iget v1, v1, Lx/L;->a:I

    if-nez v1, :cond_0

    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/google/googlenav/ui/view/android/T;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/T;->n()Lx/L;

    move-result-object v2

    iget v2, v2, Lx/L;->a:I

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/googlenav/ui/view/android/d;

    invoke-direct {v2, p0, v4}, Lcom/google/googlenav/ui/view/android/d;-><init>(Lcom/google/googlenav/ui/view/android/T;Lcom/google/googlenav/ui/view/android/C;)V

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V

    return-void

    :cond_1
    new-instance v2, Lcom/google/googlenav/ui/view/android/bh;

    invoke-direct {v2, p0, v4}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/view/android/T;Lcom/google/googlenav/ui/view/android/C;)V

    goto :goto_0
.end method

.method private r()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/T;->n()Lx/L;

    move-result-object v0

    iget v0, v0, Lx/L;->a:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "outputX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectX"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->g:Lcom/google/googlenav/android/ad;

    new-instance v2, Lcom/google/googlenav/ui/view/android/bh;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/view/android/T;Lcom/google/googlenav/ui/view/android/C;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->g:Lcom/google/googlenav/android/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/ad;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->g:Lcom/google/googlenav/android/ad;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/ad;->a(I)V

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/ae;->dismiss()V

    return-void
.end method

.method protected n()Lx/L;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/T;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object p0

    check-cast p0, Lx/L;

    return-object p0
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

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/T;->q()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/T;->g()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/T;->r()V

    goto :goto_0
.end method
