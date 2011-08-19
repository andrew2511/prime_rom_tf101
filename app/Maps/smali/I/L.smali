.class LI/L;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LI/x;


# direct methods
.method constructor <init>(LI/x;)V
    .locals 0

    iput-object p1, p0, LI/L;->a:LI/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LI/L;->a:LI/x;

    invoke-virtual {v0}, LI/x;->h()V

    return-void
.end method
