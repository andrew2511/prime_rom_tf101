.class Lcom/android/gallery3d/app/PhotoPage$2;
.super Landroid/content/BroadcastReceiver;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$2;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const-string v1, "image/*"

    invoke-static {p1, v1}, Lcom/android/gallery3d/util/Utils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$702(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 165
    return-void
.end method