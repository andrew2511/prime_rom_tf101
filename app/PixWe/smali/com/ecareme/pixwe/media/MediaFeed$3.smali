.class Lcom/ecareme/pixwe/media/MediaFeed$3;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/MediaFeed;->showToast(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/MediaFeed;

.field private final synthetic val$centered:Z

.field private final synthetic val$duration:I

.field private final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/MediaFeed;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    iput-object p2, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->val$string:Ljava/lang/String;

    iput p3, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->val$duration:I

    iput-boolean p4, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->val$centered:Z

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 518
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/MediaFeed;->access$4(Lcom/ecareme/pixwe/media/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/MediaFeed;->access$4(Lcom/ecareme/pixwe/media/MediaFeed;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->val$string:Ljava/lang/String;

    iget v3, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->val$duration:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 520
    .local v0, toast:Landroid/widget/Toast;
    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaFeed$3;->val$centered:Z

    if-eqz v1, :cond_0

    .line 521
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_1
    return-void
.end method
