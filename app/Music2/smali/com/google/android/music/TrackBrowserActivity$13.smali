.class Lcom/google/android/music/TrackBrowserActivity$13;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$13;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->removeDialog(I)V

    .line 1294
    return-void
.end method
