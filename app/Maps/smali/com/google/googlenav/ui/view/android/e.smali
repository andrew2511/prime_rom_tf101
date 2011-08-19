.class public Lcom/google/googlenav/ui/view/android/e;
.super Lcom/google/googlenav/ui/view/android/f;

# interfaces
.implements Lcom/google/googlenav/ui/aY;


# static fields
.field private static volatile h:Lx/j;


# instance fields
.field protected final a:Lcom/google/googlenav/ui/view/android/a;

.field private final c:Lcom/google/googlenav/ui/aY;

.field private final d:Lx/z;

.field private final e:Lcom/google/googlenav/ui/android/ar;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/view/android/e;->h:Lx/j;

    return-void
.end method

.method public constructor <init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/ui/view/android/e;-><init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;Lx/K;)V

    return-void
.end method

.method public constructor <init>(Lx/z;Lcom/google/googlenav/ui/aY;Lcom/google/googlenav/android/BaseMapsActivity;Lx/K;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/f;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/e;->f:I

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/e;->c:Lcom/google/googlenav/ui/aY;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    new-instance v0, Lcom/google/googlenav/ui/android/ar;

    invoke-direct {v0, p3}, Lcom/google/googlenav/ui/android/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->e:Lcom/google/googlenav/ui/android/ar;

    invoke-direct {p0, p4}, Lcom/google/googlenav/ui/view/android/e;->a(Lx/K;)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {p3}, Lcom/google/googlenav/android/BaseMapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Lx/K;)Lcom/google/googlenav/ui/view/android/a;
    .locals 5

    const v4, 0x103000c

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget-object v0, v0, Lx/z;->n:LI/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget-object v0, v0, Lx/z;->n:LI/n;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/e;->a(LI/n;)Lcom/google/googlenav/ui/view/android/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget v0, v0, Lx/z;->l:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/google/googlenav/ui/view/android/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget v0, v0, Lx/z;->m:I

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    new-instance v0, Lcom/google/googlenav/ui/view/android/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/googlenav/ui/view/android/ae;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/ae;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/googlenav/ui/view/android/T;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/T;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/googlenav/ui/view/android/aN;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aN;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/googlenav/ui/view/android/aA;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aA;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/google/googlenav/ui/view/android/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/ah;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/google/googlenav/ui/view/android/bp;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/google/googlenav/ui/view/android/bp;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;ZZ)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/google/googlenav/ui/view/android/bp;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/googlenav/ui/view/android/bp;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;ZZ)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/google/googlenav/ui/view/android/bp;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/googlenav/ui/view/android/bp;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;ZZ)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/google/googlenav/ui/view/android/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/google/googlenav/ui/view/android/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    const v2, 0x7f0d0032

    invoke-direct {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    goto :goto_0

    :pswitch_d
    new-instance v0, LaQ/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, LaQ/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget v0, v0, Lx/z;->m:I

    packed-switch v0, :pswitch_data_2

    new-instance v0, Lcom/google/googlenav/ui/view/android/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/bs;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget v0, v0, Lx/z;->m:I

    packed-switch v0, :pswitch_data_3

    new-instance v0, Lcom/google/googlenav/ui/view/android/aG;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/googlenav/ui/view/android/aG;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;Lx/K;)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lcom/google/googlenav/ui/view/android/aA;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/googlenav/ui/view/android/aA;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;Lx/K;)V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Lcom/google/googlenav/ui/view/android/al;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/al;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Lcom/google/googlenav/ui/view/android/V;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    :pswitch_14
    new-instance v0, Lcom/google/googlenav/ui/view/android/A;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/A;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget v0, v0, Lx/z;->m:I

    packed-switch v0, :pswitch_data_4

    new-instance v0, Lcom/google/googlenav/ui/view/android/I;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0, v4, v3}, Lcom/google/googlenav/ui/view/android/I;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;IZ)V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lcom/google/googlenav/ui/view/android/I;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0, v4, v2}, Lcom/google/googlenav/ui/view/android/I;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;IZ)V

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Lcom/google/googlenav/ui/view/android/bg;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/bg;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Lcom/google/googlenav/ui/view/android/aY;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/aY;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Lcom/google/googlenav/ui/view/android/N;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/N;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    :pswitch_1a
    new-instance v0, Lcom/google/googlenav/ui/view/android/P;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/android/P;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_10
        :pswitch_e
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_2
        :pswitch_2
        :pswitch_d
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method

.method private a(LI/n;)Lcom/google/googlenav/ui/view/android/u;
    .locals 4

    instance-of v0, p1, LI/p;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/view/android/z;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget-object v2, v2, Lx/z;->n:LI/n;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/android/z;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;LI/n;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, LI/y;

    if-nez v0, :cond_1

    instance-of v0, p1, Lh/G;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lcom/google/googlenav/ui/view/android/u;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    iget-object v3, v3, Lx/z;->n:LI/n;

    invoke-direct {v1, v2, p0, v3, v0}, Lcom/google/googlenav/ui/view/android/u;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;LI/n;Z)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/view/android/e;->f:I

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/e;->g:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized a(Lx/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/google/googlenav/ui/view/android/e;->h:Lx/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/e;->a(Lx/z;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->c:Lcom/google/googlenav/ui/aY;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->c:Lcom/google/googlenav/ui/aY;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/googlenav/ui/aY;->a(IILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AndroidDialog"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/e;->c()Landroid/app/Dialog;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/e;->c()Landroid/app/Dialog;

    goto :goto_1
.end method

.method public a(Lax/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/e;->f:I

    return v0
.end method

.method public c()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->a(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->c:Lcom/google/googlenav/ui/aY;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->c:Lcom/google/googlenav/ui/aY;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aY;->d()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/e;->c()Landroid/app/Dialog;

    goto :goto_0
.end method

.method public d_(I)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->a(Landroid/app/Dialog;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->b(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/a;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    return-object v0
.end method

.method public e()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->d()Lcom/google/googlenav/android/w;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->l()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/a;->l()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public e_(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/a;->a(I)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->f()V

    return-void
.end method

.method public g()Lx/z;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->d:Lx/z;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->c()I

    move-result v0

    return v0
.end method

.method public i()Lcom/google/googlenav/ui/view/android/a;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/e;->a:Lcom/google/googlenav/ui/view/android/a;

    return-object v0
.end method

.method public declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/googlenav/ui/view/android/e;->h:Lx/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/view/android/e;->h:Lx/j;

    invoke-interface {v0}, Lx/j;->a()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/view/android/e;->h:Lx/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
