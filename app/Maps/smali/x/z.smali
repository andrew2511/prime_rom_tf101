.class public Lx/z;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lax/e;

.field private b:LI/j;

.field k:Ljava/util/EnumSet;

.field public final l:I

.field public final m:I

.field public final n:LI/n;

.field public o:Ljava/lang/String;

.field public p:I

.field q:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;[Lax/e;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lx/f;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    iput v1, p0, Lx/z;->p:I

    iput-boolean v1, p0, Lx/z;->q:Z

    iput p1, p0, Lx/z;->l:I

    iput p2, p0, Lx/z;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lx/z;->n:LI/n;

    iput-object p3, p0, Lx/z;->o:Ljava/lang/String;

    iput-object p4, p0, Lx/z;->a:[Lax/e;

    return-void
.end method

.method public constructor <init>(LI/n;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lx/f;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    iput v1, p0, Lx/z;->p:I

    iput-boolean v1, p0, Lx/z;->q:Z

    iput v1, p0, Lx/z;->l:I

    iput v1, p0, Lx/z;->m:I

    iput-object p1, p0, Lx/z;->n:LI/n;

    return-void
.end method

.method public constructor <init>(LI/n;LI/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lx/z;-><init>(LI/n;)V

    iput-object p2, p0, Lx/z;->b:LI/j;

    return-void
.end method

.method public constructor <init>(LI/n;[Lax/e;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lx/f;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    iput v1, p0, Lx/z;->p:I

    iput-boolean v1, p0, Lx/z;->q:Z

    iput v1, p0, Lx/z;->l:I

    iput p3, p0, Lx/z;->m:I

    iput-object p1, p0, Lx/z;->n:LI/n;

    iput-object p2, p0, Lx/z;->a:[Lax/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lx/z;->o:Ljava/lang/String;

    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->b:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lx/f;)V
    .locals 2

    sget-object v0, Lx/H;->a:[I

    invoke-virtual {p1}, Lx/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->a:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->b:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->f:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->c:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->d:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->e:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->g:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->h:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->i:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lx/z;->q:Z

    return-void
.end method

.method public a([Lax/e;)V
    .locals 1

    iput-object p1, p0, Lx/z;->a:[Lax/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/z;->q:Z

    return-void
.end method

.method public e()[Lax/e;
    .locals 1

    iget-object v0, p0, Lx/z;->a:[Lax/e;

    return-object v0
.end method

.method public f()LI/j;
    .locals 1

    iget-object v0, p0, Lx/z;->b:LI/j;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lx/z;->q:Z

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->b:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->a:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    const-class v0, Lx/f;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lx/z;->k:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    return-void
.end method
