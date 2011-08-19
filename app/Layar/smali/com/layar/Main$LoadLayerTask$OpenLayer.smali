.class Lcom/layar/Main$LoadLayerTask$OpenLayer;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Main$LoadLayerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenLayer"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/Main$LoadLayerTask;


# direct methods
.method private constructor <init>(Lcom/layar/Main$LoadLayerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/layar/Main$LoadLayerTask$OpenLayer;->this$1:Lcom/layar/Main$LoadLayerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/Main$LoadLayerTask;Lcom/layar/Main$LoadLayerTask$OpenLayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/layar/Main$LoadLayerTask$OpenLayer;-><init>(Lcom/layar/Main$LoadLayerTask;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask$OpenLayer;->this$1:Lcom/layar/Main$LoadLayerTask;

    invoke-static {v0}, Lcom/layar/Main$LoadLayerTask;->access$3(Lcom/layar/Main$LoadLayerTask;)Lcom/layar/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Main;->access$3(Lcom/layar/Main;)V

    .line 413
    return-void
.end method
