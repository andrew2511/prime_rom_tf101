.class Lcom/google/android/youtube/videos/phone/WatchActivity$1;
.super Ljava/lang/Object;
.source "WatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/phone/WatchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/phone/WatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/WatchActivity$1;->this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity$1;->this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->onUpClicked()V

    .line 134
    return-void
.end method
