.class public Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/database/Cursor;

.field private g:Landroid/database/ContentObserver;

.field private h:Lcom/google/googlenav/appwidget/hotpot/widget/g;

.field private i:Lcom/google/googlenav/appwidget/hotpot/widget/h;

.field private j:Lcom/google/googlenav/appwidget/hotpot/HotpotService;

.field private k:Landroid/app/Dialog;

.field private l:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()Landroid/content/ServiceConnection;
    .locals 1

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/activity/p;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/p;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->l:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->f:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Lcom/google/googlenav/appwidget/hotpot/HotpotService;)Lcom/google/googlenav/appwidget/hotpot/HotpotService;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->j:Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Lcom/google/googlenav/appwidget/hotpot/widget/h;)Lcom/google/googlenav/appwidget/hotpot/widget/h;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->i:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->i:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->e()Lab/d;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a:Landroid/view/View;

    const v1, 0x7f0f01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a:Landroid/view/View;

    const v2, 0x7f0f01ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b:Landroid/view/View;

    const v3, 0x7f0f01c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a:Landroid/view/View;

    const v5, 0x7f0f01b9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v5, 0x1cc

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x1c8

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    const v5, 0x7f0201c5

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a:Landroid/view/View;

    const v5, 0x7f0f01b3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/google/googlenav/appwidget/hotpot/activity/o;

    invoke-direct {v5, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/o;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    const/16 v3, 0x1c9

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->i:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1ca

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const v5, 0x7f0201c1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0x1ce

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lab/d;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lab/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x1cd

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/activity/n;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/n;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/appwidget/hotpot/persistence/ListingContentProvider;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->f:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->f:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->startManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/appwidget/hotpot/activity/a;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->f:Landroid/database/Cursor;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d:Landroid/widget/ListView;

    if-ne v1, p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->e:Landroid/view/View;

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->i:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->h:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->a(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/HotpotService;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->j:Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Lcom/google/googlenav/appwidget/hotpot/widget/g;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->h:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->h:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->k:Landroid/app/Dialog;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030066

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c:Landroid/view/View;

    const v2, 0x7f030064

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a:Landroid/view/View;

    const v2, 0x7f030067

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b:Landroid/view/View;

    invoke-static {}, Lcom/google/googlenav/android/Z;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c:Landroid/view/View;

    const v2, 0x7f0f01c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c:Landroid/view/View;

    const v2, 0x7f0f01c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/google/googlenav/appwidget/hotpot/activity/m;

    invoke-direct {v0, p0}, Lcom/google/googlenav/appwidget/hotpot/activity/m;-><init>(Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->k:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->k:Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->e:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x55

    const-string v1, "rps"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->i:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a(ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->j:Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    const/4 v1, 0x3

    const-string v2, "query"

    const-string v3, "query"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/appwidget/hotpot/v;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/HotpotService;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->i:Lcom/google/googlenav/appwidget/hotpot/widget/h;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/h;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->d:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/16 v0, 0x55

    const-string v1, "rp"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->showDialog(I)V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->a()Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->l:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/hotpot/HotpotService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->l:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->g:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->h:Lcom/google/googlenav/appwidget/hotpot/widget/g;

    invoke-interface {v0}, Lcom/google/googlenav/appwidget/hotpot/widget/g;->c()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->l:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->l:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/google/googlenav/appwidget/hotpot/activity/ResolvePlaceActivity;->l:Landroid/content/ServiceConnection;

    :cond_1
    return-void
.end method
