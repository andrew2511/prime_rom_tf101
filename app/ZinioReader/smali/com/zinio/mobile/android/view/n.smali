.class final Lcom/zinio/mobile/android/view/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LoginActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/zinio/mobile/android/view/n;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zinio/mobile/android/view/n;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LoginActivity;->a(Lcom/zinio/mobile/android/view/LoginActivity;)Lcom/zinio/mobile/android/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/util/e;->b()V

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
