.class Lcom/google/googlenav/layer/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/layer/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/layer/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/layer/j;->a:Lcom/google/googlenav/layer/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/layer/j;->a:Lcom/google/googlenav/layer/l;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/l;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/layer/LayerInfoProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
