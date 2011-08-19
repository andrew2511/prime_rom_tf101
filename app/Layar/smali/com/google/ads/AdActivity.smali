.class public Lcom/google/ads/AdActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BASE_URL_PARAM:Ljava/lang/String; = "baseurl"

.field public static final HTML_PARAM:Ljava/lang/String; = "html"

.field public static final INTENT_ACTION_PARAM:Ljava/lang/String; = "i"

.field public static final ORIENTATION_PARAM:Ljava/lang/String; = "o"

.field public static final TYPE_PARAM:Ljava/lang/String; = "m"

.field public static final URL_PARAM:Ljava/lang/String; = "u"

.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/ads/AdActivity;

.field private static c:Ld;

.field private static d:Lcom/google/ads/AdActivity;


# instance fields
.field private e:Lg;

.field private f:J

.field private g:Landroid/widget/RelativeLayout;

.field private h:Z

.field private i:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->a:Ljava/lang/Object;

    sput-object v1, Lcom/google/ads/AdActivity;->b:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->c:Ld;

    sput-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/AdActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Lg;ZI)V
    .locals 6

    const/16 v1, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v5}, Lcom/google/ads/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p1}, Lg;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Interstitial created with an AdWebView that has a parent."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lg;->b()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Interstitial created with an AdWebView that is already in use by another AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/ads/AdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p1, p0}, Lg;->a(Lcom/google/ads/AdActivity;)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x3f80

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v1, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/google/ads/AdActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/google/ads/AdActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->setContentView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    invoke-static {p1}, La;->a(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lt;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method public static launchAdActivity(Ld;Le;)V
    .locals 4
    .parameter "adManager"
    .parameter "adOpener"

    .prologue
    sget-object v0, Lcom/google/ads/AdActivity;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/ads/AdActivity;->c:Ld;

    if-nez v1, :cond_1

    sput-object p0, Lcom/google/ads/AdActivity;->c:Ld;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    invoke-virtual {p0}, Ld;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/ads/AdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.ads.AdOpener"

    invoke-virtual {p1}, Le;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_1
    const-string v2, "Launching AdActivity."

    invoke-static {v2}, Lt;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lcom/google/ads/AdActivity;->c:Ld;

    if-eq v1, p0, :cond_0

    const-string v1, "Tried to launch a new AdActivity with a different AdManager."

    invoke-static {v1}, Lt;->b(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v1

    monitor-exit v0

    throw p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lt;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getVideoView()Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/VideoView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    const-string v0, "Video finished playing."

    invoke-static {v0}, Lt;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->e:Lg;

    const-string v1, "javascript:videoController.showReplayAndSplash_()"

    invoke-virtual {v0, v1}, Lg;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/AdActivity;

    if-nez v1, :cond_0

    sput-object p0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/AdActivity;

    :cond_0
    iput-object v6, p0, Lcom/google/ads/AdActivity;->g:Landroid/widget/RelativeLayout;

    iput-boolean v8, p0, Lcom/google/ads/AdActivity;->h:Z

    iput-object v6, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.ads.AdOpener"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Could not get the Bundle used to create AdActivity."

    invoke-direct {p0, v1}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Le;

    invoke-direct {v2, v1}, Le;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Le;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Le;->c()Ljava/util/HashMap;

    move-result-object v4

    sget-object v2, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/AdActivity;

    if-ne p0, v2, :cond_2

    sget-object v2, Lcom/google/ads/AdActivity;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/google/ads/AdActivity;->c:Ld;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/google/ads/AdActivity;->c:Ld;

    invoke-virtual {v3}, Ld;->o()V

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-string v2, "intent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-boolean v9, p0, Lcom/google/ads/AdActivity;->h:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/ads/AdActivity;->f:J

    if-nez v4, :cond_4

    const-string v1, "Could not get the paramMap in launchIntent()"

    invoke-direct {p0, v1}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v3, "currentAdManager is null while trying to call onPresentScreen()."

    invoke-static {v3}, Lt;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4
    const-string v1, "u"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "Could not get the URL parameter in launchIntent()."

    invoke-direct {p0, v1}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "i"

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "m"

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v2, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v2

    :goto_2
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/google/ads/AdActivity;->b:Lcom/google/ads/AdActivity;

    if-nez v2, :cond_6

    sget-object v2, Lcom/google/ads/AdActivity;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    sget-object v3, Lcom/google/ads/AdActivity;->c:Ld;

    if-eqz v3, :cond_9

    sput-object p0, Lcom/google/ads/AdActivity;->b:Lcom/google/ads/AdActivity;

    sget-object v3, Lcom/google/ads/AdActivity;->c:Ld;

    invoke-virtual {v3}, Ld;->p()V

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :try_start_3
    const-string v2, "Launching an intent from AdActivity."

    invoke-static {v2}, Lt;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/AdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lt;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v4

    goto :goto_2

    :cond_8
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v1, v4

    goto :goto_2

    :cond_9
    :try_start_4
    const-string v3, "currentAdManager is null while trying to call onLeaveApplication()."

    invoke-static {v3}, Lt;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_a
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/ads/AdActivity;->g:Landroid/widget/RelativeLayout;

    const-string v2, "webapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v1, Lg;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lg;-><init>(Landroid/content/Context;Lcom/google/ads/AdSize;)V

    iput-object v1, p0, Lcom/google/ads/AdActivity;->e:Lg;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->e:Lg;

    invoke-static {v1}, Lu;->b(Landroid/webkit/WebView;)V

    sget-object v1, Lcom/google/ads/AdActivity;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    sget-object v2, Lcom/google/ads/AdActivity;->c:Ld;

    if-eqz v2, :cond_c

    new-instance v2, Lh;

    sget-object v3, Lcom/google/ads/AdActivity;->c:Ld;

    sget-object v5, La$a;->b:La$a;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v7}, Lh;-><init>(Ld;La$a;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v1

    invoke-virtual {v2}, Lh;->b()V

    iget-object v1, p0, Lcom/google/ads/AdActivity;->e:Lg;

    invoke-virtual {v1, v2}, Lg;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v1, "u"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "baseurl"

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "html"

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/google/ads/AdActivity;->e:Lg;

    invoke-virtual {v2, v1}, Lg;->loadUrl(Ljava/lang/String;)V

    :goto_4
    const/4 v1, 0x4

    if-eqz v7, :cond_b

    const-string v2, "p"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v1, v9

    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/google/ads/AdActivity;->e:Lg;

    invoke-direct {p0, v2, v8, v1}, Lcom/google/ads/AdActivity;->a(Lg;ZI)V

    goto/16 :goto_0

    :cond_c
    :try_start_6
    const-string v2, "currentAdManager is null while trying to show a webapp."

    invoke-direct {p0, v2}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_d
    if-eqz v3, :cond_e

    iget-object v1, p0, Lcom/google/ads/AdActivity;->e:Lg;

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual/range {v1 .. v6}, Lg;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string v1, "Could not get the URL or HTML parameter to show a web app."

    invoke-direct {p0, v1}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "l"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v1, v8

    goto :goto_5

    :cond_10
    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v1, Lcom/google/ads/AdActivity;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lcom/google/ads/AdActivity;->c:Ld;

    if-eqz v2, :cond_11

    sget-object v2, Lcom/google/ads/AdActivity;->c:Ld;

    invoke-virtual {v2}, Ld;->f()Lg;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/AdActivity;->e:Lg;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v1

    sget-object v1, Lcom/google/ads/AdActivity;->c:Ld;

    invoke-virtual {v1}, Ld;->j()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/AdActivity;->e:Lg;

    invoke-direct {p0, v2, v9, v1}, Lcom/google/ads/AdActivity;->a(Lg;ZI)V

    goto/16 :goto_0

    :cond_11
    :try_start_8
    const-string v2, "currentAdManager is null while trying to show an interstitial."

    invoke-direct {p0, v2}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown AdOpener, <action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->e:Lg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->e:Lg;

    invoke-static {v0}, La;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->e:Lg;

    invoke-virtual {v0, v2}, Lg;->a(Lcom/google/ads/AdActivity;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iput-object v2, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/VideoView;

    :cond_2
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/google/ads/AdActivity;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/ads/AdActivity;->c:Ld;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/ads/AdActivity;->c:Ld;

    invoke-virtual {v1}, Ld;->n()V

    const/4 v1, 0x0

    sput-object v1, Lcom/google/ads/AdActivity;->c:Ld;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v2, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/AdActivity;

    :cond_3
    sget-object v0, Lcom/google/ads/AdActivity;->b:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_4

    sput-object v2, Lcom/google/ads/AdActivity;->b:Lcom/google/ads/AdActivity;

    :cond_4
    const-string v0, "AdActivity is closing."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :cond_5
    :try_start_1
    const-string v1, "currentAdManager is null while trying to destroy AdActivity."

    invoke-static {v1}, Lt;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    const-string v0, "Video is ready to play."

    invoke-static {v0}, Lt;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->e:Lg;

    const-string v1, "javascript:videoController.hideSplashAndPlayVideo_()"

    invoke-virtual {v0, v1}, Lg;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->h:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/AdActivity;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "Launcher AdActivity got focus and is closing."

    invoke-static {v0}, Lt;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_0
    return-void
.end method

.method public showVideo(Landroid/widget/VideoView;)V
    .locals 4
    .parameter "videoView"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->e:Lg;

    if-nez v0, :cond_0

    const-string v0, "Couldn\'t get adWebView to show the video."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->e:Lg;

    invoke-virtual {v0, v3}, Lg;->setBackgroundColor(I)V

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/ads/AdActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
