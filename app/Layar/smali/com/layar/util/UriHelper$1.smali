.class Lcom/layar/util/UriHelper$1;
.super Ljava/lang/Object;
.source "UriHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/util/UriHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/util/UriHelper;


# direct methods
.method constructor <init>(Lcom/layar/util/UriHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/util/UriHelper$1;->this$0:Lcom/layar/util/UriHelper;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/layar/util/UriHelper$1;->this$0:Lcom/layar/util/UriHelper;

    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layar/util/UriHelper;->access$3(Lcom/layar/util/UriHelper;Lcom/layar/util/SensorHelper;)V

    .line 159
    return-void
.end method
