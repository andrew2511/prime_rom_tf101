.class Lcom/android/gallery3d/app/MoviePlayer$5;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$5;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/VideoView;->start()V

    .line 149
    return-void
.end method
