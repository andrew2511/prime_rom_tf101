.class Lcom/google/android/music/QueryBrowserActivity$6;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/QueryBrowserActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/QueryBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$6;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$6;->this$0:Lcom/google/android/music/QueryBrowserActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/music/QueryBrowserActivity;->removeDialog(I)V

    .line 1084
    return-void
.end method
