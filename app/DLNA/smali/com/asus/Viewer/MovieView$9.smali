.class Lcom/asus/Viewer/MovieView$9;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/MovieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/MovieView;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/MovieView;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 543
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v1}, Lcom/asus/Viewer/MovieView;->finish()V

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 547
    .local v0, size:I
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v1

    const/4 v2, 0x1

    sub-int v2, v0, v2

    if-ge v1, v2, :cond_2

    .line 548
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v2, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v2}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/asus/Viewer/MovieView;->access$1002(Lcom/asus/Viewer/MovieView;I)I

    .line 549
    iget-object v2, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v3}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/asus/Viewer/MovieView;->access$1102(Lcom/asus/Viewer/MovieView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 550
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$1300(Lcom/asus/Viewer/MovieView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$1200(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v3}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v1}, Lcom/asus/Viewer/MovieView;->openVideo()V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$9;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v1}, Lcom/asus/Viewer/MovieView;->finish()V

    goto :goto_0
.end method
