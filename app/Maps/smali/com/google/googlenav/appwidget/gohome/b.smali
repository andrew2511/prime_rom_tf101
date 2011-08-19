.class Lcom/google/googlenav/appwidget/gohome/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/w;

.field final synthetic b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;Lcom/google/googlenav/ui/view/android/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/gohome/b;->a:Lcom/google/googlenav/ui/view/android/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->a:Lcom/google/googlenav/ui/view/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->b(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->a:Lcom/google/googlenav/ui/view/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/w;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/b;->a:Lcom/google/googlenav/ui/view/android/w;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/w;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/appwidget/gohome/e;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/gohome/e;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->d(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Gallery;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/gohome/e;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/appwidget/gohome/b;->b:Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;->c(Lcom/google/googlenav/appwidget/gohome/GoHomeCreateShortcutActivity;)Lcom/google/googlenav/appwidget/gohome/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/appwidget/gohome/e;->b()V

    goto :goto_0
.end method
