.class Lcom/layar/MyLayersActivity$DeleteEditLayer;
.super Ljava/lang/Object;
.source "MyLayersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/MyLayersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteEditLayer"
.end annotation


# static fields
.field public static final DELETE:I = 0x0

.field public static final ORDER:I = 0x1


# instance fields
.field public final layerName:Ljava/lang/String;

.field public state:I

.field final synthetic this$0:Lcom/layar/MyLayersActivity;


# direct methods
.method public constructor <init>(Lcom/layar/MyLayersActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "layerName"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/layar/MyLayersActivity$DeleteEditLayer;->this$0:Lcom/layar/MyLayersActivity;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/layar/MyLayersActivity$DeleteEditLayer;->layerName:Ljava/lang/String;

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/MyLayersActivity$DeleteEditLayer;->state:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/MyLayersActivity$DeleteEditLayer;->layerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
