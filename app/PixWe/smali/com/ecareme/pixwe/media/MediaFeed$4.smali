.class Lcom/ecareme/pixwe/media/MediaFeed$4;
.super Landroid/database/ContentObserver;
.source "MediaFeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/MediaFeed;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/MediaFeed;

.field private final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/MediaFeed;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaFeed$4;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    iput-object p3, p0, Lcom/ecareme/pixwe/media/MediaFeed$4;->val$uri:Ljava/lang/String;

    .line 975
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed$4;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->access$8(Lcom/ecareme/pixwe/media/MediaFeed;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaFeed$4;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed$4;->val$uri:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->access$10(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V

    .line 980
    :cond_0
    return-void
.end method
