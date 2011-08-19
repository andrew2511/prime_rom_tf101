.class final Lorg/acra/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/acra/e;->a:Lorg/acra/ErrorReporter;

    .line 509
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 518
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 519
    iget-object v0, p0, Lorg/acra/e;->a:Lorg/acra/ErrorReporter;

    invoke-static {v0}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/e;->a:Lorg/acra/ErrorReporter;

    invoke-static {v1}, Lorg/acra/ErrorReporter;->b(Lorg/acra/ErrorReporter;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RES_TOAST_TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 521
    return-void
.end method
