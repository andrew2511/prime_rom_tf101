.class public Lh/ds;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:[Lcom/google/googlenav/bu;

.field private final b:LaU/a;

.field private final c:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;[Lcom/google/googlenav/bu;LaU/a;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lh/ds;->c:Ljava/util/WeakHashMap;

    iput-object p2, p0, Lh/ds;->a:[Lcom/google/googlenav/bu;

    iput-object p3, p0, Lh/ds;->b:LaU/a;

    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lh/ds;->a:[Lcom/google/googlenav/bu;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lh/ds;->a:[Lcom/google/googlenav/bu;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget-object v1, v0, Lcom/google/googlenav/bu;->a:Ljava/lang/String;

    iget-object v0, p0, Lh/ds;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0300ce

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Lcom/google/googlenav/ui/android/S;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lh/ds;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lh/ds;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/google/googlenav/ui/aV;->bO:I

    invoke-static {p2, v0}, Lcom/google/googlenav/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/f;

    const/4 v3, 0x1

    new-instance v4, Lh/ed;

    invoke-direct {v4, p0, p1, p2, v0}, Lh/ed;-><init>(Lh/ds;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/google/googlenav/f;-><init>(Ljava/lang/String;ZLcom/google/googlenav/P;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lh/ds;->b:LaU/a;

    new-instance v1, Lh/ee;

    invoke-direct {v1, p0, p1, p3}, Lh/ee;-><init>(Lh/ds;Landroid/widget/ImageView;[B)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lh/ds;Landroid/widget/ImageView;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lh/ds;->a(Landroid/widget/ImageView;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lh/ds;->a:[Lcom/google/googlenav/bu;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lh/ds;->a:[Lcom/google/googlenav/bu;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/google/googlenav/bu;->a:Ljava/lang/String;

    iget-object v0, p0, Lh/ds;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lh/ds;->a(ILandroid/view/ViewGroup;)V

    iget-object v0, p0, Lh/ds;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0300ce

    const/4 v2, 0x0

    invoke-static {v0, p3, v2}, Lcom/google/googlenav/ui/android/S;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lh/ds;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lh/ds;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lh/ds;->a(ILandroid/view/ViewGroup;)V

    goto :goto_0
.end method
