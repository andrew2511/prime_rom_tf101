.class Lh/eb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/N;


# instance fields
.field final synthetic a:Landroid/widget/TabHost;

.field final synthetic b:Lh/dk;


# direct methods
.method constructor <init>(Lh/dk;Landroid/widget/TabHost;)V
    .locals 0

    iput-object p1, p0, Lh/eb;->b:Lh/dk;

    iput-object p2, p0, Lh/eb;->a:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lh/eb;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method
