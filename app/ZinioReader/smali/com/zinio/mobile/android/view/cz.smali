.class final Lcom/zinio/mobile/android/view/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cz;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cz;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b()V

    .line 160
    return-void
.end method
