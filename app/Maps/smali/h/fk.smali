.class Lh/fk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/af;


# direct methods
.method constructor <init>(Lh/af;)V
    .locals 0

    iput-object p1, p0, Lh/fk;->a:Lh/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lh/fk;->a:Lh/af;

    invoke-static {v0}, Lh/af;->a(Lh/af;)Lh/bX;

    move-result-object v0

    invoke-virtual {v0}, Lh/bX;->b()V

    return-void
.end method
