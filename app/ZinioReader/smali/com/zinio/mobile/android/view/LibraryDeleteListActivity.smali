.class public Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;
.super Lcom/zinio/mobile/android/view/BaseListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/b/aa;
.implements Lcom/zinio/mobile/android/a/b/ab;


# static fields
.field private static f:Ljava/lang/String;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field private c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private g:Lcom/zinio/mobile/android/a/b/l;

.field private h:Lcom/zinio/mobile/android/a/b/s;

.field private i:Ljava/util/ArrayList;

.field private final j:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "date"

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->d:Z

    .line 59
    new-instance v0, Lcom/zinio/mobile/android/view/cc;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/cc;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->e:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/zinio/mobile/android/view/ca;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ca;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->j:Landroid/view/View$OnClickListener;

    .line 424
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;)Lcom/zinio/mobile/android/a/b/l;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->g:Lcom/zinio/mobile/android/a/b/l;

    return-object v0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->g:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/b/ab;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zinio/mobile/android/view/cb;

    invoke-direct {v1, p0, p1}, Lcom/zinio/mobile/android/view/cb;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private c()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const-wide/high16 v7, 0x41d0

    .line 211
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    long-to-double v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v5, v0

    mul-long/2addr v3, v5

    long-to-double v3, v3

    div-double/2addr v1, v7

    div-double/2addr v3, v7

    sub-double v5, v3, v1

    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080017

    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    cmpl-double v0, v3, v0

    if-eqz v0, :cond_2

    div-double v0, v5, v3

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    :goto_0
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 212
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->h:Lcom/zinio/mobile/android/a/b/s;

    if-nez v0, :cond_0

    .line 225
    :goto_1
    return-void

    .line 216
    :cond_0
    sget-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->f:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->h:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->b:Lcom/zinio/mobile/android/a/b/v;

    invoke-virtual {v0, v1, v11}, Lcom/zinio/mobile/android/a/b/s;->b(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->i:Ljava/util/ArrayList;

    .line 224
    :goto_2
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->f()V

    goto :goto_1

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->h:Lcom/zinio/mobile/android/a/b/s;

    sget-object v1, Lcom/zinio/mobile/android/a/b/v;->b:Lcom/zinio/mobile/android/a/b/v;

    invoke-virtual {v0, v1, v11}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/b/v;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->i:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    move v1, v10

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zinio/mobile/android/view/library/g;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Lcom/zinio/mobile/android/view/library/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/g;->a()V

    .line 238
    :cond_0
    new-instance v1, Lcom/zinio/mobile/android/view/library/g;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/library/g;-><init>(Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/b/z;

    .line 244
    if-eqz v0, :cond_1

    .line 245
    new-instance v3, Lcom/zinio/mobile/android/view/cw;

    iget-object v4, v0, Lcom/zinio/mobile/android/a/b/z;->b:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4}, Lcom/zinio/mobile/android/view/cw;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 248
    iget-object v4, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->g:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v4, v3}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Object;)V

    .line 249
    iget-object v0, v0, Lcom/zinio/mobile/android/a/b/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/zinio/mobile/android/view/library/g;->a(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/b/s;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->h:Lcom/zinio/mobile/android/a/b/s;

    .line 436
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c()V

    .line 437
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->dismissDialog(I)V

    .line 449
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->g:Lcom/zinio/mobile/android/a/b/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/b/ab;)V

    .line 450
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->finish()V

    .line 451
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 457
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 163
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x7

    .line 100
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->requestWindowFeature(I)Z

    .line 102
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 106
    const v1, 0x7f030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 110
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    const-string v1, "sort_by_parameter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->f:Ljava/lang/String;

    .line 117
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->a:Landroid/view/LayoutInflater;

    .line 119
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->g:Lcom/zinio/mobile/android/a/b/l;

    .line 120
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->g:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->h:Lcom/zinio/mobile/android/a/b/s;

    .line 121
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c()V

    .line 123
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 201
    :pswitch_0
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->g:Lcom/zinio/mobile/android/a/b/l;

    const-class v1, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 193
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0c004d

    const v1, 0x7f0c0044

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 170
    sget-object v0, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 175
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onResume()V

    .line 134
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->d:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->d:Z

    .line 139
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b()V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->c:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseListActivity;->onStop()V

    .line 150
    iget-object v0, p0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->h:Lcom/zinio/mobile/android/a/b/s;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/s;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/a/a/j;->a(Z)V

    goto :goto_0

    .line 156
    :cond_0
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method
