.class public Lcom/google/googlenav/ui/view/android/aV;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;


# instance fields
.field private a:Landroid/widget/SearchView;

.field private b:Lcom/google/googlenav/ui/aT;

.field private c:Landroid/app/SearchManager;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/SearchView;Lcom/google/googlenav/ui/aT;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aV;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {p1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->c:Landroid/app/SearchManager;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aV;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    const/16 v1, 0x3ab

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aV;->c:Landroid/app/SearchManager;

    invoke-virtual {v2, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Ljava/lang/String;

    new-instance v0, Lcom/google/googlenav/V;

    invoke-direct {v0}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(I)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v0

    const-string v1, "22"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->g(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p1}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aV;->b:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/bs;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    const/16 v3, 0x136

    const/4 v4, -0x2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x258

    invoke-static {v2}, Lcom/google/googlenav/ui/android/S;->d(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/S;->d(I)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aV;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aV;->a:Landroid/widget/SearchView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/S;->d(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aV;->d:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aV;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSuggestionClick(I)Z
    .locals 2

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {v0}, LJ/h;->i()LJ/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, LJ/a;->c()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, LJ/a;->a(I)LJ/o;

    move-result-object v0

    invoke-virtual {v0}, LJ/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aV;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
