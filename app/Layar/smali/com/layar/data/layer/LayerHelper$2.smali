.class Lcom/layar/data/layer/LayerHelper$2;
.super Ljava/lang/Object;
.source "LayerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerHelper;->checkStatus(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$layer:Lcom/layar/data/layer/Layer20;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerHelper$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/layar/data/layer/LayerHelper$2;->val$layer:Lcom/layar/data/layer/Layer20;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 117
    new-instance v0, Lcom/layar/data/layer/OpenLayerTask;

    iget-object v1, p0, Lcom/layar/data/layer/LayerHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/layar/data/layer/OpenLayerTask;-><init>(Landroid/content/Context;IZ)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/layar/data/layer/LayerHelper$2;->val$layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/OpenLayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    return-void
.end method
