.class Lcom/google/android/maps/driveabout/app/eF;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private g:LF/M;

.field private final h:Z


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;Z)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eF;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/eF;->b:Landroid/view/View;

    const v0, 0x7f0f00e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->c:Landroid/widget/TextView;

    const v0, 0x7f0f00e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->e:Landroid/widget/TextView;

    const v0, 0x7f0f00e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->b:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/C;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/C;-><init>(Lcom/google/android/maps/driveabout/app/eF;Lcom/google/android/maps/driveabout/app/RouteSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/eF;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/bl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/eF;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/eF;)LF/M;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->g:LF/M;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    const/4 v2, 0x0

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/t;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/maps/driveabout/app/t;->a(IIZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/t;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/t;->a(IZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_1
.end method

.method public a(LF/M;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eF;->g:LF/M;

    invoke-virtual {p1}, LF/M;->o()I

    move-result v0

    invoke-virtual {p1}, LF/M;->p()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/eF;->a(II)V

    invoke-virtual {p1}, LF/M;->n()I

    move-result v0

    invoke-virtual {p1}, LF/M;->w()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/eF;->a(IZ)V

    invoke-virtual {p1}, LF/M;->v()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->g:LF/M;

    const/4 v2, 0x0

    invoke-virtual {p1}, LF/M;->o()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;LF/M;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/eF;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, LF/M;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/eF;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/eF;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0076

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->g:LF/M;

    invoke-virtual {v1}, LF/M;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->c:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f080043

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eF;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void

    :cond_0
    const v1, 0x7f080044

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eF;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
