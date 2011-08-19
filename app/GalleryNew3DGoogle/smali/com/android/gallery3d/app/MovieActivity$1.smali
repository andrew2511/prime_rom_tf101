.class Lcom/android/gallery3d/app/MovieActivity$1;
.super Lcom/android/gallery3d/app/MoviePlayer;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-static {v0}, Lcom/android/gallery3d/app/MovieActivity;->access$000(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 53
    :cond_0
    return-void
.end method
