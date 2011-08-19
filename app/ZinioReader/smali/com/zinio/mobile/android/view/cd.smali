.class final Lcom/zinio/mobile/android/view/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/cd;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cd;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 656
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cd;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->f(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V

    .line 657
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 658
    return-void
.end method
