.class public LI/h;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private a:Ljava/util/List;

.field private b:LI/r;


# direct methods
.method public constructor <init>(Ljava/util/List;LI/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/h;->a:Ljava/util/List;

    iput-object p2, p0, LI/h;->b:LI/r;

    return-void
.end method

.method public static a(Landroid/location/Address;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-gt v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LI/h;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, LI/h;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(LI/h;)LI/r;
    .locals 1

    iget-object v0, p0, LI/h;->b:LI/r;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030112

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    const v0, 0x7f0f00b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x6a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, LI/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-static {v0}, LI/h;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, LI/i;

    invoke-direct {v2, p0}, LI/i;-><init>(LI/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/a;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030114

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x103000b

    return v0
.end method
