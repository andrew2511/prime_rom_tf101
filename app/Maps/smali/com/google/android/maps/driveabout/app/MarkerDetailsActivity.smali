.class public Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/google/android/maps/driveabout/app/bo;

.field private j:LG/y;

.field private k:Lcom/google/android/maps/driveabout/app/cT;

.field private l:Lak/h;

.field private final m:Lcom/google/android/maps/driveabout/app/bc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bc;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bc;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/bc;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/aK;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aK;->h()F

    move-result v1

    const/high16 v2, -0x4080

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    move v2, v1

    move v1, v6

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(FLandroid/text/SpannableStringBuilder;)V

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aK;->g()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0006

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->b()V

    :cond_0
    const v0, 0x7f0b005d

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->finish()V

    return-void
.end method

.method private a(FLandroid/text/SpannableStringBuilder;)V
    .locals 5

    const/16 v4, 0x21

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/high16 v1, 0x3f40

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/16 v1, 0x2a

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ImageSpan;

    const v2, 0x7f020111

    invoke-direct {v1, p0, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x3e80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    const/16 v1, 0x2b

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ImageSpan;

    const v2, 0x7f02010f

    invoke-direct {v1, p0, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ImageSpan;

    const v2, 0x7f020110

    invoke-direct {v1, p0, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->a(I)V

    :cond_0
    const-string v0, "com.google.android.maps.driveabout.LAYER_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.maps.driveabout.SERVER_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LG/y;

    const-string v3, "com.google.android.maps.driveabout.LAT_E6"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.google.android.maps.driveabout.LNG_E6"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, LG/y;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->j:LG/y;

    new-instance v2, Lcom/google/android/maps/driveabout/app/cT;

    new-instance v3, Lcom/google/android/maps/driveabout/app/dX;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/dX;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/google/android/maps/driveabout/app/cT;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/I;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/cT;

    new-instance v0, LaT/g;

    const-string v1, "addRequest"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/cT;

    invoke-direct {v0, v1, v2}, LaT/g;-><init>(Ljava/lang/String;Lak/d;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->l:Lak/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/cT;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;Lcom/google/android/maps/driveabout/app/cT;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Lcom/google/android/maps/driveabout/app/cT;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;Lcom/google/android/maps/driveabout/app/dn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Lcom/google/android/maps/driveabout/app/dn;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/cT;)V
    .locals 6

    const/16 v5, 0x40

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->b()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/cT;->l()Lcom/google/android/maps/driveabout/app/aK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Lcom/google/android/maps/driveabout/app/aK;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->e()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->d:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v1, Lcom/google/android/maps/driveabout/app/A;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/driveabout/app/A;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/aK;)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/dW;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dW;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Lcom/google/android/maps/driveabout/app/dn;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/dn;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->e()V

    :cond_0
    return-void
.end method

.method private static a(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "SuppressDialogsForTest"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/cT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cT;->l()Lcom/google/android/maps/driveabout/app/aK;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->e()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->b()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move-object v0, v7

    :goto_1
    new-instance v3, LF/u;

    new-instance v4, LF/s;

    invoke-direct {v4, v1}, LF/s;-><init>([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->j:LG/y;

    invoke-direct {v3, v4, v1, v2, v0}, LF/u;-><init>(LF/s;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-static {v3, v2, v7}, Lcom/google/android/maps/driveabout/app/bj;->a(LF/u;I[LF/K;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/cT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cT;->l()Lcom/google/android/maps/driveabout/app/aK;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/cT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cT;->l()Lcom/google/android/maps/driveabout/app/aK;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->j:LG/y;

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/maps/driveabout/app/p;->a(Landroid/content/Context;Ljava/lang/String;LG/y;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a()V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->k:Lcom/google/android/maps/driveabout/app/cT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cT;->l()Lcom/google/android/maps/driveabout/app/aK;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aK;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bc;->a(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->setDefaultKeyMode(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0f009e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0f009f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0f00a0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00a1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ec;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ec;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00a2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/eb;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/eb;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00a3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ea;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ea;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00a4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dZ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dZ;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/bo;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dY;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dY;-><init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bo;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->l:Lak/h;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Landroid/content/Intent;)V

    const-string v0, "m"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->i:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->a()V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bc;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bc;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->c()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->m:Lcom/google/android/maps/driveabout/app/bc;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bc;->b()V

    return-void
.end method
