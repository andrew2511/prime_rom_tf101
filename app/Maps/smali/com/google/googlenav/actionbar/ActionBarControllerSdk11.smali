.class public Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;
.super Lcom/google/googlenav/actionbar/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/actionbar/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)I
    .locals 1

    invoke-virtual {p1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    const/16 v2, 0x136

    const/4 v3, -0x2

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SearchView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x258

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aV;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SearchView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/a;Lcom/google/googlenav/ui/aT;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aV;

    invoke-direct {v1, v0, p2}, Lcom/google/googlenav/ui/view/android/aV;-><init>(Landroid/widget/SearchView;Lcom/google/googlenav/ui/aT;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/googlenav/actionbar/b;

    invoke-direct {v1, p0, p2}, Lcom/google/googlenav/actionbar/b;-><init>(Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;Lcom/google/googlenav/ui/aT;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method public b(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->invalidateOptionsMenu()V

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SearchView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->requestFocus()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
