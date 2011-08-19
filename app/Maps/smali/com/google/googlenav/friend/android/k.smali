.class Lcom/google/googlenav/friend/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/k;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/k;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    return-void
.end method
