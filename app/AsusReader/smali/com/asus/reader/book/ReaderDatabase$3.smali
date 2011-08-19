.class final Lcom/asus/reader/book/ReaderDatabase$3;
.super Landroid/os/Handler;
.source "ReaderDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/ReaderDatabase;->openTxtBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 2412
    iput-object p2, p0, Lcom/asus/reader/book/ReaderDatabase$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase$3;->val$context:Landroid/content/Context;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2416
    return-void
.end method
