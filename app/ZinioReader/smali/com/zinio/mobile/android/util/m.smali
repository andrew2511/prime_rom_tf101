.class final Lcom/zinio/mobile/android/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/util/e;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/util/e;)V
    .locals 1
    .parameter

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/util/m;-><init>(Lcom/zinio/mobile/android/util/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/util/e;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/zinio/mobile/android/util/m;->a:Lcom/zinio/mobile/android/util/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/zinio/mobile/android/util/m;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->e(Lcom/zinio/mobile/android/util/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/m;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v1}, Lcom/zinio/mobile/android/util/e;->e(Lcom/zinio/mobile/android/util/e;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    iget-object v0, p0, Lcom/zinio/mobile/android/util/m;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 245
    return-void
.end method
