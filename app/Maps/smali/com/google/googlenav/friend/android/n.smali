.class Lcom/google/googlenav/friend/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/widget/ArrayAdapter;

.field final synthetic c:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/n;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/n;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/google/googlenav/friend/android/n;->b:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/friend/android/n;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {v1}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/googlenav/friend/android/n;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/friend/android/n;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0, v2}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Lcom/google/googlenav/friend/android/InviteActivity;Ljava/util/List;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/friend/android/n;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->d(Lcom/google/googlenav/friend/android/InviteActivity;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/friend/android/n;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/friend/android/n;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->c(Lcom/google/googlenav/friend/android/InviteActivity;)Lcom/google/googlenav/friend/android/z;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method
