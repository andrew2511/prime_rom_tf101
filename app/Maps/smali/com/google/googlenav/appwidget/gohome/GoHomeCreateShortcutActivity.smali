.class public Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/AutoCompleteTextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/google/googlenav/appwidget/gohome/e;

.field private d:Landroid/widget/Gallery;

.field private e:Landroid/widget/CheckBox;

.field private f:Lcom/google/googlenav/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()I
    .locals 1

    const v0, 0x7f0f0119

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0f011b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const v0, 0x7f0f011a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "d"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "w"

    goto :goto_0

    :pswitch_1
    const-string v0, "r"

    goto :goto_0

    :pswitch_2
    const-string v0, "d"

    goto :goto_0

    :pswitch_3
    const-string v0, "b"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    return-object v0
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    invoke-virtual {v2}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/appwidget/gohome/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v2, 0x105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-object v2
.end method

.method static synthetic d(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/Gallery;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f:Lcom/google/googlenav/d;

    invoke-virtual {v0}, Lcom/google/googlenav/d;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->h()V

    return-void
.end method

.method private f()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://maps.google.com/maps"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "myl"

    const-string v5, "saddr"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "daddr"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dirflg"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "nav"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v2, :cond_2

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.driveabout.app.NavigationActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->finish()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "destination"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0f011a

    const v6, 0x7f0f0086

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f:Lcom/google/googlenav/d;

    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1ab

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x438

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0089

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1ac

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x1a9

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x1aa

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f008a

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f0f0085

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    const/16 v2, 0x1a8

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0088

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    const/16 v2, 0x1ad

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->g()V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f:Lcom/google/googlenav/d;

    invoke-virtual {v1}, Lcom/google/googlenav/d;->A()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    new-instance v2, Lcom/google/googlenav/appwidget/gohome/a;

    invoke-direct {v2, p0}, Lcom/google/googlenav/appwidget/gohome/a;-><init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0, v7}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/google/googlenav/d;->K()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/w;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/w;

    move-result-object v2

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lh/dH;->t()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v6}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/V;->c(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/google/googlenav/appwidget/gohome/b;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/appwidget/gohome/b;-><init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;Lcom/google/googlenav/ui/view/android/w;)V

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/google/googlenav/appwidget/gohome/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/gohome/c;-><init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lcom/google/googlenav/appwidget/gohome/e;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/gohome/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    const v1, 0x7f0f008b

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c:Lcom/google/googlenav/appwidget/gohome/e;

    invoke-virtual {v2}, Lcom/google/googlenav/appwidget/gohome/e;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setSelection(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/google/googlenav/appwidget/gohome/d;

    invoke-direct {v1, p0}, Lcom/google/googlenav/appwidget/gohome/d;-><init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0f0118

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0f011b

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_3
    const v1, 0x7f0f0119

    invoke-virtual {p0, v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method
