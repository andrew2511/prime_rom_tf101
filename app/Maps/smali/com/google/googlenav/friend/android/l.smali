.class Lcom/google/googlenav/friend/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/l;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/l;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Lcom/google/googlenav/friend/android/InviteActivity;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
