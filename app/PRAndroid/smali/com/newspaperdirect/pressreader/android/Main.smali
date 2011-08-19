.class public Lcom/newspaperdirect/pressreader/android/Main;
.super Landroid/app/TabActivity;
.source "Main.java"


# static fields
.field public static final ACTIVITY_MY_LIBRARY:I = 0x0

.field public static final ACTIVITY_SETTINGS:I = 0x2

.field public static final ACTIVITY_STORE:I = 0x1

.field public static final TAG_MY_LIBRARY:Ljava/lang/String; = "mylibrary"

.field public static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field public static final TAG_STORE:Ljava/lang/String; = "store"


# instance fields
.field private initTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Main$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/Main$1;-><init>(Lcom/newspaperdirect/pressreader/android/Main;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main;->initTask:Landroid/os/AsyncTask;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Main;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/Main;->initTabs(Z)V

    return-void
.end method

.method private initTabs(Z)V
    .locals 7
    .parameter "registered"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Main;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    .line 105
    .local v3, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "mylibrary"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 109
    const v5, 0x7f090083

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Main;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020075

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 110
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 111
    .local v2, spec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v4, Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "store"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 116
    const v5, 0x7f09004e

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Main;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020074

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 117
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 118
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v4, Lcom/newspaperdirect/pressreader/android/Settings;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "settings"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 123
    const v5, 0x7f090086

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Main;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020077

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 124
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 125
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 127
    if-eqz p1, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 128
    return-void

    .line 127
    :cond_1
    const/4 v4, 0x4

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Main;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Main;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 34
    const-string v0, ""

    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main;->progressDialog:Landroid/app/ProgressDialog;

    .line 35
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main;->initTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Main;->initTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 84
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 85
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, -0x1

    .line 89
    const-string v0, "tab"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Main;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 97
    return-void
.end method
