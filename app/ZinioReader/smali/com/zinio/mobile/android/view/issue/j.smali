.class final Lcom/zinio/mobile/android/view/issue/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/issue/a;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/issue/a;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/j;->a:Lcom/zinio/mobile/android/view/issue/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/j;->a:Lcom/zinio/mobile/android/view/issue/a;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/j;->a:Lcom/zinio/mobile/android/view/issue/a;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v1, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 921
    :goto_0
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/j;->a:Lcom/zinio/mobile/android/view/issue/a;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->b:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v1, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    goto :goto_0
.end method
