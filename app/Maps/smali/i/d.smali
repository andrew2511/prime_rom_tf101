.class Li/d;
.super Ljava/lang/Object;

# interfaces
.implements LI/k;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Ljava/util/ArrayList;

.field e:Landroid/widget/TextView;

.field f:Li/ah;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/d;->d:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Li/j;)V
    .locals 0

    invoke-direct {p0}, Li/d;-><init>()V

    return-void
.end method


# virtual methods
.method a(Li/ah;)V
    .locals 1

    iget-object v0, p0, Li/d;->f:Li/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/d;->f:Li/ah;

    invoke-static {v0}, Li/ah;->a(Li/ah;)V

    :cond_0
    iput-object p1, p0, Li/d;->f:Li/ah;

    invoke-static {p1, p0}, Li/ah;->a(Li/ah;Li/d;)V

    return-void
.end method
