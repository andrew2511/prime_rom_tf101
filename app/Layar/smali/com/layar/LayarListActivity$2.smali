.class Lcom/layar/LayarListActivity$2;
.super Ljava/lang/Object;
.source "LayarListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/LayarListActivity;->layerChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/LayarListActivity;


# direct methods
.method constructor <init>(Lcom/layar/LayarListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/LayarListActivity$2;->this$0:Lcom/layar/LayarListActivity;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/layar/LayarListActivity$2;->this$0:Lcom/layar/LayarListActivity;

    invoke-static {v0}, Lcom/layar/LayarListActivity;->access$1(Lcom/layar/LayarListActivity;)V

    .line 227
    return-void
.end method
