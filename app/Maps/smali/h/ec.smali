.class Lh/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/googlenav/ui/Workspace;

.field final synthetic c:Lh/dk;


# direct methods
.method constructor <init>(Lh/dk;Ljava/util/Map;Lcom/google/googlenav/ui/Workspace;)V
    .locals 0

    iput-object p1, p0, Lh/ec;->c:Lh/dk;

    iput-object p2, p0, Lh/ec;->a:Ljava/util/Map;

    iput-object p3, p0, Lh/ec;->b:Lcom/google/googlenav/ui/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lh/ec;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lh/ec;->b:Lcom/google/googlenav/ui/Workspace;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lh/ec;->b:Lcom/google/googlenav/ui/Workspace;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    goto :goto_0
.end method
