.class Lcom/google/googlenav/appwidget/gohome/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/gohome/d;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x45

    const-string v1, "g"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/d;->a:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->f(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)V

    return-void
.end method
