.class public Lcom/zinio/mobile/android/view/TOCArticlesActivity;
.super Lcom/zinio/mobile/android/view/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/b;


# instance fields
.field private a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private c:Z

.field private d:Lcom/zinio/mobile/android/a/b/l;

.field private e:Ljava/util/List;

.field private f:Landroid/widget/BaseAdapter;

.field private g:Landroid/view/LayoutInflater;

.field private h:Lcom/zinio/mobile/android/a/a/j;

.field private i:Landroid/os/Handler;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->e:Ljava/util/List;

    .line 61
    iput-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->f:Landroid/widget/BaseAdapter;

    .line 67
    iput-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->g:Landroid/view/LayoutInflater;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->i:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/zinio/mobile/android/view/at;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/at;-><init>(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->j:Landroid/view/View$OnClickListener;

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    return-object v0
.end method

.method private a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 5
    .parameter

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c:Z

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->I()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->e:Ljava/util/List;

    .line 242
    new-instance v0, Lcom/zinio/mobile/android/view/bt;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->e:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/zinio/mobile/android/view/bt;-><init>(Lcom/zinio/mobile/android/view/TOCArticlesActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->f:Landroid/widget/BaseAdapter;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    return-void

    .line 245
    :cond_1
    new-instance v0, Lcom/zinio/mobile/android/view/co;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->f:Landroid/widget/BaseAdapter;

    .line 246
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/p;

    .line 247
    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->f:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/zinio/mobile/android/view/library/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/p;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zinio/mobile/android/view/bt;

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/p;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, p0, p0, v0}, Lcom/zinio/mobile/android/view/bt;-><init>(Lcom/zinio/mobile/android/view/TOCArticlesActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v3, v4}, Lcom/zinio/mobile/android/view/library/g;->a(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 227
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 234
    return-void
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method static synthetic d(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c:Z

    return v0
.end method


# virtual methods
.method public final e_()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->b()V

    .line 259
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x7

    .line 74
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->requestWindowFeature(I)Z

    .line 77
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 81
    const v1, 0x7f030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 82
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 85
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    .line 87
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->g:Landroid/view/LayoutInflater;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c:Z

    .line 96
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const-string v1, "only_current_page_articles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c:Z

    .line 100
    const-string v1, "issue_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "pub_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v2, p0}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v2

    new-instance v3, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v3, v0, v1}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    .line 105
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->b()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->h:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->printStackTrace()V

    .line 113
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/zinio/mobile/android/view/ar;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/ar;-><init>(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onDestroy()V

    .line 209
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 212
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 365
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->setIntent(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    .line 176
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onRestart()V

    .line 178
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "only_current_page_articles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c:Z

    .line 186
    const-string v1, "issue_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v2, "pub_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v2

    new-instance v3, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v3, v0, v1}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onResume()V

    .line 217
    invoke-static {p0}, Lcom/zinio/mobile/android/App;->a(Landroid/app/Activity;)Z

    .line 218
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onPause()V

    .line 200
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    .line 201
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 204
    :cond_0
    return-void
.end method
