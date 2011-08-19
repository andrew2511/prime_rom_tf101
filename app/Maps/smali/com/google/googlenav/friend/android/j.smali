.class Lcom/google/googlenav/friend/android/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/j;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/j;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->c(Lcom/google/googlenav/friend/android/InviteActivity;)Lcom/google/googlenav/friend/android/z;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/j;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->d(Lcom/google/googlenav/friend/android/InviteActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/j;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    :cond_0
    return-void
.end method
