.class public Lcom/google/googlenav/ui/wizard/android/p;
.super Lh/eL;


# instance fields
.field private final b:Lcom/google/googlenav/android/BaseMapsActivity;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lh/eY;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lh/eL;-><init>(Lh/eY;)V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/googlenav/android/BaseMapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/p;->c:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/android/p;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v1, "mail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "com.facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/android/p;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/p;->g:Lh/eY;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Ljava/util/Vector;)V
    .locals 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/p;->c:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/p;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/android/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v4}, Lcom/google/googlenav/ui/aQ;-><init>()V

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/android/p;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v4, 0x642

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    new-instance v4, LaB/f;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v4, v1}, LaB/f;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/android/p;)Lcom/google/googlenav/android/BaseMapsActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/p;->b:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method


# virtual methods
.method public a(IILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x642

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/android/p;->a(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/android/e;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/wizard/android/e;-><init>(Lcom/google/googlenav/ui/wizard/android/p;Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/android/p;->a(ILh/cK;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Ljava/util/Vector;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/android/p;->a(Landroid/content/Intent;Ljava/util/Vector;)V

    return-object v0
.end method
