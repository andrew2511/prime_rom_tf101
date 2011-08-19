.class public Lcom/google/googlenav/ui/android/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/android/Z;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/android/aq;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/aq;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/aq;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/aq;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/aq;->d:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aq;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aq;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aq;->c:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aq;->d:Landroid/content/Intent;

    return-object v0
.end method
