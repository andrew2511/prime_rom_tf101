.class Lcom/google/android/common/SwipeySwitcher$2;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Lcom/google/android/common/SwipeySwitcher$IMakeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$2;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$2;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$100(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, v:Landroid/view/View;
    return-object v0
.end method
