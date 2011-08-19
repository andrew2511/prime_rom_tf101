.class final Lcom/zinio/mobile/android/view/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/zinio/mobile/android/view/am;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/zinio/mobile/android/view/am;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->b:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/am;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;Landroid/content/Context;)V

    .line 526
    return-void
.end method
