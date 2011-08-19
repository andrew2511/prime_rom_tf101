.class public Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;
.super Lcom/google/googlenav/login/g;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/accounts/AccountManager;

.field private c:[Landroid/accounts/Account;

.field private d:Landroid/app/Dialog;

.field private volatile e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/login/g;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->e:Z

    return-void
.end method

.method public static a([Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 1

    array-length v0, p0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;)Landroid/accounts/AccountManager;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->b:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public static a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    .locals 8

    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string v1, "com.google"

    const-string v2, "local"

    new-instance v6, Lcom/google/googlenav/login/m;

    invoke-direct {v6, p0, p2, p3, p4}, Lcom/google/googlenav/login/m;-><init>(Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V

    move-object v0, p0

    move-object v4, v3

    move-object v5, p4

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v7

    new-instance v0, Lcom/google/googlenav/login/n;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/login/n;-><init>(Landroid/accounts/Account;Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V

    invoke-direct {v6, v7, v0}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, LT/d;->b()V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/b;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/login/b;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->e:Z

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic b([Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;)[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    return-object v0
.end method

.method private static c([Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 2

    invoke-static {p0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d([Landroid/accounts/Account;)I

    move-result v0

    if-ltz v0, :cond_0

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v0, p0, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d([Landroid/accounts/Account;)I
    .locals 3

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->q()V

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private f()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    const/16 v2, 0x3d9

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aK:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    const v3, 0x7f0201e8

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    const v2, 0x7f0f01f1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    return-object v0
.end method

.method private g()Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    iget-object v5, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    aget-object v5, v5, v0

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v6, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v5, 0x26

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lx/B;

    const-string v2, ""

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    iget-object v2, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030079

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v4, 0x7f0f0004

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->f()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/J;

    iget-object v5, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a:Landroid/app/Activity;

    invoke-direct {v1, v5, v0, v3}, Lcom/google/googlenav/ui/view/android/J;-><init>(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d([Landroid/accounts/Account;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v2
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/google/googlenav/login/p;)V
    .locals 3

    iput-object p1, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a:Landroid/app/Activity;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->b:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    :cond_0
    new-instance v0, LT/d;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/login/o;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/login/o;-><init>(Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;Lcom/google/googlenav/login/p;)V

    invoke-direct {v0, v1, v2}, LT/d;-><init>(LT/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LT/d;->b()V

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a:Landroid/app/Activity;

    const v2, 0x103000d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    sget-boolean v0, Lcom/google/googlenav/login/e;->a:Z

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->d:Landroid/app/Dialog;

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    sub-int v1, p3, v4

    iget-object v2, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->c:[Landroid/accounts/Account;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x50

    const-string v3, "s"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->q()V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->b:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v4, v0, v3}, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    const/16 v0, 0x411

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/login/MultipleAccountsControllerSdk5;->a:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
