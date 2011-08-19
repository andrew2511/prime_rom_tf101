.class Lcom/google/googlenav/wallpaper/e;
.super Landroid/view/View;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/wallpaper/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/a;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public postInvalidate()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/a;

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/a;->a()V

    return-void
.end method
