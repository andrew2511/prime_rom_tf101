.class Lcom/google/googlenav/layer/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/google/googlenav/layer/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/layer/l;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/layer/k;->b:Lcom/google/googlenav/layer/l;

    iput-object p2, p0, Lcom/google/googlenav/layer/k;->a:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/layer/k;->b:Lcom/google/googlenav/layer/l;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/l;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/layer/LayerInfoProvider;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/googlenav/layer/k;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
