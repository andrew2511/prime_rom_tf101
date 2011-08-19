.class Lcom/android/camera/ui/GLListView$2;
.super Ljava/lang/Object;
.source "GLListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GLListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GLListView;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/ui/GLListView$2;->this$0:Lcom/android/camera/ui/GLListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/GLListView$2;->this$0:Lcom/android/camera/ui/GLListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/GLListView;->access$000(Lcom/android/camera/ui/GLListView;Z)V

    .line 108
    return-void
.end method
