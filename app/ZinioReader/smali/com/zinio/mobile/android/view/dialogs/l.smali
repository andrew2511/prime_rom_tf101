.class final Lcom/zinio/mobile/android/view/dialogs/l;
.super Lcom/zinio/mobile/android/view/dialogs/a;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/e;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/l;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zinio/mobile/android/view/LibraryActivity;->c:Z

    .line 345
    return-void
.end method
