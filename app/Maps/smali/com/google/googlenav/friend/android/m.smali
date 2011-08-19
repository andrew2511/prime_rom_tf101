.class Lcom/google/googlenav/friend/android/m;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/m;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/m;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->b(Lcom/google/googlenav/friend/android/InviteActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/android/InviteItemView;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/m;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/friend/android/x;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/x;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/x;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/android/InviteItemView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    check-cast p2, Lcom/google/googlenav/friend/android/InviteItemView;

    move-object v0, p2

    goto :goto_0
.end method
