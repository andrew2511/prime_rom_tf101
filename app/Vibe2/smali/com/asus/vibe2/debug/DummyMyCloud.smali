.class public Lcom/asus/vibe2/debug/DummyMyCloud;
.super Landroid/app/Activity;
.source "DummyMyCloud.java"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mEmptyView:Landroid/view/View;

.field private mMusic:Landroid/view/View;

.field private mNews:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRadio:Landroid/view/View;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mVideo:Landroid/view/View;

.field private mainStringList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mMusic:Landroid/view/View;

    .line 55
    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mRadio:Landroid/view/View;

    .line 56
    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mVideo:Landroid/view/View;

    .line 57
    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mNews:Landroid/view/View;

    .line 58
    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mEmptyView:Landroid/view/View;

    .line 59
    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/asus/vibe2/debug/DummyMyCloud$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/debug/DummyMyCloud$1;-><init>(Lcom/asus/vibe2/debug/DummyMyCloud;)V

    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mConnection:Landroid/content/ServiceConnection;

    .line 66
    new-instance v0, Lcom/asus/vibe2/debug/DummyMyCloud$2;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/debug/DummyMyCloud$2;-><init>(Lcom/asus/vibe2/debug/DummyMyCloud;)V

    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v0, Lcom/asus/vibe2/debug/DummyMyCloud$3;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/debug/DummyMyCloud$3;-><init>(Lcom/asus/vibe2/debug/DummyMyCloud;)V

    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/asus/vibe2/debug/DummyMyCloud;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/asus/vibe2/debug/DummyMyCloud;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->refreshViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/vibe2/debug/DummyMyCloud;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/vibe2/debug/DummyMyCloud;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/vibe2/debug/DummyMyCloud;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/asus/vibe2/debug/DummyMyCloud;->startVibeActivity(Ljava/lang/String;)V

    return-void
.end method

.method private static generateStartIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "main"

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, result:Landroid/content/Intent;
    const-string v1, "music"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-string v1, "com.asus.vibe.action.LIST_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v0       #result:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v0

    .line 243
    :cond_1
    const-string v1, "radio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-string v1, "com.asus.vibe.action.LIST_RADIO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #result:Landroid/content/Intent;
    goto :goto_0

    .line 245
    :cond_2
    const-string v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-string v1, "com.asus.vibe.action.LIST_VIDEO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #result:Landroid/content/Intent;
    goto :goto_0

    .line 247
    :cond_3
    const-string v1, "news"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-string v1, "com.asus.vibe.action.LIST_NEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #result:Landroid/content/Intent;
    goto :goto_0

    .line 249
    :cond_4
    const-string v1, "game"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-string v1, "com.asus.vibe.action.LIST_GAME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #result:Landroid/content/Intent;
    goto :goto_0
.end method

.method private refreshViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 98
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/asus/vibe2/debug/DummyMyCloud;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const v5, 0x7f080006

    invoke-virtual {p0, v5}, Lcom/asus/vibe2/debug/DummyMyCloud;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mMusic:Landroid/view/View;

    .line 103
    const v5, 0x7f080007

    invoke-virtual {p0, v5}, Lcom/asus/vibe2/debug/DummyMyCloud;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mRadio:Landroid/view/View;

    .line 104
    const v5, 0x7f080008

    invoke-virtual {p0, v5}, Lcom/asus/vibe2/debug/DummyMyCloud;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mVideo:Landroid/view/View;

    .line 105
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/asus/vibe2/debug/DummyMyCloud;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mNews:Landroid/view/View;

    .line 106
    const v5, 0x7f08000d

    invoke-virtual {p0, v5}, Lcom/asus/vibe2/debug/DummyMyCloud;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mEmptyView:Landroid/view/View;

    .line 107
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mEmptyView:Landroid/view/View;

    const v6, 0x7f08000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f04000a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mMusic:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mRadio:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mVideo:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mNews:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mMusic:Landroid/view/View;

    iget-object v6, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mRadio:Landroid/view/View;

    iget-object v6, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mVideo:Landroid/view/View;

    iget-object v6, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mNews:Landroid/view/View;

    iget-object v6, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 117
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 118
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 119
    .local v4, mainString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->invalidateOptionsMenu()V

    .line 120
    const-string v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mMusic:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const-string v5, "radio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mRadio:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 122
    :cond_2
    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mVideo:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 123
    :cond_3
    const-string v5, "news"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mNews:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 124
    :cond_4
    const-string v5, "game"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 128
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mainString:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mEmptyView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    .line 129
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v1, fadeOut:Landroid/view/animation/Animation;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mEmptyView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    .end local v1           #fadeOut:Landroid/view/animation/Animation;
    :cond_6
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mEmptyView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_7
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->invalidateOptionsMenu()V

    .line 134
    return-void
.end method

.method private startVibeActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "main"

    .prologue
    .line 232
    :try_start_0
    invoke-static {p1}, Lcom/asus/vibe2/debug/DummyMyCloud;->generateStartIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/debug/DummyMyCloud;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 234
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not start activity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 235
    const-string v1, "ASUS@Vibe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start activity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    invoke-direct {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->refreshViews()V

    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/16 v9, 0x3e5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 176
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 177
    iget-object v5, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 178
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 179
    .local v4, mainString:Ljava/lang/String;
    const-string v5, "game"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    const/16 v5, 0x3e7

    const-string v6, "Game"

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #mainString:Ljava/lang/String;
    :cond_1
    const/16 v5, 0x3e6

    const-string v6, "Change Region"

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 185
    const-string v5, "Use Test Server"

    invoke-interface {p1, v7, v9, v7, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 186
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 187
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 188
    sget-boolean v5, Lcom/asus/vibe2/Vibe;->useVibeTestPremiumAddress:Z

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 189
    return v8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->finish()V

    .line 207
    :cond_0
    :goto_0
    return v3

    .line 197
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_2

    .line 198
    const-string v0, "game"

    invoke-direct {p0, v0}, Lcom/asus/vibe2/debug/DummyMyCloud;->startVibeActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3e6

    if-ne v0, v1, :cond_3

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/asus/vibe2/debug/RegionSelector;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/debug/DummyMyCloud;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3e5

    if-ne v0, v1, :cond_0

    .line 202
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->useVibeTestPremiumAddress:Z

    if-nez v0, :cond_4

    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/asus/vibe2/Vibe;->useVibeTestPremiumAddress:Z

    .line 203
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->useVibeTestPremiumAddress:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 204
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->onPause()V

    .line 205
    invoke-virtual {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->onResume()V

    goto :goto_0

    .line 202
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/debug/DummyMyCloud;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/debug/DummyMyCloud;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/asus/vibe2/debug/DummyMyCloud;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mainStringList:[Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/asus/vibe2/debug/DummyMyCloud;->refreshViews()V

    .line 152
    iget-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mEmptyView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.vibe.action.QUERY_MAINLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/asus/vibe2/debug/DummyMyCloud;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 155
    return-void
.end method
