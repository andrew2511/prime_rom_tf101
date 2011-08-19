.class Lh/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/fo;


# direct methods
.method constructor <init>(Lh/fo;)V
    .locals 0

    iput-object p1, p0, Lh/ah;->a:Lh/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lh/ah;->a:Lh/fo;

    invoke-virtual {v0}, Lh/fo;->w()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/ah;->a:Lh/fo;

    invoke-virtual {v0}, Lh/fo;->j()V

    goto :goto_0
.end method
