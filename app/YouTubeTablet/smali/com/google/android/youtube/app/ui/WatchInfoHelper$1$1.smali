.class Lcom/google/android/youtube/app/ui/WatchInfoHelper$1$1;
.super Ljava/lang/Object;
.source "WatchInfoHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1$1;->this$1:Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1$1;->this$1:Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->access$300(Lcom/google/android/youtube/app/ui/WatchInfoHelper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1$1;->this$1:Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;

    iget-object v1, v1, Lcom/google/android/youtube/app/ui/WatchInfoHelper$1;->val$branding:Lcom/google/android/youtube/core/model/Branding;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 181
    return-void
.end method
