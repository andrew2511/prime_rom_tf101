.class LI/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:LI/y;


# direct methods
.method constructor <init>(LI/y;II)V
    .locals 0

    iput-object p1, p0, LI/d;->c:LI/y;

    iput p2, p0, LI/d;->a:I

    iput p3, p0, LI/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LI/d;->c:LI/y;

    iget-object v0, v0, LI/y;->h:Li/bl;

    iget v1, p0, LI/d;->a:I

    iget v2, p0, LI/d;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Li/bl;->a(IILjava/lang/Object;)Z

    return-void
.end method
