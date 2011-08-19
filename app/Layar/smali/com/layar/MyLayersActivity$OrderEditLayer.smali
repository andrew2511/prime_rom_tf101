.class Lcom/layar/MyLayersActivity$OrderEditLayer;
.super Lcom/layar/MyLayersActivity$DeleteEditLayer;
.source "MyLayersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/MyLayersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderEditLayer"
.end annotation


# instance fields
.field public final anchorName:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/MyLayersActivity;


# direct methods
.method constructor <init>(Lcom/layar/MyLayersActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "movableName"
    .parameter "anchorName"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/layar/MyLayersActivity$OrderEditLayer;->this$0:Lcom/layar/MyLayersActivity;

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/layar/MyLayersActivity$DeleteEditLayer;-><init>(Lcom/layar/MyLayersActivity;Ljava/lang/String;)V

    .line 297
    iput-object p3, p0, Lcom/layar/MyLayersActivity$OrderEditLayer;->anchorName:Ljava/lang/String;

    .line 298
    const/4 v0, 0x1

    iput v0, p0, Lcom/layar/MyLayersActivity$OrderEditLayer;->state:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Order layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/MyLayersActivity$OrderEditLayer;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " before "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/MyLayersActivity$OrderEditLayer;->anchorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
