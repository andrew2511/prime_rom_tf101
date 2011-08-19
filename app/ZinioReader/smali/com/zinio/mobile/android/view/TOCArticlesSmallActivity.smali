.class public Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;
.super Lcom/zinio/mobile/android/view/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/b;


# instance fields
.field private a:Z

.field private c:Lcom/zinio/mobile/android/a/b/l;

.field private d:Ljava/util/List;

.field private e:Landroid/widget/BaseAdapter;

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/zinio/mobile/android/a/a/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->d:Ljava/util/List;

    .line 66
    iput-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->e:Landroid/widget/BaseAdapter;

    .line 72
    iput-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->f:Landroid/view/LayoutInflater;

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 5
    .parameter

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->a:Z

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->I()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->d:Ljava/util/List;

    .line 231
    new-instance v0, Lcom/zinio/mobile/android/view/bq;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->d:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/zinio/mobile/android/view/bq;-><init>(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->e:Landroid/widget/BaseAdapter;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    return-void

    .line 234
    :cond_1
    new-instance v0, Lcom/zinio/mobile/android/view/co;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->e:Landroid/widget/BaseAdapter;

    .line 235
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

    .line 236
    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->e:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/zinio/mobile/android/view/library/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/p;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zinio/mobile/android/view/bq;

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Lcom/zinio/mobile/android/a/a/p;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, p0, p0, v0}, Lcom/zinio/mobile/android/view/bq;-><init>(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v3, v4}, Lcom/zinio/mobile/android/view/library/g;->a(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)Lcom/zinio/mobile/android/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 216
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 223
    return-void
.end method


# virtual methods
.method public final e_()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->b()V

    .line 248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x7

    .line 78
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->requestWindowFeature(I)Z

    .line 81
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 85
    const v1, 0x7f030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 86
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 89
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    .line 92
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->f:Landroid/view/LayoutInflater;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->a:Z

    .line 98
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const-string v1, "only_current_page_articles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->a:Z

    .line 102
    const-string v1, "issue_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "pub_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v2, p0}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Object;)V

    .line 105
    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v2

    new-instance v3, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v3, v0, v1}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    .line 107
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->b()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;)V
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->printStackTrace()V

    .line 116
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/zinio/mobile/android/view/ak;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/ak;-><init>(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 193
    const/4 v0, 0x1

    const v1, 0x7f08001c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020046

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 194
    const/4 v0, 0x2

    const v1, 0x7f08002e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020048

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    const/4 v0, 0x3

    const v1, 0x7f08001e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020047

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 196
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->setIntent(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 203
    :pswitch_0
    sget-object v0, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :pswitch_1
    invoke-static {p0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/view/cf;)V

    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :pswitch_2
    sget-object v0, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 210
    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onRestart()V

    .line 141
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v1, :cond_0

    .line 147
    const-string v1, "only_current_page_articles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->a:Z

    .line 149
    const-string v1, "issue_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "pub_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v2

    new-instance v3, Lcom/zinio/mobile/android/a/a/q;

    invoke-direct {v3, v0, v1}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 155
    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onResume()V

    .line 180
    invoke-static {p0}, Lcom/zinio/mobile/android/App;->a(Landroid/app/Activity;)Z

    .line 181
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->c:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 166
    :cond_0
    return-void
.end method
