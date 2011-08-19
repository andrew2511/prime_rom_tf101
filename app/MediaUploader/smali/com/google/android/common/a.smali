.class final Lcom/google/android/common/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/common/f;


# instance fields
.field private synthetic a:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/common/a;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/common/a;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
