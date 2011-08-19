.class Lcom/google/googlenav/wallpaper/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/wallpaper/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/wallpaper/c;->a:Lcom/google/googlenav/wallpaper/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/c;->a:Lcom/google/googlenav/wallpaper/a;

    iget-object v0, v0, Lcom/google/googlenav/wallpaper/a;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zoom_level"

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/c;->a:Lcom/google/googlenav/wallpaper/a;

    invoke-static {v2}, Lcom/google/googlenav/wallpaper/a;->a(Lcom/google/googlenav/wallpaper/a;)Lf/v;

    move-result-object v2

    invoke-virtual {v2}, Lf/v;->c()Lf/l;

    move-result-object v2

    invoke-virtual {v2}, Lf/l;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
