.class Lh/ed;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/P;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lh/ds;


# direct methods
.method constructor <init>(Lh/ds;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh/ed;->d:Lh/ds;

    iput-object p2, p0, Lh/ed;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lh/ed;->b:Ljava/lang/String;

    iput-object p4, p0, Lh/ed;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lh/ed;->d:Lh/ds;

    iget-object v1, p0, Lh/ed;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lh/ed;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lh/ds;->a(Lh/ds;Landroid/widget/ImageView;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
