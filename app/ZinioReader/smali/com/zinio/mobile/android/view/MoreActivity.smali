.class public final Lcom/zinio/mobile/android/view/MoreActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private b:Landroid/os/Handler;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/zinio/mobile/android/view/u;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/u;-><init>(Lcom/zinio/mobile/android/view/MoreActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->b:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/zinio/mobile/android/view/v;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/v;-><init>(Lcom/zinio/mobile/android/view/MoreActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/MoreActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    return-object v0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/zinio/mobile/android/view/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 88
    sget-object v0, Lcom/zinio/mobile/android/a;->b:Landroid/content/Intent;

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x7

    .line 142
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/MoreActivity;->requestWindowFeature(I)Z

    .line 144
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/MoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 147
    const v1, 0x7f030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 151
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/MoreActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/MoreActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/MoreActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/MoreActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-static {}, Lcom/zinio/mobile/android/f/d;->a()Lcom/zinio/mobile/android/f/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/f/d;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zinio/mobile/android/f/a;

    invoke-interface {v1}, Lcom/zinio/mobile/android/f/a;->c()I

    move-result v3

    invoke-interface {v1}, Lcom/zinio/mobile/android/f/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 228
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onResume()V
    .locals 5

    .prologue
    .line 76
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/zinio/mobile/android/view/MoreActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    .line 78
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    array-length v2, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v0, v1, v3

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/MoreActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :try_start_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v1

    if-nez v1, :cond_3

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_1
    :goto_2
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->i()V

    .line 82
    :cond_2
    return-void

    .line 78
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/MoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0x5et 0x0t 0xct 0x7ft
        0x5ft 0x0t 0xct 0x7ft
        0x61t 0x0t 0xct 0x7ft
        0x62t 0x0t 0xct 0x7ft
        0x60t 0x0t 0xct 0x7ft
    .end array-data
.end method
