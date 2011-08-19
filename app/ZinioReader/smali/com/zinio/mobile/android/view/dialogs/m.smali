.class public final Lcom/zinio/mobile/android/view/dialogs/m;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static e:Landroid/view/View;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Lcom/zinio/mobile/android/view/cr;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/zinio/mobile/android/view/cr;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/zinio/mobile/android/view/dialogs/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/zinio/mobile/android/view/cr;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/zinio/mobile/android/view/cr;B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const v0, 0x7f0a0009

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    iput-object p2, p0, Lcom/zinio/mobile/android/view/dialogs/m;->a:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/zinio/mobile/android/view/dialogs/m;->b:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/zinio/mobile/android/view/dialogs/m;->f:Ljava/lang/Integer;

    .line 57
    iput-object p5, p0, Lcom/zinio/mobile/android/view/dialogs/m;->g:Ljava/lang/Integer;

    .line 58
    iput-object p7, p0, Lcom/zinio/mobile/android/view/dialogs/m;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    iput-object p8, p0, Lcom/zinio/mobile/android/view/dialogs/m;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    iput-object p6, p0, Lcom/zinio/mobile/android/view/dialogs/m;->c:Ljava/lang/Integer;

    .line 61
    iput-object p9, p0, Lcom/zinio/mobile/android/view/dialogs/m;->d:Lcom/zinio/mobile/android/view/cr;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/dialogs/m;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/m;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/dialogs/m;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/m;->i:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/m;->d(Lcom/zinio/mobile/android/view/dialogs/m;)V

    return-void
.end method

.method private static d(Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0c009f

    const/16 v6, 0x8

    const/4 v3, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/dialogs/m;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 106
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Grid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    const v1, 0x7f03002f

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    .line 112
    :goto_0
    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/dialogs/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/dialogs/m;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 122
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/m;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 123
    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 125
    iget-object v3, p0, Lcom/zinio/mobile/android/view/dialogs/m;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, p0, Lcom/zinio/mobile/android/view/dialogs/m;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_0

    .line 130
    new-instance v3, Lcom/zinio/mobile/android/view/dialogs/x;

    invoke-direct {v3, p0}, Lcom/zinio/mobile/android/view/dialogs/x;-><init>(Lcom/zinio/mobile/android/view/dialogs/m;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/m;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 147
    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    const v3, 0x7f0c00a0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 150
    iget-object v3, p0, Lcom/zinio/mobile/android/view/dialogs/m;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/zinio/mobile/android/view/dialogs/m;->i:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_1

    .line 154
    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/w;

    invoke-direct {v2, p0}, Lcom/zinio/mobile/android/view/dialogs/w;-><init>(Lcom/zinio/mobile/android/view/dialogs/m;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/m;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 172
    sget-object v0, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    const v1, 0x7f0c009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/m;->d:Lcom/zinio/mobile/android/view/cr;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/m;->d:Lcom/zinio/mobile/android/view/cr;

    invoke-interface {v0, p0}, Lcom/zinio/mobile/android/view/cr;->a(Lcom/zinio/mobile/android/view/dialogs/m;)V

    .line 192
    :cond_3
    return-void

    .line 109
    :cond_4
    const v1, 0x7f03002e

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    goto/16 :goto_0

    .line 141
    :cond_5
    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 166
    :cond_6
    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    const v2, 0x7f0c00a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 175
    :cond_7
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/m;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 178
    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/m;->e:Landroid/view/View;

    const v2, 0x7f0c009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 181
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 183
    iget-object v2, p0, Lcom/zinio/mobile/android/view/dialogs/m;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 204
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/m;->d(Lcom/zinio/mobile/android/view/dialogs/m;)V

    .line 205
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/view/cf;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-interface {p1}, Lcom/zinio/mobile/android/view/cf;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {p1, p0}, Lcom/zinio/mobile/android/view/cf;->a(Lcom/zinio/mobile/android/view/dialogs/m;)V

    .line 88
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
