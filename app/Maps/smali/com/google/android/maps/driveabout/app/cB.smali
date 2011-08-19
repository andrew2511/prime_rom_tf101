.class public abstract Lcom/google/android/maps/driveabout/app/cB;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private a:Ljava/util/ArrayList;

.field protected final b:Landroid/content/Context;

.field protected final c:Landroid/os/Handler;

.field private d:Ljava/util/ArrayList;

.field private e:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .locals 6

    const v5, 0x7f0f009a

    const/16 v4, 0x8

    const/4 v3, 0x0

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v1, 0x7f0f009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v1, 0x7f0f0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p4, :cond_3

    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-object v0

    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ax;)Lcom/google/android/maps/driveabout/app/cB;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/v;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/maps/driveabout/app/v;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ax;ZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ax;Z)Lcom/google/android/maps/driveabout/app/cB;
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/maps/driveabout/app/v;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/v;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ax;ZZ)V

    return-object v1
.end method

.method private a(Lcom/google/android/maps/driveabout/app/aQ;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aQ;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aQ;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aQ;->e()LF/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;LF/u;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cB;->b()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    if-eqz v0, :cond_1

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/cB;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/q;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static b()V
    .locals 1

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/cB;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/cJ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/cJ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/aQ;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->b()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/cB;->a(Lcom/google/android/maps/driveabout/app/aQ;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/android/maps/driveabout/app/cB;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public a(LG/y;)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cB;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cB;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cB;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/cB;->a(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dG;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/dG;-><init>(Lcom/google/android/maps/driveabout/app/cB;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method c(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cB;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cB;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/dF;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dF;-><init>(Lcom/google/android/maps/driveabout/app/cB;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/cB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/aQ;

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move-object v0, v3

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-static {v2}, Las/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f030032

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p0

    goto :goto_0

    :cond_1
    const v2, 0x7f030031

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->d()I

    move-result v0

    invoke-direct {p0, p2, v1, v3, v0}, Lcom/google/android/maps/driveabout/app/cB;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->e()LF/u;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;LF/u;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->e()LF/u;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/app/t;->b(Landroid/content/Context;LF/u;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/google/android/maps/driveabout/app/cB;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cB;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030034

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/cB;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/app/aQ;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aQ;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
