.class Lcom/google/googlenav/wallpaper/a;
.super Landroid/service/wallpaper/WallpaperService$Engine;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/googlenav/gesture/p;
.implements Lcom/google/googlenav/wallpaper/b;
.implements Lf/O;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/MapWallpaper;

.field private b:LaB/h;

.field private c:Lf/v;

.field private d:Lcom/google/googlenav/android/w;

.field private e:Lak/h;

.field private f:Lcom/google/googlenav/ui/bu;

.field private g:F

.field private h:F

.field private i:J

.field private j:I

.field private k:I

.field private l:Z

.field private m:LX/d;

.field private n:Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;

.field private o:Lf/h;

.field private p:J


# direct methods
.method constructor <init>(Lcom/google/googlenav/wallpaper/MapWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/wallpaper/a;)Lf/v;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->b:LaB/h;

    invoke-virtual {v0}, LaB/h;->f()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->b:LaB/h;

    const/high16 v2, 0x6400

    invoke-virtual {v1, v2}, LaB/h;->b(I)Z

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->b:LaB/h;

    invoke-virtual {v1, v3, v3, p1, p2}, LaB/h;->b(IIII)V

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->b:LaB/h;

    invoke-virtual {v1, v0}, LaB/h;->b(I)Z

    return-void
.end method

.method private a(Lak/h;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lak/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lak/h;->g()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->f:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->z()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->c()[LH/l;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v0, v1, v3

    instance-of v4, v0, Lbc/a;

    if-eqz v4, :cond_2

    check-cast v0, Lbc/a;

    invoke-virtual {v0, v5}, Lbc/a;->a(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    instance-of v4, v0, LH/g;

    if-eqz v4, :cond_1

    check-cast v0, LH/g;

    invoke-virtual {v0, v5}, LH/g;->a(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aa()V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zoom_level"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_4

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->f:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v1, v0, v0, v5}, Lcom/google/googlenav/ui/bu;->a(ZZZ)V

    return-void

    :cond_4
    move v0, v5

    goto :goto_2
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    if-eqz v0, :cond_0

    const-string v0, "weather_type"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    invoke-static {v0}, LX/b;->valueOf(Ljava/lang/String;)LX/b;

    move-result-object v0

    invoke-virtual {v1, v0}, LX/d;->a(LX/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    const/16 v0, 0x4c

    const-string v1, "a"

    if-eqz p1, :cond_0

    const-string v2, "o"

    :goto_0
    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-virtual {v0}, Lf/v;->c()Lf/l;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lf/l;->d()Lf/l;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->a(Lf/l;)V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->a()V

    return-void

    :cond_0
    const-string v2, "i"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lf/l;->c()Lf/l;

    move-result-object v0

    goto :goto_1
.end method

.method private b(II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->f:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/googlenav/wallpaper/a;->p:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iput-wide v0, p0, Lcom/google/googlenav/wallpaper/a;->p:J

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->e:Lak/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/a;->a(Lak/h;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->b:LaB/h;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lf/v;->a(Lk/m;ZZZZ)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->b:LaB/h;

    invoke-static {v0, p1, p2}, Lcom/google/googlenav/ui/x;->a(Lk/m;II)Lcom/google/googlenav/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->f:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/googlenav/ui/bu;->a(Lcom/google/googlenav/ui/x;IZ)V

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->f:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bu;->a(Lcom/google/googlenav/ui/x;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->o:Lf/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->o:Lf/h;

    invoke-virtual {v1, v0}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->a(Lf/h;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/a;->o:Lf/h;

    goto :goto_0
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "zoom_level"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lf/v;->a(Lf/l;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/wallpaper/a;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/a;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private d()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/a;->e()Z

    move-result v1

    if-nez v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method private e()Z
    .locals 2

    iget v0, p0, Lcom/google/googlenav/wallpaper/a;->j:I

    iget v1, p0, Lcom/google/googlenav/wallpaper/a;->k:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method a()V
    .locals 9

    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/a;->d()I

    move-result v3

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/a;->f()I

    move-result v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v5, v3, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/google/googlenav/wallpaper/a;->g:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    neg-int v5, v5

    sub-int v6, v4, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/google/googlenav/wallpaper/a;->h:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    neg-int v6, v6

    iget-object v7, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-virtual {v7}, Lf/v;->t()I

    move-result v7

    if-ne v3, v7, :cond_2

    iget-object v7, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-virtual {v7}, Lf/v;->s()I

    move-result v7

    if-eq v4, v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-virtual {v7, v3, v4}, Lf/v;->d(II)V

    :cond_3
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_6

    if-lez v2, :cond_6

    if-lez v1, :cond_6

    :try_start_1
    iget-object v7, p0, Lcom/google/googlenav/wallpaper/a;->b:LaB/h;

    invoke-virtual {v7, v4}, LaB/h;->a(Landroid/graphics/Canvas;)V

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, v3, v1}, Lcom/google/googlenav/wallpaper/a;->b(II)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v5, p0, Lcom/google/googlenav/wallpaper/a;->l:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->isPreview()Z

    move-result v6

    invoke-virtual {v5, v4, v2, v3, v6}, LX/d;->a(Landroid/graphics/Canvas;IIZ)V

    :cond_4
    iget-object v3, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->e(Lcom/google/googlenav/wallpaper/MapWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v5}, Lcom/google/googlenav/wallpaper/MapWallpaper;->c(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v5, v8

    int-to-float v5, v5

    sub-int v6, v1, v8

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v7}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/google/googlenav/wallpaper/a;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_7

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_7
    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v4

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0, p1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v4}, Lcom/google/googlenav/wallpaper/MapWallpaper;->c(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/gesture/a;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/google/googlenav/wallpaper/a;->a(Z)V

    :cond_0
    return v1
.end method

.method public a(Lcom/google/googlenav/gesture/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/googlenav/gesture/k;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->a()V

    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1

    const-string v0, "android.wallpaper.tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    invoke-virtual {v0, p2, p3}, LX/d;->a(II)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 9

    const/4 v3, 0x0

    const/16 v8, 0x4c

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/L;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/android/L;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    new-instance v0, Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;

    invoke-direct {v0}, Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/a;->n:Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->n:Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v0, v1, p0}, Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;->a(Landroid/content/Context;Lcom/google/googlenav/gesture/p;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/aT;->u(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v3, v6}, Lcom/google/googlenav/android/w;->a(Ljava/util/Locale;Lcom/google/googlenav/android/N;Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->n()Lcom/google/googlenav/ui/android/ar;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/wallpaper/e;

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/wallpaper/e;-><init>(Lcom/google/googlenav/wallpaper/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ar;->a(Landroid/view/View;)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->j()Lak/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/a;->e:Lak/h;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->g()Lf/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/a;->f:Lcom/google/googlenav/ui/bu;

    new-instance v0, LaB/h;

    invoke-direct {v0, v3}, LaB/h;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/a;->b:LaB/h;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->e:Lak/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/a;->a(Lak/h;)V

    new-instance v0, LX/d;

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->getDesiredMinimumWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->getDesiredMinimumHeight()I

    move-result v3

    iget-object v5, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LX/d;-><init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/b;Lf/v;)V

    iput-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/a;->c()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->c(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0, v7}, Lcom/google/googlenav/wallpaper/MapWallpaper;->b(Lcom/google/googlenav/wallpaper/MapWallpaper;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->g()Lf/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/v;->a(Lf/O;)V

    :cond_0
    new-instance v0, Lcom/google/googlenav/wallpaper/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/wallpaper/d;-><init>(Lcom/google/googlenav/wallpaper/a;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "a"

    const-string v1, "p"

    invoke-static {v8, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "is_wallpaper_set"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "is_wallpaper_set"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    const-string v0, "a"

    const-string v1, "s"

    invoke-static {v8, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_wallpaper_set"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->d(Lcom/google/googlenav/wallpaper/MapWallpaper;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x4c

    const-string v1, "a"

    const-string v2, "u"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_wallpaper_set"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zoom_level"

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-virtual {v2}, Lf/v;->c()Lf/l;

    move-result-object v2

    invoke-virtual {v2}, Lf/l;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1

    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    iput p1, p0, Lcom/google/googlenav/wallpaper/a;->g:F

    iput p2, p0, Lcom/google/googlenav/wallpaper/a;->h:F

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    invoke-virtual {v0, p1}, LX/d;->a(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->a()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, -0x100

    const/4 v3, 0x1

    const-string v0, "show_traffic"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const-string v1, "show_traffic"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Z)V

    :cond_0
    iput-boolean v3, p0, Lcom/google/googlenav/wallpaper/a;->l:Z

    const-string v0, "weather_on"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "weather_on"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/wallpaper/a;->l:Z

    :cond_1
    const-string v0, "map_mode"

    const-string v1, "map_mode_satellite"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const-string v1, "map_mode_terrain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v1}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->b(I)Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/wallpaper/a;->b(Landroid/content/SharedPreferences;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/wallpaper/a;->a(Landroid/content/SharedPreferences;)V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->a()V

    :cond_2
    return-void

    :cond_3
    const-string v1, "map_mode_normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    invoke-static {v0}, Lcom/google/googlenav/wallpaper/MapWallpaper;->a(Lcom/google/googlenav/wallpaper/MapWallpaper;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    iput p3, p0, Lcom/google/googlenav/wallpaper/a;->j:I

    iput p4, p0, Lcom/google/googlenav/wallpaper/a;->k:I

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->c:Lf/v;

    invoke-direct {p0}, Lcom/google/googlenav/wallpaper/a;->d()I

    move-result v1

    invoke-virtual {v0, v1, p4}, Lf/v;->d(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->a()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/wallpaper/a;->i:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/a;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->n:Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;->a(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    invoke-virtual {v0, p1}, LX/d;->a(Landroid/view/MotionEvent;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/wallpaper/a;->i:J

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->m:LX/d;

    invoke-virtual {v0, p1}, LX/d;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->e:Lak/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/wallpaper/a;->a(Lak/h;)V

    invoke-virtual {p0}, Lcom/google/googlenav/wallpaper/a;->a()V

    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/googlenav/wallpaper/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/wallpaper/c;-><init>(Lcom/google/googlenav/wallpaper/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "UpdatingWallpaperZoomPref"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->e:Lak/h;

    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->e:Lak/h;

    invoke-virtual {v0}, Lak/h;->f()V

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/wallpaper/a;->d:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->n(Z)V

    goto :goto_0
.end method
