.class public Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field static a:Landroid/graphics/Bitmap;

.field static b:Landroid/graphics/Bitmap;

.field static c:Landroid/graphics/drawable/Drawable;

.field static d:Landroid/graphics/drawable/Drawable;

.field static e:F


# instance fields
.field final f:Landroid/graphics/BitmapFactory$Options;

.field g:Lcom/zinio/mobile/android/a/a/j;

.field h:Landroid/widget/GridView;

.field i:I

.field j:Z

.field k:Lcom/zinio/mobile/android/view/bu;

.field l:Z

.field private n:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/zinio/mobile/android/view/ab;

.field private u:Landroid/os/Handler;

.field private v:Landroid/view/LayoutInflater;

.field private w:Lcom/zinio/mobile/android/a/a/v;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->o:I

    .line 72
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->p:I

    .line 73
    const/16 v0, 0x28

    iput v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->q:I

    .line 85
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->i:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->j:Z

    .line 101
    new-instance v0, Lcom/zinio/mobile/android/view/bu;

    invoke-direct {v0}, Lcom/zinio/mobile/android/view/bu;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->k:Lcom/zinio/mobile/android/view/bu;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->u:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/zinio/mobile/android/view/cv;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/cv;-><init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->w:Lcom/zinio/mobile/android/a/a/v;

    .line 207
    new-instance v0, Lcom/zinio/mobile/android/view/cu;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/cu;-><init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->x:Landroid/view/View$OnClickListener;

    .line 652
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->n:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->p:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 581
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 584
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 585
    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 586
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 591
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 595
    return-void
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->v:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 628
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 630
    add-int/lit8 v0, p1, 0x1

    .line 635
    :goto_0
    return v0

    .line 632
    :cond_0
    const/4 v0, 0x1

    sub-int v0, p1, v0

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method final a(Z)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 687
    iput-boolean v9, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->l:Z

    .line 689
    iget-object v3, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    .line 690
    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 693
    sub-int/2addr v1, v10

    move v4, v1

    :goto_0
    if-ltz v4, :cond_7

    .line 694
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 695
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zinio/mobile/android/view/cy;

    .line 697
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/cy;->b()I

    move-result v2

    .line 698
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a(I)I

    move-result v5

    .line 700
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/cy;->c()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_1

    .line 701
    :cond_0
    iget-object v6, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v5}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v7

    iget-object v8, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v6, v7, v8}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 704
    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    move v2, v10

    .line 705
    :goto_1
    if-eqz v2, :cond_3

    sget-object v7, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a:Landroid/graphics/Bitmap;

    .line 706
    :goto_2
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 707
    new-instance v5, Lcom/zinio/mobile/android/view/c;

    invoke-direct {v5, v7, v6, v2}, Lcom/zinio/mobile/android/view/c;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 708
    invoke-virtual {v1, v9}, Lcom/zinio/mobile/android/view/cy;->a(Z)V

    move-object v2, v5

    .line 717
    :goto_3
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/cy;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 718
    instance-of v1, v2, Lcom/zinio/mobile/android/view/c;

    if-eqz v1, :cond_1

    .line 719
    move-object v0, v2

    check-cast v0, Lcom/zinio/mobile/android/view/c;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/c;->a()V

    .line 693
    :cond_1
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_0

    :cond_2
    move v2, v9

    .line 704
    goto :goto_1

    .line 705
    :cond_3
    sget-object v7, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 710
    :cond_4
    if-eqz v5, :cond_5

    .line 711
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v6

    iget-object v7, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v5}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/zinio/mobile/android/a/b/l;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 713
    invoke-virtual {v1, v10}, Lcom/zinio/mobile/android/view/cy;->a(Z)V

    .line 715
    :cond_5
    if-eqz v2, :cond_6

    sget-object v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 724
    :cond_7
    invoke-virtual {v3}, Landroid/widget/GridView;->invalidate()V

    .line 725
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a(Z)V

    .line 287
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->t:Lcom/zinio/mobile/android/view/ab;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ab;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 288
    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->t:Lcom/zinio/mobile/android/view/ab;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/ab;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 289
    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 292
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->t:Lcom/zinio/mobile/android/view/ab;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ab;->c()V

    .line 293
    invoke-static {p0}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/a/a/j;->b(Z)V

    .line 295
    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    iget v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x400

    const/16 v7, 0x3e

    const/4 v6, 0x7

    const/4 v5, 0x2

    .line 143
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0, v6}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->requestWindowFeature(I)Z

    .line 145
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->setContentView(I)V

    .line 148
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->v:Landroid/view/LayoutInflater;

    .line 151
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "issue_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->r:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pub_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->s:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 155
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->d()Lcom/zinio/mobile/android/a/b/s;

    move-result-object v0

    new-instance v2, Lcom/zinio/mobile/android/a/a/q;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->r:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/zinio/mobile/android/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/a/b/s;->a(Lcom/zinio/mobile/android/a/a/q;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    .line 157
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->finish()V

    .line 187
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 163
    const v2, 0x7f030020

    invoke-virtual {v0, v6, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 164
    invoke-virtual {v0, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 166
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 170
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 171
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 173
    new-instance v0, Lcom/zinio/mobile/android/view/ab;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/ab;-><init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->t:Lcom/zinio/mobile/android/view/ab;

    .line 175
    const v0, 0x7f0c008e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    .line 176
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->t:Lcom/zinio/mobile/android/view/ab;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    new-instance v2, Lcom/zinio/mobile/android/view/ct;

    invoke-direct {v2, p0}, Lcom/zinio/mobile/android/view/ct;-><init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 179
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    new-instance v2, Lcom/zinio/mobile/android/view/ck;

    invoke-direct {v2, p0}, Lcom/zinio/mobile/android/view/ck;-><init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 181
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    const/16 v1, 0x3f

    invoke-static {v1, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 182
    invoke-static {p0}, Lcom/zinio/mobile/android/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    iget v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 186
    :goto_1
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->n:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->n:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->n:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->n:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 308
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onDestroy()V

    .line 310
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    const-class v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/Class;)V

    .line 313
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 737
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 738
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->n:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 742
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onPause()V

    .line 233
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b()V

    .line 234
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->k:Lcom/zinio/mobile/android/view/bu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/bu;->removeMessages(I)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->l:Z

    .line 236
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b()V

    .line 603
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 606
    iget v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->i:I

    if-ne v0, v1, :cond_2

    if-eq p2, v1, :cond_2

    .line 607
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->k:Lcom/zinio/mobile/android/view/bu;

    .line 608
    invoke-virtual {v0, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v4}, Lcom/zinio/mobile/android/view/bu;->removeMessages(I)V

    .line 610
    iget-boolean v2, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->j:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 611
    iput-boolean v4, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->l:Z

    .line 617
    :cond_0
    :goto_1
    iput p2, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->i:I

    .line 618
    return-void

    .line 610
    :cond_1
    const-wide/16 v2, 0x226

    goto :goto_0

    .line 612
    :cond_2
    if-ne p2, v1, :cond_0

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->l:Z

    .line 614
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->k:Lcom/zinio/mobile/android/view/bu;

    invoke-virtual {v0, v4}, Lcom/zinio/mobile/android/view/bu;->removeMessages(I)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 240
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStart()V

    .line 241
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a:Landroid/graphics/Bitmap;

    .line 243
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b:Landroid/graphics/Bitmap;

    .line 245
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 246
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v3}, Lcom/zinio/mobile/android/a/a/h;->a(I)Lcom/zinio/mobile/android/a/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/h;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 247
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v0, :cond_0

    .line 249
    sget-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a:Landroid/graphics/Bitmap;

    .line 251
    sget-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b:Landroid/graphics/Bitmap;

    .line 253
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->f:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->e:F

    .line 257
    :goto_0
    new-instance v0, Lcom/zinio/mobile/android/view/bh;

    sget-object v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/bh;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->c:Landroid/graphics/drawable/Drawable;

    .line 258
    new-instance v0, Lcom/zinio/mobile/android/view/bh;

    sget-object v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/bh;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->d:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->t:Lcom/zinio/mobile/android/view/ab;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ab;->c()V

    .line 262
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->w:Lcom/zinio/mobile/android/a/a/v;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 263
    return-void

    .line 255
    :cond_0
    const/high16 v0, 0x3fc0

    sput v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->e:F

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStop()V

    .line 269
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->w:Lcom/zinio/mobile/android/a/a/v;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->b(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->n:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    .line 272
    sput-object v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->c:Landroid/graphics/drawable/Drawable;

    .line 273
    sput-object v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->d:Landroid/graphics/drawable/Drawable;

    .line 274
    sput-object v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a:Landroid/graphics/Bitmap;

    .line 275
    sput-object v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->b:Landroid/graphics/Bitmap;

    .line 276
    return-void
.end method
