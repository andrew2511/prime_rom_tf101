.class public Lcom/google/googlenav/wallpaper/MapWallpaper;
.super Landroid/service/wallpaper/WallpaperService;


# instance fields
.field private a:Lcom/google/googlenav/wallpaper/a;

.field private b:Z

.field private c:Landroid/content/BroadcastReceiver;

.field private volatile d:Z

.field private volatile e:Ljava/lang/String;

.field private f:Landroid/graphics/Paint;

.field private volatile g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->d:Z

    const-string v0, "(c) 2011 Google"

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->e:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->g:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/wallpaper/MapWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/wallpaper/MapWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/wallpaper/MapWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/wallpaper/MapWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/google/googlenav/wallpaper/MapWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->d:Z

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/wallpaper/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/wallpaper/f;-><init>(Lcom/google/googlenav/wallpaper/MapWallpaper;)V

    iput-object v1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->c:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    new-instance v0, Lcom/google/googlenav/wallpaper/a;

    invoke-direct {v0, p0}, Lcom/google/googlenav/wallpaper/a;-><init>(Lcom/google/googlenav/wallpaper/MapWallpaper;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->a:Lcom/google/googlenav/wallpaper/a;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->a:Lcom/google/googlenav/wallpaper/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/wallpaper/a;->setTouchEventsEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->a:Lcom/google/googlenav/wallpaper/a;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->a:Lcom/google/googlenav/wallpaper/a;

    if-eqz v0, :cond_0

    const-string v0, "wallpaper_settings"

    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->a:Lcom/google/googlenav/wallpaper/a;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/MapWallpaper;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
