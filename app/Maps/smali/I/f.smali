.class LI/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LI/y;


# direct methods
.method constructor <init>(LI/y;)V
    .locals 0

    iput-object p1, p0, LI/f;->a:LI/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LI/f;->a:LI/y;

    iget-object v0, v0, LI/y;->h:Li/bl;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Li/bl;->a(IILjava/lang/Object;)Z

    return-void
.end method
