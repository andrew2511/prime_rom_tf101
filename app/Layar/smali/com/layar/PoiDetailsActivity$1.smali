.class Lcom/layar/PoiDetailsActivity$1;
.super Ljava/lang/Object;
.source "PoiDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/PoiDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/PoiDetailsActivity;


# direct methods
.method constructor <init>(Lcom/layar/PoiDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/PoiDetailsActivity$1;->this$0:Lcom/layar/PoiDetailsActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity$1;->this$0:Lcom/layar/PoiDetailsActivity;

    invoke-static {v0}, Lcom/layar/PoiDetailsActivity;->access$0(Lcom/layar/PoiDetailsActivity;)V

    .line 108
    return-void
.end method
