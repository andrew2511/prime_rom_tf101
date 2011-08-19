.class public Lcom/google/android/maps/driveabout/app/NavigationImageView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lt/ae;


# instance fields
.field private a:LF/y;

.field private b:Landroid/widget/ImageSwitcher;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/view/ViewGroup;

.field private g:Lt/aB;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationImageView;)LF/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:LF/y;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private a(LF/y;Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:LF/y;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:LF/y;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, LF/y;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a()V

    const v0, 0x7f0b00ab

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    :goto_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:LF/y;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b(LF/y;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    invoke-virtual {v0}, Lt/aB;->c()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    invoke-virtual {v0}, Lt/aB;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const v0, 0x7f0b00ac

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const-wide/16 v3, 0x3e8

    const/4 v2, 0x1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const v0, 0x7f0f00d0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cV;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cV;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00d3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationImageView;LF/y;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(LF/y;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lt/ae;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p3, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->i:I

    iput p4, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->h:I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->j:Ljava/lang/String;

    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Lt/w;->a(Ljava/lang/String;Lt/ae;Z)Lt/aB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    goto :goto_0
.end method

.method private b(LF/y;Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/app/cX;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/cX;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;LF/y;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    const v0, 0x7f0b00ac

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF/y;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Ljava/lang/String;Lt/ae;II)V

    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(LF/y;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    invoke-virtual {v0}, Lt/aB;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:LF/y;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(LF/y;Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public a(Lt/aB;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/cW;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cW;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->i:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->h:I

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lt/aB;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:LF/y;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(LF/y;Z)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
