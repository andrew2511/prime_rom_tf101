.class Lcom/asus/Viewer/MovieView$7;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 522
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$7;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$7;->this$0:Lcom/asus/Viewer/MovieView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/Viewer/MovieView;->access$002(Lcom/asus/Viewer/MovieView;Z)Z

    .line 525
    return-void
.end method
