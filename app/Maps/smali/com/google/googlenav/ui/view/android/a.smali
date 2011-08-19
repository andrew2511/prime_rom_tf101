.class public abstract Lcom/google/googlenav/ui/view/android/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/googlenav/android/n;


# static fields
.field protected static e:I


# instance fields
.field protected final a:Lcom/google/googlenav/android/BaseMapsActivity;

.field protected b:Lcom/google/googlenav/ui/view/android/e;

.field protected c:I

.field protected d:I

.field private f:Landroid/webkit/WebView;

.field private g:Lcom/google/googlenav/ui/view/android/e;

.field private h:Ljava/lang/Object;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/ui/view/android/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d002f

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/a;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void

    :cond_0
    const v0, 0x103000c

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;Lcom/google/googlenav/ui/view/android/e;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-static {p3}, Lcom/google/googlenav/ui/view/android/a;->b(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/google/googlenav/ui/view/android/a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    sget v0, Lcom/google/googlenav/ui/view/android/a;->e:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/google/googlenav/ui/view/android/a;->e:I

    :cond_0
    return-void
.end method

.method private static a(Lx/C;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lx/C;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lx/C;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<hr/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lx/C;->d:[Lcom/google/googlenav/ui/aI;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    iget-object v6, v5, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-static {v6}, LR/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Lcom/google/googlenav/ui/aI;->c:Z

    if-eqz v5, :cond_0

    const-string v5, "<br/>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</body>"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected static a(Landroid/widget/Button;Lcom/google/googlenav/ui/bx;ZLandroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setFocusable(Z)V

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/google/googlenav/ui/view/android/a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/a;->j()Lcom/google/googlenav/ui/view/android/e;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->g:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/a;->a(Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/a;->a(Lcom/google/googlenav/ui/view/android/a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->b()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx/w;

    invoke-virtual {p0}, Lx/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private a(Ljava/util/List;Lax/e;)V
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(Lax/e;)Z
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/w;->K:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->J:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)I
    .locals 0

    return p0
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private n()V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f0f0081

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/a;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x190

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v2, v3, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private o()[Lax/e;
    .locals 6

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->b()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->P()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v1

    invoke-virtual {v1}, Lx/z;->e()[Lax/e;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v1

    iget v1, v1, Lx/z;->l:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->b()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aJ()Lcom/google/googlenav/ui/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ak;->a()Lcom/google/googlenav/ui/bU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bU;->d()[Lax/e;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/android/a;->a(Lax/e;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/view/android/a;->a(Ljava/util/List;Lax/e;)V

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v1

    invoke-virtual {v1}, Lx/z;->e()[Lax/e;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lax/e;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lax/e;

    return-object p0
.end method


# virtual methods
.method protected a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/a;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-nez p2, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(I[Lcom/google/googlenav/ui/aI;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 1

    invoke-static {p2}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/googlenav/ui/view/android/a;->a(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/view/android/a;->c:I

    return-void
.end method

.method protected a(ILandroid/view/ViewGroup;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Lx/C;Landroid/webkit/WebViewClient;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p2, Lx/C;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v0, 0x7f0f021b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lx/C;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p2, Lx/C;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const v0, 0x7f0f021d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lx/C;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0f021c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-boolean v0, p2, Lx/C;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (Linux; U; Android 2.3.2; en-gb; Nexus S Build/GMM_TABLET) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/c;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/googlenav/ui/view/android/c;-><init>(Lcom/google/googlenav/ui/view/android/a;Lx/C;Landroid/view/ViewGroup;Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-boolean v0, p2, Lx/C;->l:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/a;->i:Z

    iget-object v0, p2, Lx/C;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/a;->a(Lx/C;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "charset=utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v0, p2, Lx/C;->i:Lx/U;

    if-nez v0, :cond_5

    iget-object v0, p2, Lx/C;->j:Lx/U;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;

    iget-object v2, p2, Lx/C;->i:Lx/U;

    iget-object v3, p2, Lx/C;->j:Lx/U;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;-><init>(Lx/U;Lx/U;)V

    const-string v2, "parentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p2}, Lx/C;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Footer not supported with URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p2, Lx/C;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lx/C;->b:Ljava/lang/String;

    iget-object v1, p2, Lx/C;->k:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/a;->a(Ljava/lang/String;Ljava/util/Vector;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    iget-object v1, p2, Lx/C;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/a;->g:Lcom/google/googlenav/ui/view/android/e;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/a;->h:Ljava/lang/Object;

    return-void
.end method

.method protected a(Lx/G;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    iget-object v0, p1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Lcom/google/googlenav/ui/android/EditableTemplateView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Lcom/google/googlenav/ui/view/android/e;)V

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p1, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    iget v0, v0, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    iget-object v0, p1, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p3, Lcom/google/googlenav/ui/android/EditableTemplateView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Lcom/google/googlenav/ui/view/android/e;)V

    :cond_3
    if-eqz p4, :cond_0

    iget-object v0, p1, Lx/G;->n:Lcom/google/googlenav/ui/bx;

    if-nez v0, :cond_5

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bx;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setClickable(Z)V

    invoke-virtual {p2, p0}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    invoke-virtual {p4, v0}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    if-eqz v0, :cond_0

    invoke-virtual {p4, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setClickable(Z)V

    invoke-virtual {p4, p0}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->b(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/br;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/googlenav/ui/bx;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bx;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->h()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->l()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected b()Lcom/google/googlenav/android/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {p0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/P;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/android/c;

    return-object p0
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ListAdapter;

    :goto_0
    instance-of v1, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move-object p0, v1

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/google/googlenav/ui/view/android/O;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/googlenav/ui/view/android/O;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/googlenav/ui/view/android/O;->a()V

    :cond_1
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method protected b(Lcom/google/googlenav/ui/br;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->l()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected d()[Lax/e;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/a;->o()[Lax/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    invoke-virtual {v0}, Lx/z;->e()[Lax/e;

    move-result-object v0

    goto :goto_0
.end method

.method public dismiss()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/ui/view/android/P;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/P;->n()Lcom/google/googlenav/ui/view/android/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/P;->n()Lcom/google/googlenav/ui/view/android/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/a;->a(Lcom/google/googlenav/ui/view/android/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->g:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/P;->b(Lcom/google/googlenav/ui/view/android/e;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    invoke-virtual {v0}, Lx/z;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/z;->a(Z)V

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected h()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Lcom/google/googlenav/ui/view/android/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->g:Lcom/google/googlenav/ui/view/android/e;

    return-object v0
.end method

.method protected k()V
    .locals 4

    const/4 v3, -0x1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f00b4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/b;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/b;-><init>(Lcom/google/googlenav/ui/view/android/a;)V

    new-instance v2, Lx/q;

    invoke-direct {v2, v3, v3}, Lx/q;-><init>(II)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/v;->a(Landroid/view/View;Lx/U;Lx/Q;)Lcom/google/googlenav/ui/android/v;

    :cond_0
    return-void
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public m()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/actionbar/a;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/a;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->g()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->a()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/a;->n()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->onSearchRequested()Z

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/a;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->d()V

    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    invoke-virtual {v0}, Lx/z;->e()[Lax/e;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    invoke-virtual {v0}, Lx/z;->e()[Lax/e;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_4

    const/16 v0, 0x10

    const-string v1, "ma"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x9d6

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->d()[Lax/e;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    move v1, v5

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->d()[Lax/e;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lax/e;->e()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_3

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/d;->U()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/google/googlenav/ui/w;->I:Lax/e;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->b()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aP;->e()V

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/googlenav/actionbar/a;->b(Landroid/app/Dialog;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v4, v6}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/d;->U()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->b()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v4, v6}, Lcom/google/googlenav/ui/aT;->a(IILjava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/a;->a(Landroid/view/Menu;)V

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onOptionsMenuClosed(Landroid/view/Menu;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/a;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/a;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    invoke-virtual {v0}, Lx/z;->f()LI/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LI/j;->a(Landroid/view/Menu;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->d()[Lax/e;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/googlenav/ui/android/Y;->a()Lcom/google/googlenav/ui/android/Y;

    move-result-object v1

    move v2, v6

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_6

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lax/e;->c()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Lax/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v2, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/d;->U()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/google/googlenav/ui/w;->I:Lax/e;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v5}, Lcom/google/googlenav/android/af;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v5}, Lcom/google/googlenav/android/af;->k()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/view/android/a;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    :goto_2
    sget-object v5, Lcom/google/googlenav/ui/w;->R:Lax/e;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->b()Lcom/google/googlenav/android/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v5

    invoke-virtual {v5}, Li/aE;->O()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    sget-object v5, Lcom/google/googlenav/ui/w;->V:Lax/e;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/d;->t()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    invoke-interface {v4, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/d;->U()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4, v3}, Lcom/google/googlenav/ui/android/S;->a(Landroid/view/MenuItem;Lax/e;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/android/Y;->b(Lax/e;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/android/Y;->a(Lax/e;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    move v0, v7

    goto/16 :goto_0

    :cond_7
    move v0, v6

    goto/16 :goto_0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/a;->c:I

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/a;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->j()V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->f()Lcom/google/googlenav/ui/view/android/P;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/P;->n()Lcom/google/googlenav/ui/view/android/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->g:Lcom/google/googlenav/ui/view/android/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/P;->b(Lcom/google/googlenav/ui/view/android/e;)V

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/P;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/actionbar/a;->b(Landroid/view/View;)Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
